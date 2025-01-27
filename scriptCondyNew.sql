USE [master]
GO
/****** Object:  Database [Condy]    Script Date: 26.05.2024 18:27:41 ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 26.05.2024 18:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[CommentMessage] [nvarchar](1024) NOT NULL,
	[CommentRequest] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 26.05.2024 18:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[RequestClient] [int] NOT NULL,
	[RequestStartDate] [date] NOT NULL,
	[RequestTechType] [int] NOT NULL,
	[RequestTechModel] [nvarchar](1024) NOT NULL,
	[RequestProblemDescription] [nvarchar](1024) NOT NULL,
	[RequestStatus] [int] NOT NULL,
	[RequestMaster] [int] NULL,
	[RequestDuration] [int] NULL,
	[RequestParts] [nvarchar](50) NULL,
	[RequestStage] [int] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26.05.2024 18:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage]    Script Date: 26.05.2024 18:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[StageId] [int] IDENTITY(1,1) NOT NULL,
	[StageName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Stage] PRIMARY KEY CLUSTERED 
(
	[StageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 26.05.2024 18:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TechType]    Script Date: 26.05.2024 18:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechType](
	[TechTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TechTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TechType] PRIMARY KEY CLUSTERED 
(
	[TechTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26.05.2024 18:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserFIO] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserPhone] [nvarchar](50) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestId], [RequestClient], [RequestStartDate], [RequestTechType], [RequestTechModel], [RequestProblemDescription], [RequestStatus], [RequestMaster], [RequestDuration], [RequestParts], [RequestStage]) VALUES (1, 1, CAST(N'2020-12-05' AS Date), 1, N'erewre', N'gffgrgrg', 1, 4, 3, N'htghth', 1)
INSERT [dbo].[Request] ([RequestId], [RequestClient], [RequestStartDate], [RequestTechType], [RequestTechModel], [RequestProblemDescription], [RequestStatus], [RequestMaster], [RequestDuration], [RequestParts], [RequestStage]) VALUES (2, 1, CAST(N'2020-12-05' AS Date), 2, N' tyygtygtr', N'grgrgtr', 2, 4, 5, N'gfhgh', 2)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Заказчик')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'Оперетор')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (4, N'Специалист')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Stage] ON 

INSERT [dbo].[Stage] ([StageId], [StageName]) VALUES (1, N'Ожидание комплектующих')
INSERT [dbo].[Stage] ([StageId], [StageName]) VALUES (2, N'В процесе ремонта')
INSERT [dbo].[Stage] ([StageId], [StageName]) VALUES (3, N'Завершена')
SET IDENTITY_INSERT [dbo].[Stage] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (1, N'Открыта')
INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (2, N'В процессе ремонта')
INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (3, N'Завершена')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[TechType] ON 

INSERT [dbo].[TechType] ([TechTypeId], [TechTypeName]) VALUES (1, N'Кондиционер')
INSERT [dbo].[TechType] ([TechTypeId], [TechTypeName]) VALUES (2, N'Сушилка для рук')
INSERT [dbo].[TechType] ([TechTypeId], [TechTypeName]) VALUES (3, N'Увлажнитель воздуха')
SET IDENTITY_INSERT [dbo].[TechType] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserFIO], [UserLogin], [UserPassword], [UserPhone], [UserRole]) VALUES (1, N'риепрек', N'1', N'1', N'1', 1)
INSERT [dbo].[User] ([UserId], [UserFIO], [UserLogin], [UserPassword], [UserPhone], [UserRole]) VALUES (2, N'gtgrtgrt', N'2', N'2', N'2', 2)
INSERT [dbo].[User] ([UserId], [UserFIO], [UserLogin], [UserPassword], [UserPhone], [UserRole]) VALUES (3, N'ggggggr', N'3', N'3', N'3', 3)
INSERT [dbo].[User] ([UserId], [UserFIO], [UserLogin], [UserPassword], [UserPhone], [UserRole]) VALUES (4, N'gtgtr', N'4', N'4', N'4', 4)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Request] FOREIGN KEY([CommentRequest])
REFERENCES [dbo].[Request] ([RequestId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Request]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Stage] FOREIGN KEY([RequestStage])
REFERENCES [dbo].[Stage] ([StageId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Stage]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Status] FOREIGN KEY([RequestStatus])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Status]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_TechType] FOREIGN KEY([RequestTechType])
REFERENCES [dbo].[TechType] ([TechTypeId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_TechType]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User] FOREIGN KEY([RequestMaster])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_User]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User1] FOREIGN KEY([RequestClient])
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
