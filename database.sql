USE [DatNQ30_JSP_004]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/5/2021 2:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[profile_id] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Content]    Script Date: 11/5/2021 2:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Content](
	[Account_id] [int] NOT NULL,
	[contents_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 11/5/2021 2:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brief] [varchar](255) NULL,
	[content] [varchar](255) NULL,
	[createdDate] [datetime2](7) NULL,
	[title] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 11/5/2021 2:44:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile](
	[id] [int] NOT NULL,
	[description] [varchar](255) NULL,
	[firstName] [varchar](255) NULL,
	[lastName] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (1, N'DatNQ30', N'DatNQ30@fsoft.com', N'Datpass899168$', 3)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (2, N'Truongvv8', N'Truongvv8@fsoft.com', N'Truongpass899168$', 4)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (3, N'LongDH8', N'longdhfpt@gmail.com', N'123qwe!', 19)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (4, N'Thuycc8', N'thuy@gmail.com', N'123qwe!', 20)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (5, N'Tuantd30', N'Tuantd@gmail.com', N'123qwe!', 22)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (6, N'Ducvv69', N'Ducvv69@fpt.com', N'123qwe!', 21)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (7, N'Hoangml68', N'Hoangml68@gmail.com', N'123qwe!', 23)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (8, N'KhaPhan89', N'KhaPhan89@gmail.com', N'123qwe!', 24)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (9, N'HoangThiep69', N'HoangThiep@gmail.com', N'123qwe!', 28)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (18, N'Lan', N'Lan@gmail.com', N'123qwe!', 29)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (22, N'Phong', N'Phong@gmail.com', N'qwe123!', 27)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (23, N'Khoa', N'Khoa@gmail.com', N'qwe123!', 26)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (24, N'Vuong', N'Vuong@gmail.com', N'123qwe!', 25)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (25, N'Hung', N'Hung@gmail.com', N'123qwe!', 30)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (26, N'Hoang', N'Hoang@gmail.com', N'123qwe!', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (27, N'Phuc', N'Phuc@gmail.com', N'123qwe!', NULL)
INSERT [dbo].[Account] ([Id], [UserName], [Email], [Password], [profile_id]) VALUES (28, N'Quang', N'Quang@gmail.com', N'123qwe!', 31)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (28, 33)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (6, 9)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (6, 10)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (6, 11)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (28, 34)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (8, 13)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (8, 14)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (8, 15)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (22, 28)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (9, 29)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (25, 30)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (25, 31)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (23, 18)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (23, 20)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (23, 21)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (23, 22)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (23, 24)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (23, 25)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (23, 26)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (23, 27)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (1, 6)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (1, 12)
INSERT [dbo].[Account_Content] ([Account_id], [contents_id]) VALUES (1, 32)
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (1, N'Brief 1', N'Description 1', CAST(N'2021-10-27T14:51:40.8230000' AS DateTime2), N'Title 1')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (6, N'Brief 2', N'Description 2', CAST(N'2021-10-27T15:25:48.7080000' AS DateTime2), N'Title 2')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (7, N'Brief 3', N'Description 3', CAST(N'2021-10-27T15:40:52.5460000' AS DateTime2), N'Title 3')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (8, N'Brief 3', N'Description 3', CAST(N'2021-10-27T15:41:09.3540000' AS DateTime2), N'Title 3')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (9, N'Brief 1', N'Description 1', CAST(N'2021-10-28T13:57:08.9100000' AS DateTime2), N'Title 1')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (10, N'Brief 2', N'Description 2', CAST(N'2021-10-28T13:57:27.5620000' AS DateTime2), N'Title 2')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (11, N'Brief 3', N'Description 3', CAST(N'2021-10-28T13:57:42.1110000' AS DateTime2), N'Title 3')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (12, N'Brief 3', N'Description 3', CAST(N'2021-10-28T15:45:09.4830000' AS DateTime2), N'Title 3')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (13, N'Kha 1', N'Kha 1', CAST(N'2021-10-28T15:53:48.5650000' AS DateTime2), N'Kha 1')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (14, N'Kha 2', N'Kha 2', CAST(N'2021-10-28T15:54:02.0090000' AS DateTime2), N'Kha 2')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (15, N'Kha 3', N'Kha 3', CAST(N'2021-10-28T15:54:21.8570000' AS DateTime2), N'Kha 3 ')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (16, N'Brief x 1', N'Description x 1', CAST(N'2021-10-30T16:00:54.0390000' AS DateTime2), N'Title x 1')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (17, N'Brief x 1', N'Description x 1', CAST(N'2021-10-30T16:01:02.7490000' AS DateTime2), N'Title x 1')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (18, N'Brief x 1', N'Description x 1', CAST(N'2021-10-30T16:06:26.2030000' AS DateTime2), N'Title x 1')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (19, N'Brief x 2', N'Description x2', CAST(N'2021-10-30T16:16:00.0860000' AS DateTime2), N'Title x 2')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (20, N'sdf', N'234', CAST(N'2021-10-30T16:33:14.4450000' AS DateTime2), N'wer')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (21, N'sdf', N'sdf', CAST(N'2021-10-30T16:37:31.8280000' AS DateTime2), N'sdf')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (22, N'sdf', N'sdf', CAST(N'2021-10-30T16:41:28.7070000' AS DateTime2), N'sdf')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (23, N'wer', N'wer!', CAST(N'2021-10-30T16:41:40.2460000' AS DateTime2), N'sdf')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (24, N'Brief xxx', N'Description xxx', CAST(N'2021-10-30T20:09:41.8990000' AS DateTime2), N'Title xxx')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (25, N'Brief 1000', N'Description 1000', CAST(N'2021-10-30T20:10:12.3700000' AS DateTime2), N'Title 1000')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (26, N'Brief 1000', N'Description 1000', CAST(N'2021-10-30T20:11:15.2540000' AS DateTime2), N'Title 1000')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (27, N'24', N'sdsd', CAST(N'2021-10-30T20:11:33.4000000' AS DateTime2), N'title 234')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (28, N'Brief 123', N'Description 234', CAST(N'2021-10-30T20:20:21.9410000' AS DateTime2), N'Title 123')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (29, N'Brief what', N'Description what', CAST(N'2021-10-30T20:48:52.6190000' AS DateTime2), N'Title what')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (30, N'Brief', N'No Description', CAST(N'2021-11-01T09:35:58.9180000' AS DateTime2), N'Title Hung')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (31, N'Brief Hung 2', N'Description Hung 2', CAST(N'2021-11-01T09:36:20.4740000' AS DateTime2), N'Title Hung 2')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (32, N'Brief Dat 3', N'Description Dat 3', CAST(N'2021-11-01T09:53:10.8660000' AS DateTime2), N'Title Dat 3')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (33, N'Brief Quang 1', N'Description Quang 1', CAST(N'2021-11-01T09:56:22.8400000' AS DateTime2), N'Quang title Quang 1')
INSERT [dbo].[Content] ([id], [brief], [content], [createdDate], [title]) VALUES (34, N'Quang 2', N'Quang 2', CAST(N'2021-11-01T09:56:37.9610000' AS DateTime2), N'Quang 2')
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (1, N'Fpt University', N'Dat', N'Nguyen', N'0915361593')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (3, N'Fpt University', N'Dat', N'Nguyen', N'0948854268')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (4, N'Fpt University', N'Truong', N'Vuong', N'234809248')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (19, N'Fpt University', N'Long', N'Vu', N'09123423423')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (20, N'No Des', N'Thuy', N'Chu', N'029384024')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (21, N'Fpt University', N'Duc', N'Vuong', N'29340294')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (22, N'No Description', N'Tuan ', N'Pham', N'23423424')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (23, N'No Description', N'Hoang', N'Ly', N'2341')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (24, N'No Description', N'Kha', N'Phan', N'23443098')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (25, N'sdf', N'sdf', N'sdf', N'34234')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (26, N'sdsf', N'Khoa', N'Nguyen', N'234')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (27, N'No Description', N'Phong', N'Tran', N'234')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (28, N'No Description', N'Thiep ', N'Nguyen', N'0923490')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (29, N'No description', N'Lan', N'Nguyen', N'3424')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (30, N'No description', N'Hung', N'Nguyen', N'234324')
INSERT [dbo].[Profile] ([id], [description], [firstName], [lastName], [phone]) VALUES (31, N'No Description', N'Quang', N'Tran', N'234234')
GO
/****** Object:  Index [UK_gq5pt0g5lnqkikq4kgmprdyeb]    Script Date: 11/5/2021 2:44:07 PM ******/
ALTER TABLE [dbo].[Account_Content] ADD  CONSTRAINT [UK_gq5pt0g5lnqkikq4kgmprdyeb] UNIQUE NONCLUSTERED 
(
	[contents_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FKgphmip9pgw72x7ekg9c0x84ty] FOREIGN KEY([profile_id])
REFERENCES [dbo].[Profile] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FKgphmip9pgw72x7ekg9c0x84ty]
GO
ALTER TABLE [dbo].[Account_Content]  WITH CHECK ADD  CONSTRAINT [FK2nmnm66g6qyj5fpqplb6fcdoo] FOREIGN KEY([contents_id])
REFERENCES [dbo].[Content] ([id])
GO
ALTER TABLE [dbo].[Account_Content] CHECK CONSTRAINT [FK2nmnm66g6qyj5fpqplb6fcdoo]
GO
ALTER TABLE [dbo].[Account_Content]  WITH CHECK ADD  CONSTRAINT [FKofvjxo0dt2ihdb1m4c7hvj97w] FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Account_Content] CHECK CONSTRAINT [FKofvjxo0dt2ihdb1m4c7hvj97w]
GO
