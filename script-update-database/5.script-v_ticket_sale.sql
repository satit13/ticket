USE [td]
GO

/****** Object:  View [dbo].[v_ticket_sale]    Script Date: 10/19/2017 15:31:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--select * from v_ticket_sale where TICKET='TK2679'

ALTER view [dbo].[v_ticket_sale]
as 
select a1.* ,
	(select top 1 substring(itemname,1 ,254)  as itemname
			from bcsaleordersub a left join BCSaleOrder b on a.docno = b.DocNo   
			where a.DocNo = a2.so_docno and itemcode not like '%.%') as First_item,
	a2.* ,inv.*
	from 
(
	select  a.Code AS TICKET,a.Name AS TICKET_NAME,
			a.startdate,
			case a.status when 0 then 'NEW'
				when 1 then 'PRODUCTION'
				when 2 then 'EDIT'
				when 3 then 'ORDER TO'
				when 4 then 'DONE'
				when 5 then 'CANCEL'
			end as production_status
		from BCProject  a 
			left join BCSale b on a.prepareby=b.code
			left join BCSale c on a.surveyby=c.Code
) a1 left join 
(
select docno as so_docno,
	docdate as so_docdate,
	projectcode as so_projectcode,
	totalamount as so_amount,
	billtype as so_billtype,
	billstatus as so_billstatus 
	from BCSaleOrder  where IsCancel=0			
) a2 on a1.TICKET=a2.so_projectcode
left join 
(
select a.docno as inv_docno,
	a.docdate as inv_docdate,
	b.projectcode as inv_projectcode,
	sum(amount) as inv_totalamount,
	case when b.billtype in (0,2) then 'เงินสด' 
		when b.billtype in (1,3) then 'เงินเชื่อ'
		end as inv_billtype,
	case when b.billtype in (0,2) then 0 else sum(b.billbalance) end as inv_billbalance  ,
	a.arcode ,
	case when BillType in (0,2) then 'เก็บเงินแล้ว' 
		when BillType in (1,3) and sum(b.billbalance) =0 then 'เงินเชื่อ-เก็บเงินแล้ว'
		when BillType in (1,3) and sum(b.billbalance) > 0 then 'ค้างชำระ'
		end as billstatus,
		a.SORefNo
	from BCARINVOICESUB a left join BCARINVOICE b on a.DocNo = b.DocNo  where b.IsCancel=0	
			group by a.DocNo,a.DocDate,b.BillType,a.SORefNo,b.ProjectCode,a.arcode
)inv on a1.TICKET = inv_ProjectCode and a2.so_docno = inv.SORefNo




GO


