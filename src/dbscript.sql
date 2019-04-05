USE [Children]
GO
/****** Object:  Table [dbo].[SecurityQuestion]    Script Date: 4/5/2019 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityQuestion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SecurityQuestionText] [nvarchar](250) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[CreatedTime] [datetime] NOT NULL,
	[ModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_SecurityQuestion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/5/2019 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[PreviousPassword1] [nvarchar](100) NULL,
	[PreviousPassword2] [nvarchar](100) NULL,
	[PreviousPassword3] [nvarchar](100) NULL,
	[SecurityQuestionId1] [bigint] NULL,
	[SecurityQuestionId2] [bigint] NULL,
	[SecurityQuestionId3] [bigint] NULL,
	[SecurityQuestionAnswer1] [nvarchar](150) NULL,
	[SecurityQuestionAnswer2] [nvarchar](150) NULL,
	[SecurityQuestionAnswer3] [nvarchar](150) NULL,
	[IndividualAcc] [bit] NOT NULL,
	[EmailVerify] [bit] NOT NULL,
	[SMSVerify] [bit] NOT NULL,
	[Locked] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[LastLoginTime] [datetime] NULL,
	[LastLoginDevice] [nvarchar](100) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[ModifiedTime] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserComunicationPreference]    Script Date: 4/5/2019 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserComunicationPreference](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Email] [bit] NULL,
	[SMS] [bit] NULL,
	[PushNotification] [bit] NULL,
	[Alexa] [bit] NULL,
	[GoogleHome] [bit] NULL,
	[CreatedTime] [datetime] NOT NULL,
	[ModifiedTime] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_UserComunicationPreference] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPrivacy]    Script Date: 4/5/2019 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPrivacy](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ShareEmailWithMfg] [bit] NULL,
	[AutoRegisterWithMfg] [bit] NULL,
	[WarrantyExpiryAlert] [bit] NULL,
	[ProductRecallAlert] [bit] NULL,
	[PriceAlert] [bit] NULL,
	[ProductPromotionAlert] [bit] NULL,
	[CreatedTime] [datetime] NOT NULL,
	[ModifiedTime] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_UserPrivacy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 4/5/2019 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Prefix] [nvarchar](50) NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Suffix] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[CellPhone] [nvarchar](20) NULL,
	[LandLinePhone1] [nvarchar](20) NULL,
	[LandLinePhone2] [nvarchar](20) NULL,
	[Address1] [nvarchar](150) NULL,
	[Address2] [nvarchar](150) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Country] [nvarchar](150) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[ModifiedTime] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
