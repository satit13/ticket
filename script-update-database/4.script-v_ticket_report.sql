USE [td]
GO

/****** Object:  View [dbo].[v_ticket]    Script Date: 09/14/2017 01:40:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--select * from v_ticket where code='TK0819'
CREATE view [dbo].[v_ticket]
as
select a.*,
	--b.*,
	b.DocNo,b.DocDate,b.STATUS_PR,b.ItemCode,substring(b.ItemName,1,254) AS ITEMNAME,b.UnitCode,b.prQty,
	--c.approve_qty,c.approved_RemainQty as apqty_remainqty,
	d.poNumber,d.poDate,d.poQty,d.poPrice,d.poAmount,d.poRemainQty
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
			when 1 then 'Review-ลงผลิต'
			when 2 then 'Review-แก้ไข'
			when 3 then 'Review-สั่งผลิต'
			when 4 then 'ยกเลิก'
		end as status
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
		case when IsConfirm = 1 and BillStatus=0 then 'APPROVED'
			when IsConfirm = 1 and BillStatus=1 then 'DONE'
			when IsConfirm = 0 then 'NEW'
			end as STATUS_PR,
		a.ItemName ,
		a.LineNumber
	 from BCStkRequestSub a left join BCStkRequest b on a.DocNo = b.DocNo 
	 --where a.ProjectCode = 'TK0819'
) B on a.TICKET=b.ProjectCode
left join 
(
select StkRequestNo,ItemCode,RefLineNumber,ConfirmQty as approve_qty,UnitCode,remainqty as approved_RemainQty   
	from BCReqConfirmSub
) C on b.DocNo = c.StkRequestNo and b.LineNumber = c.RefLineNumber
left join 
(
select DocNo as poNumber,
	 DocDate as poDate ,
	 StkReqNo as poStkReqNo,
	 linenumber as poLinenumber,
	 reflinenumber as poreflinenum  ,
	 qty as poQty,
	 remainqty as poRemainQty,
	 amount as poAmount,
	 amount/qty as poPrice from BCPurchaseOrderSub 
) d on b.DocNo=d.poStkReqNo and b.LineNumber =d.poreflinenum
--where YEAR(expectDate)=YEAR(getdate())




GO


