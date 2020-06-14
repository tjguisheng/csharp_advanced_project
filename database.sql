USE [master]
GO
/****** Object:  Database [CarNote]    Script Date: 2020-06-10 4:51:56 PM ******/
CREATE DATABASE [CarNote]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarNote', FILENAME = N'E:\JAC\OneDrive - John Abbott College\VBCsharp\exec\database\CarNote.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarNote_log', FILENAME = N'E:\JAC\OneDrive - John Abbott College\VBCsharp\exec\database\CarNote_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CarNote] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarNote].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarNote] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarNote] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarNote] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarNote] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarNote] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarNote] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CarNote] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarNote] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarNote] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarNote] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarNote] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarNote] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarNote] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarNote] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarNote] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CarNote] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarNote] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarNote] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarNote] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarNote] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarNote] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CarNote] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarNote] SET RECOVERY FULL 
GO
ALTER DATABASE [CarNote] SET  MULTI_USER 
GO
ALTER DATABASE [CarNote] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarNote] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarNote] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarNote] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CarNote] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CarNote', N'ON'
GO
ALTER DATABASE [CarNote] SET QUERY_STORE = OFF
GO
USE [CarNote]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 2020-06-10 4:51:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[CarID] [int] NOT NULL,
	[CarName] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 2020-06-10 4:51:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[Id] [int] NOT NULL,
	[CarID] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[ODO] [int] NOT NULL,
	[Volume] [float] NOT NULL,
	[Payment] [float] NOT NULL,
 CONSTRAINT [PK_Record] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD  CONSTRAINT [FK_Record_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO
ALTER TABLE [dbo].[Record] CHECK CONSTRAINT [FK_Record_Car]
GO
USE [master]
GO
ALTER DATABASE [CarNote] SET  READ_WRITE 
GO
