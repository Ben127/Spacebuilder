--------------------------------------投票------------------------------------------
/****** Object:  Table [dbo].[spb_VoteOptions]    Script Date: 2015/8/12 13:46:32 ******/
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spb_VoteOptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spb_VoteOptions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VoteId] [bigint] NOT NULL,
	[FeaturedImage] [nvarchar](256) NOT NULL,
	[LinkPath] [nvarchar](256) NULL,
	[OptionName] [nvarchar](150) NOT NULL,
	[VoteCount] [int] NOT NULL,
	[PropertyNames] [nvarchar](max) NULL,
	[PropertyValues] [nvarchar](max) NULL,
 CONSTRAINT [PK_spb_VoteOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
/****** Object:  Table [dbo].[spb_VoteRecords]    Script Date: 2015/8/12 13:46:32 ******/
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spb_VoteRecords]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spb_VoteRecords](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VoteId] [bigint] NOT NULL,
	[OptionId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[IP] [nvarchar](64) NOT NULL,
	[IsAnoymity] [tinyint] NOT NULL,
	[PropertyNames] [nvarchar](max) NULL,
	[PropertyValues] [nvarchar](max) NULL,
 CONSTRAINT [PK_spb_VoteRecords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
/****** Object:  Table [dbo].[spb_VoteThreads]    Script Date: 2015/8/12 13:46:32 ******/
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spb_VoteThreads]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spb_VoteThreads](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TenantTypeId] [char](6) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Body] [nvarchar](512) NOT NULL,
	[VoteType] [tinyint] NOT NULL,
	[OptionType] [tinyint] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[VoteResult] [tinyint] NOT NULL,
	[HiddenText] [nvarchar](256) NOT NULL,
	[MemberCount] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[AuditStatus] [smallint] NOT NULL,
	[PropertyNames] [nvarchar](max) NULL,
	[PropertyValues] [nvarchar](max) NULL,
 CONSTRAINT [PK_Spb_ VoteThreads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
Go
 ----用户------------
 alter table tn_Users add AuditStatus smallint
 alter table tn_Users add DateAvatar bigint

------------------群组-----------------------------------

 alter table spb_Groups add IsDynamicPermission tinyint
  Go