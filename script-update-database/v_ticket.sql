USE [td]
GO

/****** Object:  View [dbo].[v_ticket]    Script Date: 08/13/2019 22:38:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO










--select * from v_ticket where ticket='TK3514'
ALTER view [dbo].[v_ticket]
as
select distinct * from 
(
	select a.*,
		--b.*,
		b.DocNo,
		b.DocDate,
		case 
		    when b.prIsCancel=1 then '(f)**PR CANCEL**'	 
			when ISNULL(b.docno,'')=''		then '(a)-ไม่มี PR'
			when isnull(c.approve_qty,0) =0 then '(b)PR-รออนุมัติ PR'
			
			when ISNULL(c.approve_qty,0)>= isnull(prQty,0) and 
				 isnull(poNumber,'')=''	and isnull(b.isStockUseQty,0)=0	then '(c)Approved -อนุมัติครบ รอ PO'
			when isnull(poNumber,'')<>''	and isnull(d.poRemainQty,0) =  ISNULL(d.poQty,0) and b.isStockUseQty <= isnull(d.poRemainQty,0) then '(d)PO - รอรับสินค้า'
			when isnull(d.poRemainQty,0) =0 and ISNULL(d.poQty,0)>0 then '(e)Recived - รับของแล้ว'

--			when b.prQty  c.approve_qty and c.approve_qty then 'ONPROCESS'
			
			when	ISNULL(c.approve_qty,0)= isnull(prQty,0) and 
					isnull(poQty,0)>0 and 
					isnull(poQty,0)<isnull(c.approve_qty,0) and isnull(b.isStockUseQty,0)=0 then '(f)Reciving - รับบางส่วน'
			when b.isStockUseQty > 0 then '(g)Stock Use'
			--else '(h) others'
		end as STATUS_PR,
		b.ItemCode,
		substring(b.ItemName,1,254) AS ITEMNAME,b.UnitCode,b.prQty,b.LineNumber as prLineNumber,b.prIsCancel,
		--c.approve_qty,c.approved_RemainQty as apqty_remainqty,
		c.approve_qty,
		b.isStockUseQty,
		d.poNumber,d.poDate,
		d.poQty,d.poPrice,d.poAmount,d.poRemainQty,d.apname,d.ApCode,
		e.rv_Number,e.rv_Date,e.rv_qty,b.prCreateBy,b.prCreateDatetime 
	 from 
	(
	select  a.Code AS TICKET,a.Name AS TICKET_NAME,
			a.startdate,
			--a.expectDate,
			--a.prepareby,a.surveyby,
			--a.mydescription ,
			--a.isProduction,a.isEdit,a.isOrderto,a.isCancel,
			--a.productionCode,a.productiondatetime,a.editorcode,a.editdatetime,
			--a.OrderCode,a.OrderDatetime,a.cancelCode,a.cancelDatetime,
			--b.Name as prepareUser,
			--c.Name as surveyUser,
			case a.status when 0 then 'Review-งานใหม่'
				when 1 then 'PRODUCTION'
				when 2 then 'EDIT'
				when 3 then 'ORDER TO'
				when 4 then 'DONE'
				when 5 then 'CANCEL'
			end as production_status
		from BCProject  a 
			left join BCSale b on a.prepareby=b.code
			left join BCSale c on a.surveyby=c.Code
		--where a.Code='TK0819'
	) A left join 
	(	
		select a.projectcode,
			a.DocNo,
			a.DocDate,
			ItemCode,
			Qty as prQty,
			UnitCode,
			--WantDate ,
			b.IsConfirm,
			--b.BillStatus,
			--b.CreatorCode,b.CreateDateTime,b.LastEditorCode,b.LastEditDateT,
			--case when IsConfirm = 1 and BillStatus=0 then 'ON PROCESS'
			--	when IsConfirm = 1 and BillStatus=1 then 'APPROVED'
			--	when IsConfirm = 0 then 'NEW'
			--	end as STATUS_PR,
			a.ItemName ,
			a.LineNumber,
			isnull(a.isStockuseqty,0) as isStockUseQty,
			case when b.IsCancel = 1 OR a.IsCancel=1 then 1 else a.IsCancel end  as prIsCancel,
			b.CreatorCode as prCreateBy,
			b.CreateDateTime as prCreateDatetime
		 from BCStkRequestSub a left join BCStkRequest b on a.DocNo = b.DocNo 
		 --where a.DocNo not in (select DocNo from BCStkRequest where IsCancel = 1)
		 --where a.ProjectCode = 'TK0819'
	) B on a.TICKET=b.ProjectCode
	left join 
	(
	select StkRequestNo,ItemCode,RefLineNumber,sum(ConfirmQty) as approve_qty,
		UnitCode   
		from BCReqConfirmSub
		group by StkRequestNo,ItemCode,RefLineNumber,UnitCode
	) C on b.DocNo = c.StkRequestNo and b.ItemCode = c.ItemCode and b.LineNumber=c.RefLineNumber
	left join 
	(
	select DocNo as poNumber,
		 DocDate as poDate ,
		 StkReqNo as poStkReqNo,
		 itemcode as poItemcode,
		 unitcode as poUnitCode,
		-- linenumber as poLinenumber,
		 --reflinenumber as poreflinenum  ,
		 sum(qty) as poQty,
		 sum(remainqty) as poRemainQty,
		 sum(amount) as poAmount,
		 case when SUM( amount)<>0 and SUM(Qty)<>0 then SUM( amount)/sum(qty) 
		 else 0 end as poPrice ,
		 ApCode , 
		 bcap.Name1 as apname
		from BCPurchaseOrderSub a left join bcap on a.ApCode=bcap.Code
		  where IsCancel=0 and DocNo not in (select DocNo from BCPurchaseOrder where IsCancel=1)
		  group by StkReqNo,ItemCode,unitcode,DocNo,docdate,ApCode,bcap.Name1
		
	) d on b.DocNo=d.poStkReqNo and b.ItemCode =d.poItemcode
	left join 
	(
	select DocNo as rv_Number,
		 DocDate as rv_Date ,
		 PORefNo as poRefno,
		 PORefLinenum as poReflineno,
		 itemcode as rv_itemcode,
		 unitcode as rv_unitCode,
		-- linenumber as poLinenumber,
		 --reflinenumber as poreflinenum  ,
		 sum(qty) as rv_qty,
		 sum(amount) as rv_amount,
		 case when SUM( amount)<>0 and SUM(Qty)<>0 then SUM( amount)/sum(qty) 
		 else 0 end as rv_price 
		from BCAPINVOICESUB
		  where IsCancel=0 and DocNo not in (select DocNo from bcapinvoice where IsCancel=1)
		  group by DocNo,ItemCode,unitcode,docdate,PORefLinenum,PORefNo
		
	) e on d.poNumber=e.poRefno and d.poItemcode =e.rv_itemcode
	--where YEAR(expectDate)=YEAR(getdate())


	--select * from BCPurchaseOrderSub where DocNo = 'POT6009-0003'

) X 








GO


