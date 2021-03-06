USE [Market stall]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2018-04-05 14:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptId] [int] NOT NULL,
	[PlaceId] [int] NOT NULL,
	[SeasonId] [int] NOT NULL,
	[WeatherId] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2018-04-05 14:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[SocialSecNr] [nvarchar](50) NOT NULL,
	[PlaceId] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logg]    Script Date: 2018-04-05 14:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logg](
	[LoggId] [int] IDENTITY(1,1) NOT NULL,
	[SeasonId] [int] NOT NULL,
	[WeatherId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[PlaceId] [int] NOT NULL,
 CONSTRAINT [PK_Logg] PRIMARY KEY CLUSTERED 
(
	[LoggId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parking]    Script Date: 2018-04-05 14:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parking](
	[ParkingId] [int] IDENTITY(1,1) NOT NULL,
	[ParkingSize] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Parking] PRIMARY KEY CLUSTERED 
(
	[ParkingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 2018-04-05 14:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[PaymentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[PaymentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 2018-04-05 14:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[PlaceId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[PermissionTariff] [float] NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 2018-04-05 14:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[PlaceId] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[MarketName] [nvarchar](50) NOT NULL,
	[ParkingId] [int] NOT NULL,
 CONSTRAINT [PK_Place] PRIMARY KEY CLUSTERED 
(
	[PlaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2018-04-05 14:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductType] [nvarchar](50) NOT NULL,
	[ProductPrice] [float] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 2018-04-05 14:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ReceiptId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentTypeId] [int] NOT NULL,
	[TotalCost] [float] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 2018-04-05 14:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonId] [int] IDENTITY(1,1) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weather]    Script Date: 2018-04-05 14:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weather](
	[WeatherId] [int] IDENTITY(1,1) NOT NULL,
	[Weather] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Weather] PRIMARY KEY CLUSTERED 
(
	[WeatherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [ReceiptId], [PlaceId], [SeasonId], [WeatherId]) VALUES (2, 2, 7, 5, 2)
INSERT [dbo].[Customer] ([CustomerId], [ReceiptId], [PlaceId], [SeasonId], [WeatherId]) VALUES (3, 3, 8, 5, 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName], [SocialSecNr], [PlaceId]) VALUES (1, N'Kalle', N'Andersson', N'6008081234', 7)
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName], [SocialSecNr], [PlaceId]) VALUES (2, N'Greta', N'Borg', N'9002022345', 8)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Parking] ON 

INSERT [dbo].[Parking] ([ParkingId], [ParkingSize]) VALUES (1, N'Small')
INSERT [dbo].[Parking] ([ParkingId], [ParkingSize]) VALUES (2, N'Medium')
INSERT [dbo].[Parking] ([ParkingId], [ParkingSize]) VALUES (3, N'Large')
SET IDENTITY_INSERT [dbo].[Parking] OFF
SET IDENTITY_INSERT [dbo].[PaymentType] ON 

INSERT [dbo].[PaymentType] ([PaymentTypeId], [PaymentType]) VALUES (1, N'Cash')
INSERT [dbo].[PaymentType] ([PaymentTypeId], [PaymentType]) VALUES (2, N'Card')
SET IDENTITY_INSERT [dbo].[PaymentType] OFF
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([PermissionId], [PlaceId], [Date], [PermissionTariff]) VALUES (4, 7, CAST(N'2017-02-18T08:00:00.000' AS DateTime), 1500)
INSERT [dbo].[Permission] ([PermissionId], [PlaceId], [Date], [PermissionTariff]) VALUES (6, 8, CAST(N'2017-11-18T00:00:00.000' AS DateTime), 1500)
SET IDENTITY_INSERT [dbo].[Permission] OFF
SET IDENTITY_INSERT [dbo].[Place] ON 

INSERT [dbo].[Place] ([PlaceId], [City], [MarketName], [ParkingId]) VALUES (7, N'Skene', N'SkeneMarten', 1)
INSERT [dbo].[Place] ([PlaceId], [City], [MarketName], [ParkingId]) VALUES (8, N'Landskrona', N'Valborgsmarknad', 3)
SET IDENTITY_INSERT [dbo].[Place] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductType], [ProductPrice]) VALUES (1, N'Kanelbulle', N'Bakverk', 25)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductType], [ProductPrice]) VALUES (2, N'Saft', N'Dryck', 12)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([ReceiptId], [PaymentTypeId], [TotalCost], [EmployeeId], [Date], [ProductId]) VALUES (2, 1, 25, 1, CAST(N'2017-07-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Receipt] ([ReceiptId], [PaymentTypeId], [TotalCost], [EmployeeId], [Date], [ProductId]) VALUES (3, 1, 12, 2, CAST(N'2017-07-07T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Receipt] OFF
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([SeasonId], [Season]) VALUES (5, N'Summer')
INSERT [dbo].[Season] ([SeasonId], [Season]) VALUES (6, N'Winter')
INSERT [dbo].[Season] ([SeasonId], [Season]) VALUES (7, N'Autumn')
INSERT [dbo].[Season] ([SeasonId], [Season]) VALUES (8, N'Spring')
SET IDENTITY_INSERT [dbo].[Season] OFF
SET IDENTITY_INSERT [dbo].[Weather] ON 

INSERT [dbo].[Weather] ([WeatherId], [Weather]) VALUES (1, N'Rain')
INSERT [dbo].[Weather] ([WeatherId], [Weather]) VALUES (2, N'Sun')
INSERT [dbo].[Weather] ([WeatherId], [Weather]) VALUES (3, N'Wind')
INSERT [dbo].[Weather] ([WeatherId], [Weather]) VALUES (4, N'Snow')
SET IDENTITY_INSERT [dbo].[Weather] OFF
ALTER TABLE [dbo].[Logg] ADD  CONSTRAINT [DF_Logg_PlaceId]  DEFAULT ((7)) FOR [PlaceId]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductPrice]  DEFAULT ((0)) FOR [ProductPrice]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([PlaceId])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Place]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Receipt] FOREIGN KEY([ReceiptId])
REFERENCES [dbo].[Receipt] ([ReceiptId])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Receipt]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([PlaceId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Place]
GO
ALTER TABLE [dbo].[Logg]  WITH CHECK ADD  CONSTRAINT [FK_Logg_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([PlaceId])
GO
ALTER TABLE [dbo].[Logg] CHECK CONSTRAINT [FK_Logg_Place]
GO
ALTER TABLE [dbo].[Logg]  WITH CHECK ADD  CONSTRAINT [FK_Logg_Season] FOREIGN KEY([SeasonId])
REFERENCES [dbo].[Season] ([SeasonId])
GO
ALTER TABLE [dbo].[Logg] CHECK CONSTRAINT [FK_Logg_Season]
GO
ALTER TABLE [dbo].[Logg]  WITH CHECK ADD  CONSTRAINT [FK_Logg_Weather] FOREIGN KEY([WeatherId])
REFERENCES [dbo].[Weather] ([WeatherId])
GO
ALTER TABLE [dbo].[Logg] CHECK CONSTRAINT [FK_Logg_Weather]
GO
ALTER TABLE [dbo].[Permission]  WITH CHECK ADD  CONSTRAINT [FK_Permission_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([PlaceId])
GO
ALTER TABLE [dbo].[Permission] CHECK CONSTRAINT [FK_Permission_Place]
GO
ALTER TABLE [dbo].[Place]  WITH CHECK ADD  CONSTRAINT [FK_Place_Parking] FOREIGN KEY([ParkingId])
REFERENCES [dbo].[Parking] ([ParkingId])
GO
ALTER TABLE [dbo].[Place] CHECK CONSTRAINT [FK_Place_Parking]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Employee]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_PaymentType] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentType] ([PaymentTypeId])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_PaymentType]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Products]
GO
