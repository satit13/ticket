USE [tempdb]
GO
/****** Object:  Table [dbo].[TicketItemList]    Script Date: 09/14/2017 00:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TicketItemList](
	[Code] [varchar](25) NOT NULL,
	[name1] [varchar](200) NULL,
	[formatcode] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'LD-010018', N'หม้อแปลง LED. Meanwell  ขนาด 12.5 A.(150 watt)', N'19')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'LD-010025', N'หลอด LED ริบบิ้นเปลือย#5050# สีขาวอมฟ้า (1ม้วน/5เมตร)', N'20')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'LD-010043', N'หลอด LED ริบบิ้น (R08C0BA) Cool white. 8W.12V.(8 มิล)', N'21')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'LD-010053', N'หม้อแปลง LED.Meanwell  ขนาด 17 A.12 V. (200 watt)', N'19')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'LD-010054', N'หม้อแปลง  Mean Well LRS-60-12V.ขนาด 5 A.(60 Watt.)', N'19')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'LD-010058', N'หม้อแปลง LED Meanwell LRS-350-12 V.ขนาด 29A.12V.(350 W.)', N'19')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'LD-010116', N'พัดลมดูดอากาศ ขนาด 3 นิ้ว', N'25')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'LD-010123', N'หม้อแปลง Mean Well LRS-100-12V.ขนาด 8.5 A.(100 Watt.)', N'19')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'MD-010032', N'โฟเมก้าขาวด้าน  FO-TD9201PL ขนาด 4X8 ฟุต', N'07')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'MD-010072', N'ลามิเนท (ลายไม้) Wilson art เบอร์ 4192-WM  Light Walnut', N'07')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'MD-010187', N'โฟเมก้า สีดำด้าน  Black 0909 UN', N'07')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'MD-010189', N'ลามิเนท Wilson art.#3952-B / Brushed Alu', N'07')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'OH-020011', N'ค่าวัตถุดิบสั่งทำ-จ้างผลิต', N'14')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'OH-2011', N'ค่าวัตถุดิบสั่งทำ-งานโครงไม้', N'31')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'OH-2012', N'ค่าวัตถุดิบสั่งทำ-งานสแตนเลส', N'30')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'OH-2013', N'ค่าวัตถุดิบสั่งทำ-งานกระจก', N'29')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'OH-2014', N'ค่าวัตถุดิบสั่งทำ-งานทำสี', N'27')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'OH-2015', N'ค่าวัตถุดิบสั่งทำ-งานกันตก', N'28')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'OH-2016', N'ค่าวัตถุดิบสั่งทำ-งานแผ่นชั้น+กันตก', N'28')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'OH-2017', N'ค่าวัตถุดิบสั่งทำ-งานกล่องไฟ', N'28')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'OH-2018', N'ค่าวัตถุดิบสั่งทำ-งานปั๊มนูน', N'28')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010003', N'พลาสติกขาว 4 มิล ขนาด 4 x 8 ฟุต', N'11')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010006', N'พลาสติกขาว 2 มิล ขนาด 4 x 8 ฟุต', N'11')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010008', N'พลาสติกขาว 10 มิล ขนาด 4 X 8 ฟุต', N'11')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010012', N'พลาสติกใส 3 มิล ขนาด 4 X 8 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010013', N'พลาสติกใส 2 มิล ขนาด 4x8 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010015', N'พลาสติกใส 5 มิล 4 X 8 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010017', N'พลาสติกใส  8 มิล ขนาด 4 x 8 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010018', N'พลาสติกใส 10 มิล 4 x 8 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010020', N'พลาสติกใส 4 มิล ขนาด 4 X 8 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010026', N'ไดมิลเลอร์ หน้าเงา/หลังขาว (สีกระจก) ขนาด 2มิล 4X6 ฟุต', N'12')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010028', N'ไดมิลเลอร์ 2มิล ขนาด 4*6ฟุต สีทอง ( P-200 MF )', N'13')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010030', N'พลาสติกขาว 3 มิล ขนาด 4 X 8 ฟุต', N'11')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010047', N'พลาสติกใส 8 มิล ขนาด 4 x 6 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010051', N'พลาสติกใส 3 มิล ขนาด 4 X 6 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010052', N'พลาสติกใส 3 มิล ขนาด 4 X 10 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010053', N'พลาสติกขาว 3 มิล ขนาด 4 X 10 ฟุต', N'11')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010058', N'พลาสติกขาว 3 มิล ขนาด 4 X 6 ฟุต', N'11')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-010059', N'พลาสติกใส 5 มิล 4 X 6 ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-020217', N'พลาสติกใส 2 มิล ขนาด 4 x 6  ฟุต', N'10')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-020222', N'พลาสติกขาว 5 มิล 4 x 8 ฟุต', N'11')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-020224', N'พลาสติกขาว 8 มิล ขนาด 4 x 8 ฟุต', N'11')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PD-020233', N'พลาสติกขาว 10 มิล ขนาด 4 X 6 ฟุต', N'11')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PT-010010', N'ปลั๊กไฟเสียบตัวผู้ - พลาสติกแข็ง', N'23')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PT-010011', N'ฝาครอบเบรกเกอร์บิชิโน', N'22')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PT-010014', N'เบรกเกอร์ 20 A  บิชิโน', N'22')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PT-010038', N'สวิท ปิด-เปิด  Bitichino', N'24')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PT-010087', N'ปลั๊กเสียบตัวผู้ ยางดำ', N'23')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PT-010689', N'สวิทซ์ทางเดียว 16 A. E30/1M-D Clipsal', N'24')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'PT-010690', N'หน้ากากเล็ก 1 ช่อง Clipsal', N'24')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010004', N'เสารางรับชั้น 3 ฟุต (90 ซม.) CWT-1 #09090#', N'04')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010015', N'แขนรับชั้นไม้ 2 เขี้ยว แบบพับฉาก 8 นิ้ว-ขวา#41108#', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010016', N'แขนรับชั้นไม้ 2 เขี้ยว แบบพับฉาก 8 นิ้ว-ซ้าย#41108#', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010031', N'แขนรับชั้นไม้ 2 เขี้ยว แบบพับฉาก ขนาด 6 นิ้ว (ขวา)', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010032', N'แขนรับชั้นไม้ 2 เขี้ยว แบบพับฉาก ขนาด 6 นิ้ว (ซ้าย)', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010036', N'แขนรับชั้นไม้ 2 เขี้ยว แบบพับฉาก 10 นิ้ว-ซ้าย #41110#', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010037', N'แขนรับชั้นไม้ 2 เขี้ยว แบบพับฉาก 12 นิ้ว-ซ้าย #41112#', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010038', N'แขนรับชั้นไม้ 2 เขี้ยว แบบพับฉาก 12 นิ้ว-ขวา #41112#', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010039', N'เสารางรับชั้น 5ฟุต (150 ซม.) CWT-1#09150#', N'04')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010042', N'แขนรับชั้นไม้ 3 เขี้ยว แบบพับฉาก 18 นิ้ว-ซ้าย', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010043', N'แขนรับชั้นไม้ 3 เขี้ยว แบบพับฉาก 18 นิ้ว-ขวา', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010050', N'เสารางรับชั้น 4 ฟุต (120 ซม.) CWT-1 #09120#', N'04')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010051', N'แขนรับชั้นไม้ 3 เขี้ยว แบบพับฉาก 10 นิ้ว-ซ้าย', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010052', N'แขนรับชั้นไม้ 3 เขี้ยว แบบพับฉาก 10 นิ้ว-ขวา', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010053', N'แขนรับชั้นไม้ 3 เขี้ยว แบบพับฉาก 12 นิ้ว-ซ้าย', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010054', N'แขนรับชั้นไม้ 3 เขี้ยว แบบพับฉาก 12 นิ้ว-ขวา', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010057', N'แขนรับชั้นไม้ 3 เขี้ยว แบบพับฉาก 16 นิ้ว-ซ้าย', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010058', N'แขนรับชั้นไม้ 3 เขี้ยว แบบพับฉาก 16 นิ้ว-ขวา', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010079', N'แขนรับชั้น 3 เขี้ยว แบบพับฉาก ขนาด 14 นิ้ว (ซ้าย)', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010080', N'แขนรับชั้น 3 เขี้ยว แบบพับฉาก ขนาด 14 นิ้ว (ขวา)', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010085', N'แขนรับชั้นไม้ 2 เขี้ยว แบบพับฉาก ขนาด 4 นิ้ว (ซ้าย)', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010086', N'แขนรับชั้นไม้ 2 เขี้ยว แบบพับฉาก ขนาด 4 นิ้ว (ขวา)', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010099', N'แขนรับชั้นไม้ 4 เขี้ยว แบบพับฉาก 24 นิ้ว ซ้าย', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010100', N'แขนรับชั้นไม้ 4 เขี้ยว แบบพับฉาก 24 นิ้ว ขวา', N'03')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010103', N'เสารางรับชั้น  6 ฟุต (180 ซม.) CWT-1 #09180#', N'04')
INSERT [dbo].[TicketItemList] ([Code], [name1], [formatcode]) VALUES (N'RD-010128', N'เสารางรับชั้น  8 ฟุต (240 ซม.) CWT-1 #09240#', N'04')

GO 

update td.dbo.bcitem
set formatcode=b.formatcode
from TicketItemList a inner join td.dbo.bcitem b on a.Code=b.Code
GO 