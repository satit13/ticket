---- startDate ----
IF COL_LENGTH('dbo.bcproject', 'startdate') IS NOT NULL
BEGIN
    alter table bcproject drop column startdate
END
alter table bcproject add  startdate date

----expectDate-----
IF COL_LENGTH('dbo.bcproject', 'expectDate') IS NOT NULL
BEGIN
    alter table bcproject drop column expectDate
END
alter table bcproject add  expectDate date
----status----------
IF COL_LENGTH('dbo.bcproject', 'status') IS NOT NULL
BEGIN
    alter table bcproject drop column status
END
alter table bcproject add  status int
-----prepareby--------
IF COL_LENGTH('dbo.bcproject', 'prepareby') IS NOT NULL
BEGIN
    alter table bcproject drop column prepareby
END
alter table bcproject add  prepareby nvarchar(50)
-----surveyby---------
IF COL_LENGTH('dbo.bcproject', 'surveyby') IS NOT NULL
BEGIN
    alter table bcproject drop column surveyby
END
alter table bcproject add  surveyby nvarchar(50)
-----mydescription------
IF COL_LENGTH('dbo.bcproject', 'mydescription') IS NOT NULL
BEGIN
    alter table bcproject drop column mydescription
END
alter table bcproject add  mydescription nvarchar(250)
----- parentcode---------
IF COL_LENGTH('dbo.bcproject', 'parentcode') IS NOT NULL
BEGIN
    alter table bcproject drop column parentcode
END
alter table bcproject add  parentcode nvarchar(10)

--- isProduction -----

IF COL_LENGTH('dbo.bcproject', 'isProduction') IS NOT NULL
BEGIN
    alter table bcproject drop column isProduction
END
alter table bcproject add  isProduction bit

----isEdit -----------

IF COL_LENGTH('dbo.bcproject', 'isEdit') IS NOT NULL
BEGIN
    alter table bcproject drop column isEdit
END
alter table bcproject add  isEdit bit

------isOrderto --------
IF COL_LENGTH('dbo.bcproject', 'isOrderto') IS NOT NULL
BEGIN
    alter table bcproject drop column isOrderto
END
alter table bcproject add  isOrderto bit

-----isCancel --------

IF COL_LENGTH('dbo.bcproject', 'isCancel') IS NOT NULL
BEGIN
    alter table bcproject drop column isCancel
END
alter table bcproject add  isCancel bit

----- productiondatetime -----

IF COL_LENGTH('dbo.bcproject', 'productiondatetime') IS NOT NULL
BEGIN
    alter table bcproject drop column productiondatetime
END
alter table bcproject add  productiondatetime datetime


----- productioncode -----
IF COL_LENGTH('dbo.bcproject', 'productionCode') IS NOT NULL
BEGIN
    alter table bcproject drop column productionCode
END
alter table bcproject add  productionCode nvarchar(20)

--- editdatetime ----

IF COL_LENGTH('dbo.bcproject', 'editdatetime') IS NOT NULL
BEGIN
    alter table bcproject drop column editdatetime
END
alter table bcproject add  editdatetime datetime

---editorcode-----
IF COL_LENGTH('dbo.bcproject', 'editorCode') IS NOT NULL
BEGIN
    alter table bcproject drop column editorCode
END
alter table bcproject add  editorCode nvarchar(20)

---OrderDatetime----
IF COL_LENGTH('dbo.bcproject', 'orderDatetime') IS NOT NULL
BEGIN
    alter table bcproject drop column orderDatetime
END
alter table bcproject add  orderDatetime datetime

---orderCode----
IF COL_LENGTH('dbo.bcproject', 'orderCode') IS NOT NULL
BEGIN
    alter table bcproject drop column orderCode
END
alter table bcproject add  orderCode nvarchar(20)

---cancelDatetime---
IF COL_LENGTH('dbo.bcproject', 'cancelDatetime') IS NOT NULL
BEGIN
    alter table bcproject drop column cancelDatetime
END
alter table bcproject add  cancelDatetime datetime

---cancelCode----
IF COL_LENGTH('dbo.bcproject', 'cancelCode') IS NOT NULL
BEGIN
    alter table bcproject drop column cancelCode
END
alter table bcproject add  cancelCode nvarchar(20)


---boqNumber ----
IF COL_LENGTH('dbo.bcproject', 'boqNumber') IS NOT NULL
BEGIN
    alter table bcproject drop column boqNumber
END
alter table bcproject add  boqNumber nvarchar(20)

















