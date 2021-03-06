PROCEDURE genCurs

	CREATE CURSOR bcstkrequest (roworder int,;
		docno char(20),;
		docdate date ,;
		departcode char(10) null,;
		isconfirm int DEFAULT 0,;
		mydescription char(100) null,;
		workman char(30) null,;
		billstatus int DEFAULT 0,;
		iscancel int DEFAULT 0,;
		projectcode char(30) null,;
		creatorcode char(30) null,;
		createdatetime datetime DEFAULT DATETIME(),;
		lasteditorcode char(30) null,;
		lasteditdatet datetime null,;
		confirmcode char(30) null,;
		confirmdatetime datetime null,;
		cancelcode char(30) null,;
		canceldatetime datetime null,;
		amount numeric(14,2) DEFAULT 0 )
		
	INDEX on ALLTRIM(docno) TAG docno addi

	CREATE CURSOR bcstkrequestsub (;
		roworder int , ;
		docno char(20),;
		taxtype int DEFAULT 0,;
		itemcode char(25),;
		docdate date,;
		departcode char(10) null,;
		mydescription char(100) null,;
		qty numeric(14,2) DEFAULT 0 ,;
		remainqty numeric(14,2),;
		iscancel int DEFAULT 0 ,;
		priority int DEFAULT  0,;
		wantdate date  NULL ,;
		unitcode char(30),;
		oppositeunit char(30) null,;
		oppositeqty numeric(14,2) DEFAULT 0 ,;
		itemname char(250),;
		packingrate1 numeric(14,2) DEFAULT 1,;
		packingrate2 numeric(14,2) DEFAULT 1,;
		projectcode char(30) null,;
		linenumber int DEFAULT 0 ,;
		wantday int DEFAULT 0)
		
	INDEX on ALLTRIM(docno) TAG docno addi

	SELECT bcstkrequest
	SET RELATION TO ALLTRIM(docno) INTO bcstkrequestsub 

	SET SKIP TO Bcstkrequestsub
ENDPROC 	
	
	
	