USE [it-ebooks]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Display_Name] [nvarchar](255) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Image] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Author]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Author](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Decription] [nvarchar](max) NULL,
	[Short] [nvarchar](max) NULL,
	[Image] [nvarchar](255) NULL,
	[Sort] [int] NULL,
	[Path] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SubName] [nvarchar](255) NULL,
	[Path] [varchar](255) NULL,
	[Page] [int] NULL,
	[Image] [nvarchar](255) NULL,
	[FileSize] [nvarchar](255) NULL,
	[ISBN] [varchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[FileType] [bigint] NULL,
	[Publisher] [bigint] NULL,
	[Language] [bigint] NULL,
	[CreateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUser] [bigint] NULL,
	[Count_View] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book_Author]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Author](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Book_Id] [bigint] NOT NULL,
	[Author_Id] [bigint] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUser] [bigint] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book_DownloadUrl]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_DownloadUrl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Book_Id] [bigint] NOT NULL,
	[DownloadUrl_Id] [bigint] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUser] [bigint] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book_Tag]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Tag](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Book_Id] [bigint] NOT NULL,
	[Tag_Id] [bigint] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUser] [bigint] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DownloadUrl]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DownloadUrl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](255) NOT NULL,
	[ServerName] [nvarchar](max) NULL,
	[Count] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FileType]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](255) NULL,
	[Path] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Language]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Path] [varchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Publisher](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Path] [varchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 4/10/2014 3:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](255) NULL,
	[Path] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Author] ADD  DEFAULT ((255)) FOR [Sort]
GO
ALTER TABLE [dbo].[Author] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Author] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Book] ADD  DEFAULT ((1)) FOR [Page]
GO
ALTER TABLE [dbo].[Book] ADD  DEFAULT ((0)) FOR [Count_View]
GO
ALTER TABLE [dbo].[Book] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Book] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Book_Author] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Book_Author] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Book_DownloadUrl] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Book_DownloadUrl] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Book_Tag] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Book_Tag] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[DownloadUrl] ADD  DEFAULT ((0)) FOR [Count]
GO
ALTER TABLE [dbo].[DownloadUrl] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[DownloadUrl] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FileType] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FileType] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Language] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Language] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Publisher] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Publisher] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Tag] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tag] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Account] FOREIGN KEY([CreateUser])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Account]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Account1] FOREIGN KEY([UpdateUser])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Account1]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_FileType] FOREIGN KEY([FileType])
REFERENCES [dbo].[FileType] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_FileType]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Language] FOREIGN KEY([Language])
REFERENCES [dbo].[Language] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Language]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([Publisher])
REFERENCES [dbo].[Publisher] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[Book_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Account] FOREIGN KEY([CreateUser])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Book_Author] CHECK CONSTRAINT [FK_Book_Author_Account]
GO
ALTER TABLE [dbo].[Book_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Account1] FOREIGN KEY([UpdateUser])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Book_Author] CHECK CONSTRAINT [FK_Book_Author_Account1]
GO
ALTER TABLE [dbo].[Book_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Author] FOREIGN KEY([Author_Id])
REFERENCES [dbo].[Author] ([Id])
GO
ALTER TABLE [dbo].[Book_Author] CHECK CONSTRAINT [FK_Book_Author_Author]
GO
ALTER TABLE [dbo].[Book_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Book] FOREIGN KEY([Book_Id])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[Book_Author] CHECK CONSTRAINT [FK_Book_Author_Book]
GO
ALTER TABLE [dbo].[Book_DownloadUrl]  WITH CHECK ADD  CONSTRAINT [FK_Book_DownloadUrl_Account] FOREIGN KEY([CreateUser])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Book_DownloadUrl] CHECK CONSTRAINT [FK_Book_DownloadUrl_Account]
GO
ALTER TABLE [dbo].[Book_DownloadUrl]  WITH CHECK ADD  CONSTRAINT [FK_Book_DownloadUrl_Account1] FOREIGN KEY([UpdateUser])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Book_DownloadUrl] CHECK CONSTRAINT [FK_Book_DownloadUrl_Account1]
GO
ALTER TABLE [dbo].[Book_DownloadUrl]  WITH CHECK ADD  CONSTRAINT [FK_Book_DownloadUrl_Book] FOREIGN KEY([Book_Id])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[Book_DownloadUrl] CHECK CONSTRAINT [FK_Book_DownloadUrl_Book]
GO
ALTER TABLE [dbo].[Book_DownloadUrl]  WITH CHECK ADD  CONSTRAINT [FK_Book_DownloadUrl_DownloadUrl] FOREIGN KEY([DownloadUrl_Id])
REFERENCES [dbo].[DownloadUrl] ([Id])
GO
ALTER TABLE [dbo].[Book_DownloadUrl] CHECK CONSTRAINT [FK_Book_DownloadUrl_DownloadUrl]
GO
ALTER TABLE [dbo].[Book_Tag]  WITH CHECK ADD  CONSTRAINT [FK_Book_Tag_Account] FOREIGN KEY([CreateUser])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Book_Tag] CHECK CONSTRAINT [FK_Book_Tag_Account]
GO
ALTER TABLE [dbo].[Book_Tag]  WITH CHECK ADD  CONSTRAINT [FK_Book_Tag_Account1] FOREIGN KEY([UpdateUser])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Book_Tag] CHECK CONSTRAINT [FK_Book_Tag_Account1]
GO
ALTER TABLE [dbo].[Book_Tag]  WITH CHECK ADD  CONSTRAINT [FK_Book_Tag_Book] FOREIGN KEY([Book_Id])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[Book_Tag] CHECK CONSTRAINT [FK_Book_Tag_Book]
GO
ALTER TABLE [dbo].[Book_Tag]  WITH CHECK ADD  CONSTRAINT [FK_Book_Tag_Tag] FOREIGN KEY([Tag_Id])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[Book_Tag] CHECK CONSTRAINT [FK_Book_Tag_Tag]
GO
