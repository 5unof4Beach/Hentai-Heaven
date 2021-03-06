USE [master]
GO
/****** Object:  Database [HentaiHeaven]    Script Date: 5/6/2022 7:10:17 PM ******/
CREATE DATABASE [HentaiHeaven]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HentaiHeaven', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BTLWEB\MSSQL\DATA\HentaiHeaven.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HentaiHeaven_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BTLWEB\MSSQL\DATA\HentaiHeaven_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HentaiHeaven] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HentaiHeaven].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HentaiHeaven] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HentaiHeaven] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HentaiHeaven] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HentaiHeaven] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HentaiHeaven] SET ARITHABORT OFF 
GO
ALTER DATABASE [HentaiHeaven] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HentaiHeaven] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HentaiHeaven] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HentaiHeaven] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HentaiHeaven] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HentaiHeaven] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HentaiHeaven] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HentaiHeaven] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HentaiHeaven] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HentaiHeaven] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HentaiHeaven] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HentaiHeaven] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HentaiHeaven] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HentaiHeaven] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HentaiHeaven] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HentaiHeaven] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HentaiHeaven] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HentaiHeaven] SET RECOVERY FULL 
GO
ALTER DATABASE [HentaiHeaven] SET  MULTI_USER 
GO
ALTER DATABASE [HentaiHeaven] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HentaiHeaven] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HentaiHeaven] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HentaiHeaven] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HentaiHeaven] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HentaiHeaven] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HentaiHeaven', N'ON'
GO
ALTER DATABASE [HentaiHeaven] SET QUERY_STORE = OFF
GO
USE [HentaiHeaven]
GO
/****** Object:  Table [dbo].[email]    Script Date: 5/6/2022 7:10:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email](
	[uid] [int] NOT NULL,
	[emailName] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[theloai]    Script Date: 5/6/2022 7:10:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theloai](
	[idTheLoai] [varchar](10) NOT NULL,
	[TenTheLoai] [varchar](255) NOT NULL,
 CONSTRAINT [PK_theloai] PRIMARY KEY CLUSTERED 
(
	[idTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[truyen]    Script Date: 5/6/2022 7:10:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[truyen](
	[idTruyen] [nchar](10) NOT NULL,
	[ten] [nchar](255) NOT NULL,
	[nxb] [nchar](255) NOT NULL,
	[rating] [int] NULL,
 CONSTRAINT [PK_truyen] PRIMARY KEY CLUSTERED 
(
	[idTruyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[truyenvatheloai]    Script Date: 5/6/2022 7:10:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[truyenvatheloai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTruyen] [nchar](10) NOT NULL,
	[idTheLoai] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 5/6/2022 7:10:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](45) NOT NULL,
	[lastName] [varchar](45) NOT NULL,
	[eid] [int] NULL,
	[userType] [int] NOT NULL,
	[password] [varchar](255) NOT NULL,
	[username] [varchar](45) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[theloai] ([idTheLoai], [TenTheLoai]) VALUES (N'tnl', N'Truyen Nguoi Lon')
INSERT [dbo].[theloai] ([idTheLoai], [TenTheLoai]) VALUES (N'tt', N'Truyen Tranh')
INSERT [dbo].[theloai] ([idTheLoai], [TenTheLoai]) VALUES (N'ttn', N'Truyen Thieu Nhi')
GO
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'50SOG01   ', N'50SOG01                                                                                                                                                                                                                                                        ', N'Vintage Books                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM1      ', N'Doremon Tap 1                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM10     ', N'Doremon Tap 10                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM11     ', N'Doremon  Tap 11                                                                                                                                                                                                                                                ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM2      ', N'Doremon  Tap 2                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM3      ', N'Doremon  Tap 3                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM4      ', N'Doremon  Tap 4                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM5      ', N'Doremon  Tap 5                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM6      ', N'Doremon  Tap 6                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM7      ', N'Doremon Tap 7                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM8      ', N'Doremon  Tap 8                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating]) VALUES (N'DRM9      ', N'Doremon  Tap 9                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', NULL)
GO
SET IDENTITY_INSERT [dbo].[truyenvatheloai] ON 

INSERT [dbo].[truyenvatheloai] ([id], [idTruyen], [idTheLoai]) VALUES (2, N'DRM1      ', N'tt')
INSERT [dbo].[truyenvatheloai] ([id], [idTruyen], [idTheLoai]) VALUES (3, N'DRM1      ', N'ttn')
INSERT [dbo].[truyenvatheloai] ([id], [idTruyen], [idTheLoai]) VALUES (4, N'50SOG01   ', N'tnl')
SET IDENTITY_INSERT [dbo].[truyenvatheloai] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [firstName], [lastName], [eid], [userType], [password], [username]) VALUES (1, N'Duc', N'Bui', NULL, 1, N'8feb27354987711f18bcaece1b23ec3bdc477231aef11415d5c417775545512d', N'ducbui2001')
INSERT [dbo].[user] ([id], [firstName], [lastName], [eid], [userType], [password], [username]) VALUES (2, N'Thinh', N'Bui', NULL, 0, N'7885ea9f69e9d0687c81204efde13d3f82ce8a632c2d2b39c41220bcf3c2cc41', N'giathinh910')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[email]  WITH CHECK ADD  CONSTRAINT [FK_email_user] FOREIGN KEY([uid])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[email] CHECK CONSTRAINT [FK_email_user]
GO
ALTER TABLE [dbo].[truyenvatheloai]  WITH CHECK ADD  CONSTRAINT [FK_truyenvatheloai_theloai] FOREIGN KEY([idTheLoai])
REFERENCES [dbo].[theloai] ([idTheLoai])
GO
ALTER TABLE [dbo].[truyenvatheloai] CHECK CONSTRAINT [FK_truyenvatheloai_theloai]
GO
ALTER TABLE [dbo].[truyenvatheloai]  WITH CHECK ADD  CONSTRAINT [FK_truyenvatheloai_truyen] FOREIGN KEY([idTruyen])
REFERENCES [dbo].[truyen] ([idTruyen])
GO
ALTER TABLE [dbo].[truyenvatheloai] CHECK CONSTRAINT [FK_truyenvatheloai_truyen]
GO
USE [master]
GO
ALTER DATABASE [HentaiHeaven] SET  READ_WRITE 
GO
