USE [RentACar]
GO
/****** Object:  Table [dbo].[BanType]    Script Date: 14.10.2019 00:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarAnnouncement]    Script Date: 14.10.2019 00:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarAnnouncement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[ReleaseDate] [date] NULL,
	[MotorPower] [decimal](18, 0) NULL,
	[MotorVolume] [decimal](18, 0) NULL,
	[Travel] [int] NULL,
	[Price] [int] NULL,
	[CrateDate] [datetime] NULL,
	[IsSold] [bit] NULL,
	[ModelID] [int] NULL,
	[BanTypeID] [int] NULL,
	[SpeedID] [int] NULL,
	[ColorID] [int] NULL,
	[FuelİD] [int] NULL,
	[PersonID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 14.10.2019 00:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuelType]    Script Date: 14.10.2019 00:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuelType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mark]    Script Date: 14.10.2019 00:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 14.10.2019 00:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MarkID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 14.10.2019 00:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[PersonTypeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonType]    Script Date: 14.10.2019 00:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpeedBox]    Script Date: 14.10.2019 00:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpeedBox](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BanType] ON 

INSERT [dbo].[BanType] ([ID], [Name]) VALUES (1, N'Avtobus')
INSERT [dbo].[BanType] ([ID], [Name]) VALUES (2, N'Furqon')
INSERT [dbo].[BanType] ([ID], [Name]) VALUES (3, N'Motosiklet')
INSERT [dbo].[BanType] ([ID], [Name]) VALUES (4, N'Sedan')
SET IDENTITY_INSERT [dbo].[BanType] OFF
SET IDENTITY_INSERT [dbo].[CarAnnouncement] ON 

INSERT [dbo].[CarAnnouncement] ([ID], [Title], [ReleaseDate], [MotorPower], [MotorVolume], [Travel], [Price], [CrateDate], [IsSold], [ModelID], [BanTypeID], [SpeedID], [ColorID], [FuelİD], [PersonID]) VALUES (2, N'MERCEDES', CAST(N'2012-03-06' AS Date), CAST(22 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), 85000, 35000, CAST(N'2014-06-05T23:52:00.000' AS DateTime), 1, 1, 2, 2, 5, 2, 4)
INSERT [dbo].[CarAnnouncement] ([ID], [Title], [ReleaseDate], [MotorPower], [MotorVolume], [Travel], [Price], [CrateDate], [IsSold], [ModelID], [BanTypeID], [SpeedID], [ColorID], [FuelİD], [PersonID]) VALUES (3, N'BMW', CAST(N'2013-06-08' AS Date), CAST(20 AS Decimal(18, 0)), CAST(250 AS Decimal(18, 0)), 13000, 50000, CAST(N'2016-09-02T12:00:00.000' AS DateTime), 0, 2, 3, 1, 1, 1, 6)
INSERT [dbo].[CarAnnouncement] ([ID], [Title], [ReleaseDate], [MotorPower], [MotorVolume], [Travel], [Price], [CrateDate], [IsSold], [ModelID], [BanTypeID], [SpeedID], [ColorID], [FuelİD], [PersonID]) VALUES (4, N'FORD', CAST(N'2016-06-18' AS Date), CAST(35 AS Decimal(18, 0)), CAST(260 AS Decimal(18, 0)), 15000, 36000, CAST(N'2017-06-08T00:00:00.000' AS DateTime), 1, 3, 3, 1, 2, 3, 5)
INSERT [dbo].[CarAnnouncement] ([ID], [Title], [ReleaseDate], [MotorPower], [MotorVolume], [Travel], [Price], [CrateDate], [IsSold], [ModelID], [BanTypeID], [SpeedID], [ColorID], [FuelİD], [PersonID]) VALUES (5, N'KIA', CAST(N'2018-03-05' AS Date), CAST(30 AS Decimal(18, 0)), CAST(230 AS Decimal(18, 0)), 75000, 15000, CAST(N'2016-02-06T16:00:00.000' AS DateTime), 1, 5, 2, 2, 3, 1, 2)
INSERT [dbo].[CarAnnouncement] ([ID], [Title], [ReleaseDate], [MotorPower], [MotorVolume], [Travel], [Price], [CrateDate], [IsSold], [ModelID], [BanTypeID], [SpeedID], [ColorID], [FuelİD], [PersonID]) VALUES (6, N'MERCEDES', CAST(N'2012-03-06' AS Date), CAST(22 AS Decimal(18, 0)), CAST(265 AS Decimal(18, 0)), 50000, 26000, CAST(N'2016-09-02T12:00:00.000' AS DateTime), 0, 4, 1, 1, 4, 4, 1)
INSERT [dbo].[CarAnnouncement] ([ID], [Title], [ReleaseDate], [MotorPower], [MotorVolume], [Travel], [Price], [CrateDate], [IsSold], [ModelID], [BanTypeID], [SpeedID], [ColorID], [FuelİD], [PersonID]) VALUES (7, N'BMW', CAST(N'2013-06-08' AS Date), CAST(30 AS Decimal(18, 0)), CAST(300 AS Decimal(18, 0)), 60000, 80000, CAST(N'2016-02-06T16:00:00.000' AS DateTime), 1, 2, 3, 2, 6, 4, 8)
SET IDENTITY_INSERT [dbo].[CarAnnouncement] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ID], [Name]) VALUES (1, N'Black')
INSERT [dbo].[Color] ([ID], [Name]) VALUES (2, N'Red')
INSERT [dbo].[Color] ([ID], [Name]) VALUES (3, N'Green')
INSERT [dbo].[Color] ([ID], [Name]) VALUES (4, N'Yellow')
INSERT [dbo].[Color] ([ID], [Name]) VALUES (5, N'Blue')
INSERT [dbo].[Color] ([ID], [Name]) VALUES (6, N'Grey')
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[FuelType] ON 

INSERT [dbo].[FuelType] ([ID], [Name]) VALUES (1, N'Dizel')
INSERT [dbo].[FuelType] ([ID], [Name]) VALUES (2, N'Qaz')
INSERT [dbo].[FuelType] ([ID], [Name]) VALUES (3, N'Benzin')
INSERT [dbo].[FuelType] ([ID], [Name]) VALUES (4, N'Hibrid')
SET IDENTITY_INSERT [dbo].[FuelType] OFF
SET IDENTITY_INSERT [dbo].[Mark] ON 

INSERT [dbo].[Mark] ([ID], [Name]) VALUES (1, N'Mercedes')
INSERT [dbo].[Mark] ([ID], [Name]) VALUES (2, N'BMW')
INSERT [dbo].[Mark] ([ID], [Name]) VALUES (3, N'Ford')
INSERT [dbo].[Mark] ([ID], [Name]) VALUES (4, N'KIA')
SET IDENTITY_INSERT [dbo].[Mark] OFF
SET IDENTITY_INSERT [dbo].[Model] ON 

INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (1, N'X5', 2)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (2, N'X3 M40i', 2)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (3, N'8 Serisi Coupe', 2)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (4, N'X3', 2)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (5, N'X2', 2)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (6, N'X1', 2)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (7, N'6 Serisi Gran Turismo', 2)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (8, N'M240i', 2)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (9, N'Mustang', 3)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (10, N'GLE 250 D 2.2', 1)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (11, N'GLE 350 D', 1)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (12, N'VITO SELECT CDI', 1)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (13, N'VITO SELECT CDI PLUS', 1)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (14, N'VITO TOURER', 1)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (15, N'C200 COMFORT', 1)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (16, N'C200 AMG', 1)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (17, N'C200 EXCLUSIVE', 1)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (18, N'RIO', 4)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (19, N'OPTIMA', 4)
INSERT [dbo].[Model] ([ID], [Name], [MarkID]) VALUES (20, N'ELANTRA', 4)
SET IDENTITY_INSERT [dbo].[Model] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([ID], [UserName], [Password], [PersonTypeID]) VALUES (1, N'Teymur124', N'125A69', 1)
INSERT [dbo].[Person] ([ID], [UserName], [Password], [PersonTypeID]) VALUES (2, N'Elçin-Off', N'126985AS', 2)
INSERT [dbo].[Person] ([ID], [UserName], [Password], [PersonTypeID]) VALUES (3, N'Veli', N'1256889SD', 2)
INSERT [dbo].[Person] ([ID], [UserName], [Password], [PersonTypeID]) VALUES (4, N'Aida25', N'25Aida25', 2)
INSERT [dbo].[Person] ([ID], [UserName], [Password], [PersonTypeID]) VALUES (5, N'ƏliYev', N'ÜELİ558', 1)
INSERT [dbo].[Person] ([ID], [UserName], [Password], [PersonTypeID]) VALUES (6, N'Cavid', N'44558963', 1)
INSERT [dbo].[Person] ([ID], [UserName], [Password], [PersonTypeID]) VALUES (7, N'CavadCavadov', N'123456Asd', 1)
INSERT [dbo].[Person] ([ID], [UserName], [Password], [PersonTypeID]) VALUES (8, N'İLkin', N'adesqo', 2)
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[PersonType] ON 

INSERT [dbo].[PersonType] ([ID], [Name]) VALUES (1, N'Customer')
INSERT [dbo].[PersonType] ([ID], [Name]) VALUES (2, N'Workes`')
SET IDENTITY_INSERT [dbo].[PersonType] OFF
SET IDENTITY_INSERT [dbo].[SpeedBox] ON 

INSERT [dbo].[SpeedBox] ([ID], [Name]) VALUES (1, N'Mexaniki')
INSERT [dbo].[SpeedBox] ([ID], [Name]) VALUES (2, N'Avtomat')
SET IDENTITY_INSERT [dbo].[SpeedBox] OFF
ALTER TABLE [dbo].[CarAnnouncement]  WITH CHECK ADD FOREIGN KEY([BanTypeID])
REFERENCES [dbo].[BanType] ([ID])
GO
ALTER TABLE [dbo].[CarAnnouncement]  WITH CHECK ADD FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ID])
GO
ALTER TABLE [dbo].[CarAnnouncement]  WITH CHECK ADD FOREIGN KEY([FuelİD])
REFERENCES [dbo].[FuelType] ([ID])
GO
ALTER TABLE [dbo].[CarAnnouncement]  WITH CHECK ADD FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[CarAnnouncement]  WITH CHECK ADD FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([ID])
GO
ALTER TABLE [dbo].[CarAnnouncement]  WITH CHECK ADD FOREIGN KEY([SpeedID])
REFERENCES [dbo].[SpeedBox] ([ID])
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD FOREIGN KEY([MarkID])
REFERENCES [dbo].[Mark] ([ID])
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD FOREIGN KEY([PersonTypeID])
REFERENCES [dbo].[PersonType] ([ID])
GO
