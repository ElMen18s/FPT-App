USE [master]
GO
/****** Object:  Database [FptBD]    Script Date: 6/4/2022 20:47:08 ******/
CREATE DATABASE [FptBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FptBD', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.DAVID\MSSQL\DATA\FptBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FptBD_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.DAVID\MSSQL\DATA\FptBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FptBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FptBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FptBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FptBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FptBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FptBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FptBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [FptBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FptBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FptBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FptBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FptBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FptBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FptBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FptBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FptBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FptBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FptBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FptBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FptBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FptBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FptBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FptBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FptBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FptBD] SET RECOVERY FULL 
GO
ALTER DATABASE [FptBD] SET  MULTI_USER 
GO
ALTER DATABASE [FptBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FptBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FptBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FptBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FptBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FptBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FptBD', N'ON'
GO
ALTER DATABASE [FptBD] SET QUERY_STORE = OFF
GO
USE [FptBD]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 6/4/2022 20:47:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](30) NOT NULL,
	[Phone] [varchar](14) NOT NULL,
	[Email] [varchar](80) NOT NULL,
	[Notes] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (1, N'Karen Carter', N'8712-3456', N'maksadmedic@gmail.com', N'Hoy es un bonito día.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (3, N'Gerard Way', N'84838281', N'ghilea@gmail.com', N'This is a note')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (5, N'Manuel Arias', N'25354572', N'manueh@gmail.com', N'she paid no heed to the light, the street or the town.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (6, N'Beverly Taylor', N'714-392-6432', N'beverlytaylor@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (7, N'Lauren Fry', N'415-751-6622', N'laurenfry@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (8, N'Justin Parker', N'225-376-5884', N'justinparker@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (9, N'Jeffery Chang', N'724-809-6213', N'jefferychang@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (10, N'Matthew Perez', N'224-325-3342', N'matthewperez@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (11, N'Michael Johnson', N'478-640-8519', N'michaeljohnson@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (12, N'Craig Colon', N'918-229-5256', N'craigcolon@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (13, N'Sandra Duncan', N'430-342-2889', N'sandraduncan@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (14, N'Andre Cox', N'918-218-3626', N'andrecox@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (15, N'Kathleen Sharp', N'610-616-1767', N'kathleensharp@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (16, N'Kevin French', N'570-346-2360', N'kevinfrench@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (17, N'Chelsea Bush DVM', N'203-243-1367', N'chelseabushdVM@gmail.com', N'This is a note.')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Phone], [Email], [Notes]) VALUES (18, N'Lisa Hood', N'253-984-5024', N'lisahood@gmail.com', N'This is a note.')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
USE [master]
GO
ALTER DATABASE [FptBD] SET  READ_WRITE 
GO
