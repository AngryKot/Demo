USE [master]
GO
/****** Object:  Database [Condy]    Script Date: 25.05.2024 0:23:39 ******/
CREATE DATABASE [Condy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Condy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Condy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Condy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Condy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Condy] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Condy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Condy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Condy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Condy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Condy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Condy] SET ARITHABORT OFF 
GO
ALTER DATABASE [Condy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Condy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Condy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Condy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Condy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Condy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Condy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Condy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Condy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Condy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Condy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Condy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Condy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Condy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Condy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Condy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Condy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Condy] SET RECOVERY FULL 
GO
ALTER DATABASE [Condy] SET  MULTI_USER 
GO
ALTER DATABASE [Condy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Condy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Condy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Condy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Condy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Condy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Condy', N'ON'
GO
ALTER DATABASE [Condy] SET QUERY_STORE = ON
GO
ALTER DATABASE [Condy] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Condy]
GO
/****** Object:  Table [dbo].[EquipmentType]    Script Date: 25.05.2024 0:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentType](
	[EquipmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentTypeTitle] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_EquipmentType] PRIMARY KEY CLUSTERED 
(
	[EquipmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 25.05.2024 0:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[RequestCreateAt] [datetime] NOT NULL,
	[RequestEquipmentType] [int] NOT NULL,
	[RequestDeviceModel] [nvarchar](256) NOT NULL,
	[RequestDescription] [nvarchar](256) NOT NULL,
	[RequestCustomer] [int] NOT NULL,
	[RequestPhone] [nvarchar](256) NOT NULL,
	[RequestStatus] [int] NOT NULL,
	[RequesStage] [int] NOT NULL,
	[RequestEmployee] [int] NULL,
	[RequestComment] [nvarchar](256) NULL,
	[RequestDuration] [int] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.05.2024 0:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleTitle] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage]    Script Date: 25.05.2024 0:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[StageId] [int] IDENTITY(1,1) NOT NULL,
	[StageTitle] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Part] PRIMARY KEY CLUSTERED 
(
	[StageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 25.05.2024 0:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusTitle] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.05.2024 0:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](256) NOT NULL,
	[UserPassword] [nvarchar](256) NOT NULL,
	[UserRole] [int] NOT NULL,
	[UserFullname] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EquipmentType] ON 

INSERT [dbo].[EquipmentType] ([EquipmentTypeId], [EquipmentTypeTitle]) VALUES (1, N'Газонокосилки')
INSERT [dbo].[EquipmentType] ([EquipmentTypeId], [EquipmentTypeTitle]) VALUES (2, N'Поливашки')
INSERT [dbo].[EquipmentType] ([EquipmentTypeId], [EquipmentTypeTitle]) VALUES (3, N'ПивнойХолодильник')
INSERT [dbo].[EquipmentType] ([EquipmentTypeId], [EquipmentTypeTitle]) VALUES (4, N'Бульмени')
SET IDENTITY_INSERT [dbo].[EquipmentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestId], [RequestCreateAt], [RequestEquipmentType], [RequestDeviceModel], [RequestDescription], [RequestCustomer], [RequestPhone], [RequestStatus], [RequesStage], [RequestEmployee], [RequestComment], [RequestDuration]) VALUES (29, CAST(N'2024-05-25T12:00:00.000' AS DateTime), 1, N'SVO', N'SVO', 1, N'89008008585', 4, 3, 3, N'SVO', 25)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleTitle]) VALUES (1, N'Заказчик')
INSERT [dbo].[Role] ([RoleId], [RoleTitle]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleId], [RoleTitle]) VALUES (3, N'Исполнитель')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Stage] ON 

INSERT [dbo].[Stage] ([StageId], [StageTitle]) VALUES (1, N'Ожидание комплектующих')
INSERT [dbo].[Stage] ([StageId], [StageTitle]) VALUES (2, N'В процессе ремонта')
INSERT [dbo].[Stage] ([StageId], [StageTitle]) VALUES (3, N'Завершена')
SET IDENTITY_INSERT [dbo].[Stage] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [StatusTitle]) VALUES (1, N'открыта')
INSERT [dbo].[Status] ([StatusId], [StatusTitle]) VALUES (2, N'в процессе ремонта')
INSERT [dbo].[Status] ([StatusId], [StatusTitle]) VALUES (4, N'завершена')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserLogin], [UserPassword], [UserRole], [UserFullname]) VALUES (1, N'customer', N'customer', 1, N'Петров Петр Петрович')
INSERT [dbo].[User] ([UserId], [UserLogin], [UserPassword], [UserRole], [UserFullname]) VALUES (2, N'manager', N'manager', 2, N'Екатериновна Екатерина Екатериновна')
INSERT [dbo].[User] ([UserId], [UserLogin], [UserPassword], [UserRole], [UserFullname]) VALUES (3, N'employee', N'employee', 3, N'Сухожилов Сухожил Сухожилович')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_EquipmentType] FOREIGN KEY([RequestEquipmentType])
REFERENCES [dbo].[EquipmentType] ([EquipmentTypeId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_EquipmentType]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Stage] FOREIGN KEY([RequesStage])
REFERENCES [dbo].[Stage] ([StageId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Stage]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Status] FOREIGN KEY([RequestStatus])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Status]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User] FOREIGN KEY([RequestCustomer])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_User]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User1] FOREIGN KEY([RequestEmployee])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_User1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Condy] SET  READ_WRITE 
GO
