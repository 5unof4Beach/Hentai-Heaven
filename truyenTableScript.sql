USE [BTLWEB]
GO
/****** Object:  Table [dbo].[email]    Script Date: 5/19/2022 11:02:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email](
	[uid] [int] NOT NULL,
	[emailName] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[theloai]    Script Date: 5/19/2022 11:02:17 AM ******/
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
/****** Object:  Table [dbo].[truyen]    Script Date: 5/19/2022 11:02:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[truyen](
	[idTruyen] [nchar](10) NOT NULL,
	[ten] [nchar](255) NOT NULL,
	[nxb] [nchar](255) NOT NULL,
	[rating] [int] NULL,
	[idTheLoai] [varchar](10) NULL,
	[stt] [int] NULL,
 CONSTRAINT [PK_truyen] PRIMARY KEY CLUSTERED 
(
	[idTruyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[truyenvatheloai]    Script Date: 5/19/2022 11:02:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[truyenvatheloai](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idTruyen] [nchar](10) NOT NULL,
	[idTheLoai] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 5/19/2022 11:02:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[firstName] [varchar](45) NOT NULL,
	[lastName] [varchar](45) NOT NULL,
	[userType] [int] NULL,
	[password] [varchar](255) NOT NULL,
	[username] [varchar](45) NOT NULL,
 CONSTRAINT [PK_user_1] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[theloai] ([idTheLoai], [TenTheLoai]) VALUES (N'tnl', N'Truyen Nguoi Lon')
INSERT [dbo].[theloai] ([idTheLoai], [TenTheLoai]) VALUES (N'tt', N'Truyen Tranh')
INSERT [dbo].[theloai] ([idTheLoai], [TenTheLoai]) VALUES (N'ttn', N'Truyen Thieu Nhi')
GO
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'50SOG01   ', N'50 Sac Thai                                                                                                                                                                                                                                                    ', N'Vintage Books                                                                                                                                                                                                                                                  ', 0, N'tnl', 1)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'CN2       ', N'Conan Tap 2                                                                                                                                                                                                                                                    ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 15)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'CN3       ', N'Conan Tap 3                                                                                                                                                                                                                                                    ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 16)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'CN6       ', N'Conan tap 5                                                                                                                                                                                                                                                    ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 17)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM1      ', N'Doremon tap 1                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 18)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM10     ', N'Doremon tap 10                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 11)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM11     ', N'Doremon tap 11                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 12)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM12     ', N'Doremon tap 12                                                                                                                                                                                                                                                 ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 13)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM2      ', N'Doremon tap 2                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 3)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM3      ', N'Doremon tap 3                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 4)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM4      ', N'Doremon tap 4                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 5)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM5      ', N'Doremon tap 5                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 6)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM6      ', N'Doremon tap 6                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 7)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM7      ', N'Doremon tap 7                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 8)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM8      ', N'Doremon tap 8                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 9)
INSERT [dbo].[truyen] ([idTruyen], [ten], [nxb], [rating], [idTheLoai], [stt]) VALUES (N'DRM9      ', N'Doremon tap 9                                                                                                                                                                                                                                                  ', N'Kim Dong                                                                                                                                                                                                                                                       ', 0, N'tt', 10)
GO
SET IDENTITY_INSERT [dbo].[truyenvatheloai] ON 

INSERT [dbo].[truyenvatheloai] ([id], [idTruyen], [idTheLoai]) VALUES (4, N'50SOG01   ', N'tnl')
SET IDENTITY_INSERT [dbo].[truyenvatheloai] OFF
GO
INSERT [dbo].[user] ([firstName], [lastName], [userType], [password], [username]) VALUES (N'Tung', N'Nguyen', NULL, N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'admin')
INSERT [dbo].[user] ([firstName], [lastName], [userType], [password], [username]) VALUES (N'Bui', N'Duc ', 1, N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'ducbui')
INSERT [dbo].[user] ([firstName], [lastName], [userType], [password], [username]) VALUES (N'Duc', N'Bui', 1, N'8feb27354987711f18bcaece1b23ec3bdc477231aef11415d5c417775545512d', N'ducbui2001')
INSERT [dbo].[user] ([firstName], [lastName], [userType], [password], [username]) VALUES (N'gioi', N'dinh', NULL, N'12', N'gd')
INSERT [dbo].[user] ([firstName], [lastName], [userType], [password], [username]) VALUES (N'Thinh', N'Bui', 0, N'7885ea9f69e9d0687c81204efde13d3f82ce8a632c2d2b39c41220bcf3c2cc41', N'giathinh910')
INSERT [dbo].[user] ([firstName], [lastName], [userType], [password], [username]) VALUES (N'Dinh', N'Hung', NULL, N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'hd2001')
INSERT [dbo].[user] ([firstName], [lastName], [userType], [password], [username]) VALUES (N'Tuan', N'Nguyen', NULL, N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'tuan2001')
GO
ALTER TABLE [dbo].[truyen] ADD  CONSTRAINT [DF_truyen_rating]  DEFAULT ((0)) FOR [rating]
GO
ALTER TABLE [dbo].[truyen]  WITH CHECK ADD  CONSTRAINT [FK_truyen_theloai] FOREIGN KEY([idTheLoai])
REFERENCES [dbo].[theloai] ([idTheLoai])
GO
ALTER TABLE [dbo].[truyen] CHECK CONSTRAINT [FK_truyen_theloai]
GO
