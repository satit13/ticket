USE [td]
GO

/****** Object:  View [dbo].[v_ticket_sale]    Script Date: 10/02/2017 14:03:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[v_ticket_sale]
as 
select a1.*,
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
select docno as inv_docno,
	docdate as inv_docdate,
	projectcode as inv_projectcode,
	totalamount as inv_totalamount,
	case when billtype in (0,2) then 'เงินสด' 
		when billtype in (1,3) then 'เงินเชื่อ'
		end as inv_billtype,
	case when billtype in (0,2) then 0 else billbalance end as inv_billbalance  ,
	arcode ,
	case when BillType in (0,2) then 'เก็บเงินแล้ว' 
		when BillType in (1,3) and BillBalance =0 then 'เงินเชื่อ-เก็บเงินแล้ว'
		when BillType in (1,3) and BillBalance > 0 then 'ค้างชำระ'
		end as billstatus
	from BCARINVOICE where IsCancel=0			
)inv on a1.TICKET = inv_ProjectCode



GO


