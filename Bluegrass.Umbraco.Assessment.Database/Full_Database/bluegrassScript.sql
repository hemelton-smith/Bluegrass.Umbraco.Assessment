USE [master]
GO
/****** Object:  Database [BluegrassAssessment]    Script Date: 2025/02/20 00:08:02 ******/
CREATE DATABASE [BluegrassAssessment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BluegrassAssessment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BluegrassAssessment.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BluegrassAssessment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BluegrassAssessment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BluegrassAssessment] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BluegrassAssessment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BluegrassAssessment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET ARITHABORT OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BluegrassAssessment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BluegrassAssessment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BluegrassAssessment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BluegrassAssessment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET RECOVERY FULL 
GO
ALTER DATABASE [BluegrassAssessment] SET  MULTI_USER 
GO
ALTER DATABASE [BluegrassAssessment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BluegrassAssessment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BluegrassAssessment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BluegrassAssessment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BluegrassAssessment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BluegrassAssessment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BluegrassAssessment', N'ON'
GO
ALTER DATABASE [BluegrassAssessment] SET QUERY_STORE = ON
GO
ALTER DATABASE [BluegrassAssessment] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BluegrassAssessment]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentNu]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentNu](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[data] [nvarchar](max) NULL,
	[rv] [bigint] NOT NULL,
	[dataRaw] [varbinary](max) NULL,
 CONSTRAINT [PK_cmsContentNu] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[listView] [uniqueidentifier] NULL,
	[isElement] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
	[variations] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NULL,
	[key] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
	[passwordConfig] [nvarchar](500) NULL,
	[securityStampToken] [nvarchar](255) NULL,
	[emailConfirmedDate] [datetime] NULL,
	[failedPasswordAttempts] [int] NULL,
	[isLockedOut] [bit] NULL,
	[isApproved] [bit] NOT NULL,
	[lastLoginDate] [datetime] NULL,
	[lastLockoutDate] [datetime] NULL,
	[lastPasswordChangeDate] [datetime] NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
	[isSensitive] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[mandatoryMessage] [nvarchar](500) NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[validationRegExpMessage] [nvarchar](500) NULL,
	[Description] [nvarchar](2000) NULL,
	[labelOnTop] [bit] NOT NULL,
	[variations] [int] NOT NULL,
	[UniqueID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueID] [uniqueidentifier] NOT NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[propertyTypeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTags]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group] [nvarchar](100) NOT NULL,
	[languageId] [int] NULL,
	[tag] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccess]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccess](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[loginNodeId] [int] NOT NULL,
	[noAccessNodeId] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccessRule]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccessRule](
	[id] [uniqueidentifier] NOT NULL,
	[accessId] [uniqueidentifier] NOT NULL,
	[ruleValue] [nvarchar](255) NOT NULL,
	[ruleType] [nvarchar](255) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccessRule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAudit]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAudit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[performingUserId] [int] NOT NULL,
	[performingDetails] [nvarchar](1024) NULL,
	[performingIp] [nvarchar](64) NULL,
	[eventDateUtc] [datetime] NOT NULL,
	[affectedUserId] [int] NOT NULL,
	[affectedDetails] [nvarchar](1024) NULL,
	[eventType] [nvarchar](256) NOT NULL,
	[eventDetails] [nvarchar](1024) NULL,
 CONSTRAINT [PK_umbracoAudit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoCacheInstruction]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoCacheInstruction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[utcStamp] [datetime] NOT NULL,
	[jsonInstruction] [nvarchar](max) NOT NULL,
	[originated] [nvarchar](500) NOT NULL,
	[instructionCount] [int] NOT NULL,
 CONSTRAINT [PK_umbracoCacheInstruction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoConsent]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoConsent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[current] [bit] NOT NULL,
	[source] [nvarchar](512) NOT NULL,
	[context] [nvarchar](128) NOT NULL,
	[action] [nvarchar](512) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[state] [int] NOT NULL,
	[comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoConsent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContent]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContent](
	[nodeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_umbracoContent] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentSchedule]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentSchedule](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[date] [datetime] NOT NULL,
	[action] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoContentSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersion]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[versionDate] [datetime] NOT NULL,
	[userId] [int] NULL,
	[current] [bit] NOT NULL,
	[text] [nvarchar](255) NULL,
	[preventCleanup] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersionCleanupPolicy]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersionCleanupPolicy](
	[contentTypeId] [int] NOT NULL,
	[preventCleanup] [bit] NOT NULL,
	[keepAllVersionsNewerThanDays] [int] NULL,
	[keepLatestVersionPerDayForDays] [int] NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoContentVersionCleanupPolicy] PRIMARY KEY CLUSTERED 
(
	[contentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersionCultureVariation]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersionCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[date] [datetime] NOT NULL,
	[availableUserId] [int] NULL,
 CONSTRAINT [PK_umbracoContentVersionCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoCreatedPackageSchema]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoCreatedPackageSchema](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[packageId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_umbracoCreatedPackageSchema] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDataType]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDataType](
	[nodeId] [int] NOT NULL,
	[propertyEditorAlias] [nvarchar](255) NOT NULL,
	[propertyEditorUiAlias] [nvarchar](255) NULL,
	[dbType] [nvarchar](50) NOT NULL,
	[config] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoDataType] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocument]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[edited] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocument] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentCultureVariation]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[edited] [bit] NOT NULL,
	[available] [bit] NOT NULL,
	[published] [bit] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoDocumentCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentUrl]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentUrl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [uniqueidentifier] NOT NULL,
	[isDraft] [bit] NOT NULL,
	[languageId] [int] NOT NULL,
	[urlSegment] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocumentUrl]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE CLUSTERED INDEX [IX_umbracoDocumentUrl] ON [dbo].[umbracoDocumentUrl]
(
	[uniqueId] ASC,
	[languageId] ASC,
	[isDraft] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentVersion]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentVersion](
	[id] [int] NOT NULL,
	[templateId] [int] NULL,
	[published] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocumentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDomain]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomain](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
	[sortOrder] [int] NOT NULL,
 CONSTRAINT [PK_umbracoDomain] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoExternalLogin]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoExternalLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userOrMemberKey] [uniqueidentifier] NOT NULL,
	[loginProvider] [nvarchar](400) NOT NULL,
	[providerKey] [nvarchar](4000) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[userData] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoExternalLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoExternalLoginToken]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoExternalLoginToken](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[externalLoginId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoExternalLoginToken] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoKeyValue]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoKeyValue](
	[key] [nvarchar](256) NOT NULL,
	[value] [nvarchar](max) NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoKeyValue] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](14) NULL,
	[languageCultureName] [nvarchar](100) NULL,
	[isDefaultVariantLang] [bit] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[fallbackLanguageId] [int] NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLock]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLock](
	[id] [int] NOT NULL,
	[value] [int] NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_umbracoLock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[NodeId] [int] NOT NULL,
	[entityType] [nvarchar](50) NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
	[parameters] [nvarchar](4000) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLogViewerQuery]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLogViewerQuery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[query] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoLogViewerQuery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoMediaVersion]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoMediaVersion](
	[id] [int] NOT NULL,
	[path] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoMediaVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [uniqueidentifier] NOT NULL,
	[parentId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[trashed] [bit] NOT NULL,
	[nodeUser] [int] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoOpenIddictApplications]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoOpenIddictApplications](
	[Id] [nvarchar](450) NOT NULL,
	[ClientId] [nvarchar](100) NULL,
	[ClientSecret] [nvarchar](max) NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[ConsentType] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[Permissions] [nvarchar](max) NULL,
	[PostLogoutRedirectUris] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedirectUris] [nvarchar](max) NULL,
	[Requirements] [nvarchar](max) NULL,
	[ClientType] [nvarchar](50) NULL,
	[ApplicationType] [nvarchar](50) NULL,
	[JsonWebKeySet] [nvarchar](max) NULL,
	[Settings] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoOpenIddictApplications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoOpenIddictAuthorizations]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoOpenIddictAuthorizations](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationId] [nvarchar](450) NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[CreationDate] [datetime2](7) NULL,
	[Properties] [nvarchar](max) NULL,
	[Scopes] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_umbracoOpenIddictAuthorizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoOpenIddictScopes]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoOpenIddictScopes](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Descriptions] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[Name] [nvarchar](200) NULL,
	[Properties] [nvarchar](max) NULL,
	[Resources] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoOpenIddictScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoOpenIddictTokens]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoOpenIddictTokens](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationId] [nvarchar](450) NULL,
	[AuthorizationId] [nvarchar](450) NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[CreationDate] [datetime2](7) NULL,
	[ExpirationDate] [datetime2](7) NULL,
	[Payload] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedemptionDate] [datetime2](7) NULL,
	[ReferenceId] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_umbracoOpenIddictTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoPropertyData]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[segment] [nvarchar](256) NULL,
	[intValue] [int] NULL,
	[decimalValue] [decimal](38, 6) NULL,
	[dateValue] [datetime] NULL,
	[varcharValue] [nvarchar](512) NULL,
	[textValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_umbracoPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRedirectUrl]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRedirectUrl](
	[id] [uniqueidentifier] NOT NULL,
	[contentKey] [uniqueidentifier] NOT NULL,
	[createDateUtc] [datetime] NOT NULL,
	[url] [nvarchar](max) NOT NULL,
	[culture] [nvarchar](255) NULL,
	[urlHash] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_umbracoRedirectUrl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeUniqueId] [uniqueidentifier] NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NULL,
	[childObjectType] [uniqueidentifier] NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NOT NULL,
	[isDependency] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[computerName] [nvarchar](255) NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isSchedulingPublisher] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoTwoFactorLogin]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoTwoFactorLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userOrMemberKey] [uniqueidentifier] NOT NULL,
	[providerName] [nvarchar](400) NOT NULL,
	[secret] [nvarchar](400) NOT NULL,
 CONSTRAINT [PK_umbracoTwoFactorLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[key] [uniqueidentifier] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](500) NOT NULL,
	[passwordConfig] [nvarchar](500) NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userLanguage] [nvarchar](10) NULL,
	[securityStampToken] [nvarchar](255) NULL,
	[failedLoginAttempts] [int] NULL,
	[lastLockoutDate] [datetime] NULL,
	[lastPasswordChangeDate] [datetime] NULL,
	[lastLoginDate] [datetime] NULL,
	[emailConfirmedDate] [datetime] NULL,
	[invitedDate] [datetime] NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[kind] [int] NOT NULL,
	[avatar] [nvarchar](500) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2ClientId]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2ClientId](
	[userId] [int] NOT NULL,
	[clientId] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUser2ClientId] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[clientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2UserGroup]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2UserGroup](
	[userId] [int] NOT NULL,
	[userGroupId] [int] NOT NULL,
 CONSTRAINT [PK_user2userGroup] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[userGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserData]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserData](
	[key] [uniqueidentifier] NOT NULL,
	[userKey] [uniqueidentifier] NOT NULL,
	[group] [nvarchar](255) NOT NULL,
	[identifier] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_umbracoUserDataDto] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [uniqueidentifier] NOT NULL,
	[userGroupAlias] [nvarchar](200) NOT NULL,
	[userGroupName] [nvarchar](200) NOT NULL,
	[userGroupDefaultPermissions] [nvarchar](50) NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[icon] [nvarchar](255) NULL,
	[hasAccessToAllLanguages] [bit] NOT NULL,
	[startContentId] [int] NULL,
	[startMediaId] [int] NULL,
 CONSTRAINT [PK_umbracoUserGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2App]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2App](
	[userGroupId] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_userGroup2App] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[app] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2GranularPermission]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2GranularPermission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userGroupKey] [uniqueidentifier] NOT NULL,
	[uniqueId] [uniqueidentifier] NULL,
	[permission] [nvarchar](255) NOT NULL,
	[context] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUserGroup2GranularPermissionDto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2Language]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2Language](
	[userGroupId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
 CONSTRAINT [PK_userGroup2language] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2Permission]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userGroupKey] [uniqueidentifier] NOT NULL,
	[permission] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_userGroup2Permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserLogin]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserLogin](
	[sessionId] [uniqueidentifier] NOT NULL,
	[userId] [int] NOT NULL,
	[loggedInUtc] [datetime] NOT NULL,
	[lastValidatedUtc] [datetime] NOT NULL,
	[loggedOutUtc] [datetime] NULL,
	[ipAddress] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoUserLogin] PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserStartNode]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserStartNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[startNode] [int] NOT NULL,
	[startNodeType] [int] NOT NULL,
 CONSTRAINT [PK_userStartNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhook]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhook](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [uniqueidentifier] NOT NULL,
	[url] [nvarchar](max) NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoWebhook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhook2ContentTypeKeys]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhook2ContentTypeKeys](
	[webhookId] [int] NOT NULL,
	[entityKey] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_webhookEntityKey2Webhook] PRIMARY KEY CLUSTERED 
(
	[webhookId] ASC,
	[entityKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhook2Events]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhook2Events](
	[webhookId] [int] NOT NULL,
	[event] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_webhookEvent2WebhookDto] PRIMARY KEY CLUSTERED 
(
	[webhookId] ASC,
	[event] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhook2Headers]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhook2Headers](
	[webhookId] [int] NOT NULL,
	[Key] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_heaeders2WebhookDto] PRIMARY KEY CLUSTERED 
(
	[webhookId] ASC,
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhookLog]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhookLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[webhookKey] [uniqueidentifier] NOT NULL,
	[key] [uniqueidentifier] NOT NULL,
	[statusCode] [nvarchar](255) NOT NULL,
	[date] [datetime] NOT NULL,
	[url] [nvarchar](max) NOT NULL,
	[eventAlias] [nvarchar](255) NOT NULL,
	[retryCount] [int] NOT NULL,
	[requestHeaders] [nvarchar](max) NOT NULL,
	[requestBody] [nvarchar](max) NOT NULL,
	[responseHeaders] [nvarchar](max) NOT NULL,
	[responseBody] [nvarchar](max) NOT NULL,
	[exceptionOccured] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoWebhookLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoWebhookRequest]    Script Date: 2025/02/20 00:08:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoWebhookRequest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[webhookKey] [uniqueidentifier] NOT NULL,
	[eventName] [nvarchar](255) NOT NULL,
	[requestObject] [nvarchar](max) NULL,
	[retryCount] [int] NOT NULL,
 CONSTRAINT [PK_umbracoWebhookRequest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230622184303_InitialCreate', N'9.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230807654321_AddOpenIddict', N'9.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240403140654_UpdateOpenIddictToV5', N'9.0.0')
GO
SET IDENTITY_INSERT [dbo].[cmsContentType] ON 

INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (531, 1044, N'Member', N'icon-user', N'icon-user', NULL, NULL, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (532, 1031, N'Folder', N'icon-folder', N'icon-folder', NULL, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (533, 1032, N'Image', N'icon-picture', N'icon-picture', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (534, 1033, N'File', N'icon-document', N'icon-document', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (540, 1034, N'umbracoMediaVideo', N'icon-video', N'icon-video', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (541, 1035, N'umbracoMediaAudio', N'icon-audio-lines', N'icon-audio-lines', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (542, 1036, N'umbracoMediaArticle', N'icon-article', N'icon-article', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (543, 1037, N'umbracoMediaVectorGraphics', N'icon-origami', N'icon-origami', NULL, NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (545, 1065, N'site', N'icon-sprout', N'folder.png', N'Use this for creating the site root', NULL, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (546, 1066, N'heroBlock', N'icon-plugin', N'folder.png', N'This is a hero block component', NULL, 1, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (547, 1067, N'heroCtaBlock', N'icon-plugin', N'folder.png', N'This is the CTA block', NULL, 1, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (548, 1068, N'rteBlock', N'icon-plugin', N'folder.png', N'This is the RTE block', NULL, 1, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (549, 1072, N'generalContentPage', N'icon-document-html', N'folder.png', N'This is for creating a general content page', NULL, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [listView], [isElement], [allowAtRoot], [variations]) VALUES (550, 1075, N'contactUsPage', N'icon-document-html', N'folder.png', N'This is for creating the contact us page', NULL, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1034, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1035, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1036, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1037, 0)
GO
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1072, 1071, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1075, 1074, 1)
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON 

INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (6, 1043, 1032, 3, N'umbracoFile', N'Image', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'b646ca8f-e469-4fc2-a48a-d4dc1aa64a53')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (7, -91, 1032, 3, N'umbracoWidth', N'Width', 0, 0, NULL, NULL, NULL, N'in pixels', 0, 0, N'a68d453b-1f62-44f4-9f71-0b6bbd43c355')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (8, -91, 1032, 3, N'umbracoHeight', N'Height', 0, 0, NULL, NULL, NULL, N'in pixels', 0, 0, N'854087f6-648b-40ed-bc98-b8a9789e80b9')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (9, -93, 1032, 3, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'bd4c5ace-26e3-4a8b-af1a-e8206a35fa07')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'f7786fe8-724a-4ed0-b244-72546db32a92')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'File', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'a0fb68f3-f427-47a6-afce-536ffa5b64e9')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'3531c0a3-4e0a-4324-a621-b9d3822b071f')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (26, -93, 1033, 4, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'f9527050-59bc-43e4-8fa8-1658d1319ff5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (28, -89, 1044, 11, N'umbracoMemberComments', N'Comments', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'70f24c26-1c0e-4053-bd8e-e9e6e4ec4c01')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (40, -100, 1034, 52, N'umbracoFile', N'Video', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'bed8ab97-d85f-44d2-a8b9-aef6893f9610')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (41, -92, 1034, 52, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'edd2b3fd-1e57-4e57-935e-096defccdc9b')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (42, -93, 1034, 52, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'180eeecf-1f00-409e-8234-bba967e08b0a')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (43, -101, 1035, 53, N'umbracoFile', N'Audio', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'1f48d730-f174-4684-afad-a335e59d84a0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (44, -92, 1035, 53, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'1bee433f-a21a-4031-8e03-af01bb8d2de9')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (45, -93, 1035, 53, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'3cbf538a-29ab-4317-a9eb-bbcdf1a54260')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (46, -102, 1036, 54, N'umbracoFile', N'Article', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'e5c8c2d0-2d82-4f01-b53a-45a1d1cbf19c')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (47, -92, 1036, 54, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'ef1b4af7-36de-45eb-8c18-a2de07319227')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (48, -93, 1036, 54, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'aab7d00c-7209-4337-be3f-a4421c8d79a0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (49, -103, 1037, 55, N'umbracoFile', N'Vector Graphics', 0, 1, NULL, NULL, NULL, NULL, 0, 0, N'e2a2bdf2-971b-483e-95a1-4104cc06af26')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (50, -92, 1037, 55, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, NULL, NULL, 0, 0, N'0f25a89e-2eb7-49bc-a7b4-759a7e4c69f2')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (51, -93, 1037, 55, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, NULL, N'in bytes', 0, 0, N'09a07aff-861d-4769-a2b0-c165ebd43d39')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (60, -89, 1065, 59, N'metaKeywords', N'Meta Keywords', 0, 0, NULL, NULL, NULL, N'Meta keywords of the site', 0, 0, N'7b4ad6ed-a6bd-4251-8676-46dcc48f9283')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (61, -89, 1065, 59, N'metaDescription', N'Meta Description', 1, 0, NULL, NULL, NULL, N'Meta description of the site', 0, 0, N'43d5e9a8-4a23-405f-be12-97177b77a5b6')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (62, 1050, 1065, 60, N'quickLinks', N'Quick Links', 0, 0, NULL, NULL, NULL, N'Site quick links', 0, 0, N'4311355a-0945-4994-b412-0be7f07fb773')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (63, -88, 1066, 61, N'heroTitle', N'Title', 0, 0, NULL, NULL, NULL, N'This is the title of the hero block', 0, 0, N'6ab9312f-6d6d-4f94-843d-b140e2228aec')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (64, -89, 1066, 61, N'heroDescription', N'Description', 1, 0, NULL, NULL, NULL, N'This is the description ', 0, 0, N'57891024-c71a-4420-8fb8-51e059d06eed')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (65, 1051, 1066, 61, N'heroImage', N'Image', 2, 0, NULL, NULL, NULL, N'This is the hero image', 0, 0, N'ef0c3085-fa72-4d59-90e6-dce818111304')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (66, -88, 1067, 62, N'ctaTitle', N'Title', 0, 0, NULL, NULL, NULL, N'This is the title of the CTA', 0, 0, N'261bdf23-0d71-4b79-845d-3dc182765e7e')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (67, -89, 1067, 62, N'ctaDescription', N'Description', 1, 0, NULL, NULL, NULL, N'This is the CTA description', 0, 0, N'cc447b04-c135-4857-92f0-8351433c32a5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (68, 1051, 1067, 62, N'ctaImage', N'Image', 2, 0, NULL, NULL, NULL, N'This is the CTA image', 0, 0, N'62822e2d-409e-4745-824e-d76b1ca67539')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (69, -87, 1068, 63, N'rteContent', N'Rich Text Editor', 0, 0, NULL, NULL, NULL, N'This is the RTE content', 0, 0, N'89d502cd-e6d8-4aac-aab3-b1dee6b00561')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (70, 1069, 1072, 64, N'pageHeader', N'Page Header', 0, 0, NULL, NULL, NULL, N'', 0, 0, N'00735a9e-81ad-4837-a2b4-7918fe0348bf')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (71, 1070, 1072, 64, N'mainContent', N'Main Content', 1, 0, NULL, NULL, NULL, N'', 0, 0, N'2ae99a12-6c2b-4535-8a32-9a2afd68a3f5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (72, 1073, 1075, 65, N'pageHeader', N'Page Header', 0, 0, NULL, NULL, NULL, N'', 0, 0, N'fc904280-798b-4ae3-b10a-885f98b5fe68')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [mandatoryMessage], [validationRegExp], [validationRegExpMessage], [Description], [labelOnTop], [variations], [UniqueID]) VALUES (73, 1070, 1075, 65, N'mainContent', N'Main Content', 1, 0, NULL, NULL, NULL, N'', 0, 0, N'b0691329-4be2-43e7-9603-62d74496164c')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON 

INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (3, N'79ed4d07-254a-42cf-8fa9-ebe1c116a596', 1032, 0, N'Image', N'image', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (4, N'50899f9c-023a-4466-b623-aba9049885fe', 1033, 0, N'File', N'file', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (11, N'0756729d-d665-46e3-b84a-37aceaa614f8', 1044, 0, N'Membership', N'membership', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (52, N'2f0a61b6-cf92-4ff4-b437-751ab35eb254', 1034, 0, N'Video', N'video', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (53, N'335fb495-0a87-4e82-b902-30eb367b767c', 1035, 0, N'Audio', N'audio', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (54, N'9af3bd65-f687-4453-9518-5f180d1898ec', 1036, 0, N'Article', N'article', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (55, N'f199b4d7-9e84-439f-8531-f87d9af37711', 1037, 0, N'Vector Graphics', N'vectorGraphics', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (59, N'509df9da-3d79-4409-b282-b05fa3eeb4dd', 1065, 0, N'Header Settings', N'headerSettings', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (60, N'0c6b3008-29f9-4d8f-a7e4-d3d8a5438a83', 1065, 0, N'Footer Settings', N'footerSettings', 1)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (61, N'30b13642-afc2-47af-b2a7-39d44f1c04b1', 1066, 0, N'Content', N'content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (62, N'be8472c6-cc8e-4be9-a095-2725bbb076b9', 1067, 0, N'Content', N'content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (63, N'c97db495-863c-4e1b-86b9-c8b3fd3aea56', 1068, 0, N'Content', N'content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (64, N'85a75aae-74b9-461c-b2fe-13f639499586', 1072, 0, N'Content', N'content', 0)
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [uniqueID], [contenttypeNodeId], [type], [text], [alias], [sortorder]) VALUES (65, N'a1b126fd-2c23-40b2-ad64-89fb0bfbed37', 1075, 0, N'Content', N'content', 0)
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON 

INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (2, 1071, N'generalContentPage')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (3, 1074, N'contactUsPage')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoAudit] ON 

INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1, 0, N'User "SYSTEM" ', N'::1', CAST(N'2025-01-30T18:15:56.363' AS DateTime), -1, N'User "Smith Chonco" <hemeltonsmith@gmail.com>', N'umbraco/user/save', N'updating Email, Name, Username, UpdateDate, SecurityStamp')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2, 0, N'User "SYSTEM" ', N'::1', CAST(N'2025-01-30T18:15:56.893' AS DateTime), -1, N'User "Smith Chonco" <hemeltonsmith@gmail.com>', N'umbraco/user/save', N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (3, 0, N'User "SYSTEM" ', N'::1', CAST(N'2025-01-30T18:16:14.280' AS DateTime), -1, N'User "Smith Chonco" <hemeltonsmith@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (4, 0, N'User "SYSTEM" ', N'::1', CAST(N'2025-01-30T18:16:14.347' AS DateTime), -1, N'User "Smith Chonco" <hemeltonsmith@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (5, 0, N'User "SYSTEM" ', N'::1', CAST(N'2025-02-19T21:43:37.853' AS DateTime), -1, N'User "Smith Chonco" <hemeltonsmith@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (6, 0, N'User "SYSTEM" ', N'::1', CAST(N'2025-02-19T21:43:38.270' AS DateTime), -1, N'User "Smith Chonco" <hemeltonsmith@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, SecurityStamp, UpdateDate')
SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] ON 

INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1, CAST(N'2025-01-30T18:16:04.620' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (2, CAST(N'2025-01-30T18:16:14.537' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (3, CAST(N'2025-01-30T18:29:20.897' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1055,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4, CAST(N'2025-01-30T18:29:23.720' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1055,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (5, CAST(N'2025-01-30T18:37:15.483' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1056,\u0022key\u0022:\u0022c8d745ba-f175-4488-8274-35150d5968d4\u0022,\u0022changeTypes\u0022:\u0022RefreshBranch\u0022,\u0022blueprint\u0022:false}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (6, CAST(N'2025-01-30T18:43:02.903' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1058,\u0022key\u0022:\u00224058e564-6ea7-4257-9297-66db2674d039\u0022,\u0022changeTypes\u0022:\u0022RefreshBranch\u0022,\u0022blueprint\u0022:false}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (7, CAST(N'2025-01-30T18:51:47.393' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","JsonIds":"[1062]","JsonIdCount":1}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (8, CAST(N'2025-01-30T18:53:48.853' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1063,\u0022key\u0022:\u00227c026ead-798e-4196-9570-5293e222563f\u0022,\u0022changeTypes\u0022:\u0022RefreshBranch\u0022,\u0022blueprint\u0022:false}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (9, CAST(N'2025-01-30T18:55:18.747' AS DateTime), N'[{"RefreshType":5,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","IntId":1062,"JsonIdCount":1}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (10, CAST(N'2025-01-30T19:13:27.770' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1064,\u0022key\u0022:\u00225f69f08b-c2a4-40a1-9d9c-12e7bffc589b\u0022,\u0022removed\u0022:false}]"},{"RefreshType":4,"RefresherId":"d28a1dbb-2308-4918-9a92-2f8689b6cbfe","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1064,\u0022key\u0022:\u00225f69f08b-c2a4-40a1-9d9c-12e7bffc589b\u0022,\u0022removed\u0022:false}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (11, CAST(N'2025-01-30T19:17:57.303' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1055,\u0022changeTypes\u0022:\u0022RefreshMain\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (12, CAST(N'2025-01-30T19:28:33.003' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1065,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (13, CAST(N'2025-01-30T19:28:41.857' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1065,\u0022changeTypes\u0022:\u0022RefreshOther\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P28088/D1] 8241E52B65CB4960B152E2A42956C7E2', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (14, CAST(N'2025-01-30T19:41:37.077' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1056,\u0022key\u0022:\u0022c8d745ba-f175-4488-8274-35150d5968d4\u0022,\u0022changeTypes\u0022:\u0022Remove\u0022,\u0022blueprint\u0022:false},{\u0022id\u0022:1058,\u0022key\u0022:\u00224058e564-6ea7-4257-9297-66db2674d039\u0022,\u0022changeTypes\u0022:\u0022Remove\u0022,\u0022blueprint\u0022:false},{\u0022id\u0022:1063,\u0022key\u0022:\u00227c026ead-798e-4196-9570-5293e222563f\u0022,\u0022changeTypes\u0022:\u0022Remove\u0022,\u0022blueprint\u0022:false}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1055,\u0022changeTypes\u0022:\u0022Remove\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (15, CAST(N'2025-01-30T19:47:56.020' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1066,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (16, CAST(N'2025-01-30T19:50:18.810' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1067,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (17, CAST(N'2025-01-30T19:52:11.070' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1068,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (18, CAST(N'2025-01-30T20:08:11.030' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1069,\u0022key\u0022:\u0022895f497e-1542-4107-bc19-75ca3eba22e5\u0022,\u0022removed\u0022:false}]"},{"RefreshType":4,"RefresherId":"d28a1dbb-2308-4918-9a92-2f8689b6cbfe","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1069,\u0022key\u0022:\u0022895f497e-1542-4107-bc19-75ca3eba22e5\u0022,\u0022removed\u0022:false}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (19, CAST(N'2025-01-30T20:09:14.173' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1070,\u0022key\u0022:\u00223d98944a-d4e4-445f-ab6c-505d651713e4\u0022,\u0022removed\u0022:false}]"},{"RefreshType":4,"RefresherId":"d28a1dbb-2308-4918-9a92-2f8689b6cbfe","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1070,\u0022key\u0022:\u00223d98944a-d4e4-445f-ab6c-505d651713e4\u0022,\u0022removed\u0022:false}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (20, CAST(N'2025-01-30T20:09:35.997' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","JsonIds":"[1071]","JsonIdCount":1}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (21, CAST(N'2025-01-30T20:09:36.223' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1072,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (22, CAST(N'2025-01-30T20:11:47.740' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1073,\u0022key\u0022:\u0022f8337711-3318-46ba-97c6-571da04892a0\u0022,\u0022removed\u0022:false}]"},{"RefreshType":4,"RefresherId":"d28a1dbb-2308-4918-9a92-2f8689b6cbfe","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:1073,\u0022key\u0022:\u0022f8337711-3318-46ba-97c6-571da04892a0\u0022,\u0022removed\u0022:false}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (23, CAST(N'2025-01-30T20:12:43.723' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","JsonIds":"[1074]","JsonIdCount":1}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (24, CAST(N'2025-01-30T20:12:43.957' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","JsonIdCount":1,"JsonPayload":"[{\u0022itemType\u0022:\u0022IContentType\u0022,\u0022id\u0022:1075,\u0022changeTypes\u0022:\u0022Create\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P44644/D1] 07E76C15FB974CA28910DE22D574A82B', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (25, CAST(N'2025-02-19T21:43:40.233' AS DateTime), N'[{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"},{"RefreshType":4,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","JsonIdCount":1,"JsonPayload":"[{\u0022id\u0022:-1,\u0022key\u0022:\u00221e70f841-c261-413b-abb2-2d68cdb96094\u0022}]"}]', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219 [P18028/D1] 6FAD48CA62D545F9AAC98CEDC14C5071', 2)
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF
GO
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1065, 0, NULL, NULL, CAST(N'2025-01-30T21:28:41.530' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1066, 0, NULL, NULL, CAST(N'2025-01-30T21:47:55.887' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1067, 0, NULL, NULL, CAST(N'2025-01-30T21:50:18.707' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1068, 0, NULL, NULL, CAST(N'2025-01-30T21:52:10.967' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1072, 0, NULL, NULL, CAST(N'2025-01-30T22:09:36.120' AS DateTime))
INSERT [dbo].[umbracoContentVersionCleanupPolicy] ([contentTypeId], [preventCleanup], [keepAllVersionsNewerThanDays], [keepLatestVersionPerDayForDays], [updated]) VALUES (1075, 0, NULL, NULL, CAST(N'2025-01-30T22:12:43.843' AS DateTime))
GO
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-103, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', N'{"fileExtensions":["svg"]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-102, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', N'{"fileExtensions":["pdf","docx","doc"]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-101, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', N'{"fileExtensions":["mp3","weba","oga","opus"]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-100, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', N'{"fileExtensions":["mp4","webm","ogv"]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-99, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Decimal', N'{"umbracoDataValueType":"DECIMAL"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-98, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Date', N'{"umbracoDataValueType":"TIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-96, N'Umbraco.ListView', N'Umb.PropertyEditorUi.Collection', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","collectionView": "Umb.CollectionView.Media.Grid","icon": "icon-thumbnails-small", "isSystem": true,"selected": true},{"name": "List","collectionView": "Umb.CollectionView.Media.Table", "icon": "icon-list", "isSystem": true, "selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":true},{"alias":"creator","header":"Updated by","isSystem":true}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-95, N'Umbraco.ListView', N'Umb.PropertyEditorUi.Collection', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","collectionView": "Umb.CollectionView.Document.Grid","icon": "icon-thumbnails-small", "isSystem": true,"selected": true},{"name": "List","collectionView": "Umb.CollectionView.Document.Table", "icon": "icon-list", "isSystem": true, "selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":true},{"alias":"creator","header":"Updated by","isSystem":true}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-94, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Date', N'{"umbracoDataValueType":"DATETIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-93, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Nvarchar', N'{"umbracoDataValueType":"BIGINT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-92, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Nvarchar', N'{"umbracoDataValueType":"STRING"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-91, N'Umbraco.Label', N'Umb.PropertyEditorUi.Label', N'Integer', N'{"umbracoDataValueType":"INT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-90, N'Umbraco.UploadField', N'Umb.PropertyEditorUi.UploadField', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-89, N'Umbraco.TextArea', N'Umb.PropertyEditorUi.TextArea', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-88, N'Umbraco.TextBox', N'Umb.PropertyEditorUi.TextBox', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-87, N'Umbraco.RichText', N'Umb.PropertyEditorUi.Tiptap', N'Ntext', N'{"extensions": ["Umb.Tiptap.Embed", "Umb.Tiptap.Link", "Umb.Tiptap.Figure", "Umb.Tiptap.Image", "Umb.Tiptap.Subscript", "Umb.Tiptap.Superscript", "Umb.Tiptap.Table", "Umb.Tiptap.Underline", "Umb.Tiptap.TextAlign", "Umb.Tiptap.MediaUpload"], "maxImageSize": 500, "overlaySize": "medium", "toolbar": [[["Umb.Tiptap.Toolbar.SourceEditor"], ["Umb.Tiptap.Toolbar.Bold", "Umb.Tiptap.Toolbar.Italic", "Umb.Tiptap.Toolbar.Underline"], ["Umb.Tiptap.Toolbar.TextAlignLeft", "Umb.Tiptap.Toolbar.TextAlignCenter", "Umb.Tiptap.Toolbar.TextAlignRight"], ["Umb.Tiptap.Toolbar.BulletList", "Umb.Tiptap.Toolbar.OrderedList"], ["Umb.Tiptap.Toolbar.Blockquote", "Umb.Tiptap.Toolbar.HorizontalRule"], ["Umb.Tiptap.Toolbar.Link", "Umb.Tiptap.Toolbar.Unlink"], ["Umb.Tiptap.Toolbar.MediaPicker", "Umb.Tiptap.Toolbar.EmbeddedMedia"]]]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-51, N'Umbraco.Integer', N'Umb.PropertyEditorUi.Integer', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-49, N'Umbraco.TrueFalse', N'Umb.PropertyEditorUi.Toggle', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-43, N'Umbraco.CheckBoxList', N'Umb.PropertyEditorUi.CheckBoxList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-42, N'Umbraco.DropDown.Flexible', N'Umb.PropertyEditorUi.Dropdown', N'Nvarchar', N'{"multiple":true}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-41, N'Umbraco.DateTime', N'Umb.PropertyEditorUi.DatePicker', N'Date', N'{"format":"YYYY-MM-DD"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-40, N'Umbraco.RadioButtonList', N'Umb.PropertyEditorUi.RadioButtonList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-39, N'Umbraco.DropDown.Flexible', N'Umb.PropertyEditorUi.Dropdown', N'Nvarchar', N'{"multiple":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-37, N'Umbraco.ColorPicker', N'Umb.PropertyEditorUi.ColorPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (-36, N'Umbraco.DateTime', N'Umb.PropertyEditorUi.DatePicker', N'Date', N'{"format":"YYYY-MM-DD HH:mm:ss"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1041, N'Umbraco.Tags', N'Umb.PropertyEditorUi.Tags', N'Ntext', N'{"group":"default", "storageType":"Json"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1043, N'Umbraco.ImageCropper', N'Umb.PropertyEditorUi.ImageCropper', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1046, N'Umbraco.ContentPicker', N'Umb.PropertyEditorUi.DocumentPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1047, N'Umbraco.MemberPicker', N'Umb.PropertyEditorUi.MemberPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1050, N'Umbraco.MultiUrlPicker', N'Umb.PropertyEditorUi.MultiUrlPicker', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1051, N'Umbraco.MediaPicker3', N'Umb.PropertyEditorUi.MediaPicker', N'Ntext', N'{"multiple": false, "validationLimit":{"min":0,"max":1}}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1052, N'Umbraco.MediaPicker3', N'Umb.PropertyEditorUi.MediaPicker', N'Ntext', N'{"multiple": true}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1053, N'Umbraco.MediaPicker3', N'Umb.PropertyEditorUi.MediaPicker', N'Ntext', N'{"filter":"cc07b313-0843-4aa8-bbda-871c8da728c8", "multiple": false, "validationLimit":{"min":0,"max":1}}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1054, N'Umbraco.MediaPicker3', N'Umb.PropertyEditorUi.MediaPicker', N'Ntext', N'{"filter":"cc07b313-0843-4aa8-bbda-871c8da728c8", "multiple": true}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1064, N'Umbraco.MultiUrlPicker', N'Umb.PropertyEditorUi.MultiUrlPicker', N'Ntext', N'{"minNumber":1,"maxNumber":1}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1069, N'Umbraco.BlockGrid', N'Umb.PropertyEditorUi.BlockGrid', N'Ntext', N'{"gridColumns":12,"blocks":[{"contentElementTypeKey":"a49ad1e4-e1fd-4abb-ba47-04499b5296cf","allowAtRoot":true,"allowInAreas":true},{"contentElementTypeKey":"9e4484e1-6ede-4d93-a482-0bbc1dc10bd0","allowAtRoot":true,"allowInAreas":true}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1070, N'Umbraco.BlockGrid', N'Umb.PropertyEditorUi.BlockGrid', N'Ntext', N'{"gridColumns":12,"blocks":[{"contentElementTypeKey":"72e0b7e0-341b-4499-9340-8d57c90c9bcb","allowAtRoot":true,"allowInAreas":true}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [propertyEditorUiAlias], [dbType], [config]) VALUES (1073, N'Umbraco.BlockGrid', N'Umb.PropertyEditorUi.BlockGrid', N'Ntext', N'{"gridColumns":12,"blocks":[{"contentElementTypeKey":"a49ad1e4-e1fd-4abb-ba47-04499b5296cf","allowAtRoot":true,"allowInAreas":true},{"contentElementTypeKey":"9e4484e1-6ede-4d93-a482-0bbc1dc10bd0","allowAtRoot":true,"allowInAreas":true}]}')
GO
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Core.Upgrader.State+Umbraco.Core', N'{7B51B4DE-5574-4484-993E-05D12D9ED703}', CAST(N'2025-01-30T20:15:50.627' AS DateTime))
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Core.Upgrader.State+Umbraco.Core.Premigrations', N'{0F49E1A4-AFD8-4673-A91B-F64E78C48174}', CAST(N'2025-01-30T20:15:50.657' AS DateTime))
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Web.PublishedCache.NuCache.Serializer', N'MessagePack', CAST(N'2025-01-30T20:16:04.587' AS DateTime))
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'UmbracoAnalyticsLevel', N'Detailed', CAST(N'2025-01-30T20:15:56.960' AS DateTime))
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'UmbracoUrlGeneration', N'DefaultUrlSegmentProvider', CAST(N'2025-01-30T20:16:03.800' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON 

INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName], [isDefaultVariantLang], [mandatory], [fallbackLanguageId]) VALUES (1, N'en-US', N'English (United States)', 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
GO
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-1000, 1, N'MainDom')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-343, 1, N'WebhookLogs')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-342, 1, N'WebhookRequest')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-341, 1, N'ScheduledPublishing')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-340, 1, N'Languages')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-339, -1, N'KeyValues')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-338, 1, N'Domains')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-337, 1, N'MemberTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-336, 1, N'MediaTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-335, 1, N'MemberTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-334, 1, N'MediaTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-333, -1, N'ContentTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-332, -1, N'ContentTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-331, -1, N'Servers')
GO
SET IDENTITY_INSERT [dbo].[umbracoLog] ON 

INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1, -1, 1055, N'DocumentType', CAST(N'2025-01-30T20:29:20.683' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (2, -1, 1055, N'DocumentType', CAST(N'2025-01-30T20:29:23.520' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (3, -1, 1056, N'Document', CAST(N'2025-01-30T20:32:07.337' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (4, -1, 1056, N'Document', CAST(N'2025-01-30T20:33:54.997' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (5, -1, 1056, N'Document', CAST(N'2025-01-30T20:35:47.337' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (6, -1, 1056, N'Document', CAST(N'2025-01-30T20:37:15.010' AS DateTime), N'Move', N'Moved to recycle bin', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (7, -1, 1056, N'Document', CAST(N'2025-01-30T20:37:15.477' AS DateTime), N'Delete', N'Trashed content with Id: 1056 related to original parent content with Id: -1', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (8, -1, 1058, N'Document', CAST(N'2025-01-30T20:37:38.377' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (9, -1, 1058, N'Document', CAST(N'2025-01-30T20:43:02.753' AS DateTime), N'Move', N'Moved to recycle bin', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (10, -1, 1058, N'Document', CAST(N'2025-01-30T20:43:02.903' AS DateTime), N'Delete', N'Trashed content with Id: 1058 related to original parent content with Id: -1', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (11, -1, 1062, N'Template', CAST(N'2025-01-30T20:51:47.373' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (12, -1, 1063, N'Document', CAST(N'2025-01-30T20:52:38.953' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (13, -1, 1063, N'Document', CAST(N'2025-01-30T20:53:48.557' AS DateTime), N'Move', N'Moved to recycle bin', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (14, -1, 1063, N'Document', CAST(N'2025-01-30T20:53:48.850' AS DateTime), N'Delete', N'Trashed content with Id: 1063 related to original parent content with Id: -1', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (15, -1, 1062, N'Template', CAST(N'2025-01-30T20:55:18.730' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (16, -1, 1064, N'DataType', CAST(N'2025-01-30T21:13:27.657' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (17, -1, 1055, N'DocumentType', CAST(N'2025-01-30T21:17:57.197' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (18, -1, 1065, N'DocumentType', CAST(N'2025-01-30T21:28:32.913' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (19, -1, 1065, N'DocumentType', CAST(N'2025-01-30T21:28:41.763' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (20, -1, -1, N'Document', CAST(N'2025-01-30T21:41:33.210' AS DateTime), N'Delete', N'Delete content of type 1055', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (21, -1, 1055, N'DocumentType', CAST(N'2025-01-30T21:41:33.367' AS DateTime), N'Delete', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (22, -1, 1066, N'DocumentType', CAST(N'2025-01-30T21:47:55.903' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (23, -1, 1067, N'DocumentType', CAST(N'2025-01-30T21:50:18.713' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (24, -1, 1068, N'DocumentType', CAST(N'2025-01-30T21:52:10.973' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (25, -1, 1069, N'DataType', CAST(N'2025-01-30T22:08:10.957' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (26, -1, 1070, N'DataType', CAST(N'2025-01-30T22:09:14.153' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (27, -1, 1071, N'Template', CAST(N'2025-01-30T22:09:35.983' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (28, -1, 1072, N'DocumentType', CAST(N'2025-01-30T22:09:36.127' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (29, -1, 1073, N'DataType', CAST(N'2025-01-30T22:11:47.720' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (30, -1, 1074, N'Template', CAST(N'2025-01-30T22:12:43.717' AS DateTime), N'New', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (31, -1, 1075, N'DocumentType', CAST(N'2025-01-30T22:12:43.850' AS DateTime), N'Save', NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoLogViewerQuery] ON 

INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (1, N'Find all logs where the Level is NOT Verbose and NOT Debug', N'Not(@Level=''Verbose'') and Not(@Level=''Debug'')')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (2, N'Find all logs that has an exception property (Warning, Error & Fatal with Exceptions)', N'Has(@Exception)')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (3, N'Find all logs that have the property ''Duration''', N'Has(Duration)')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (4, N'Find all logs that have the property ''Duration'' and the duration is greater than 1000ms', N'Has(Duration) and Duration > 1000')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (5, N'Find all logs that are from the namespace ''Umbraco.Core''', N'StartsWith(SourceContext, ''Umbraco.Core'')')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (6, N'Find all logs that use a specific log message template', N'@MessageTemplate = ''[Timing {TimingId}] {EndMessage} ({TimingDuration}ms)''')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (7, N'Find logs where one of the items in the SortedComponentTypes property array is equal to', N'SortedComponentTypes[?] = ''Umbraco.Web.Search.ExamineComponent''')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (8, N'Find logs where one of the items in the SortedComponentTypes property array contains', N'Contains(SortedComponentTypes[?], ''DatabaseServer'')')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (9, N'Find all logs that the message has localhost in it with SQL like', N'@Message like ''%localhost%''')
INSERT [dbo].[umbracoLogViewerQuery] ([id], [name], [query]) VALUES (10, N'Find all logs that the message that starts with ''end'' in it with SQL like', N'@Message like ''end%''')
SET IDENTITY_INSERT [dbo].[umbracoLogViewerQuery] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoNode] ON 

INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-1, N'916724a5-173d-4619-b97e-b9de133dd6f5', -1, 0, N'-1', 0, 0, -1, N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(N'2025-01-30T20:15:48.900' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1044, N'd59be02f-1df9-4228-aa1e-01917d806cda', -1, 1, N'-1,1044', 0, 0, -1, N'Member', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(N'2025-01-30T20:15:49.017' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-21, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', -1, 0, N'-1,-21', 0, 0, -1, N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(N'2025-01-30T20:15:48.923' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1071, N'43e0ba3f-25c8-41d0-8849-c0c19b4b7aae', -1, 1, N'-1,1071', 0, 0, NULL, N'General Content Page', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2025-01-30T22:09:35.947' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1074, N'975f0ee8-6118-4d02-ad93-8cb05e5db477', -1, 1, N'-1,1074', 0, 0, NULL, N'Contact Us Page', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2025-01-30T22:12:43.680' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1031, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', -1, 1, N'-1,1031', 2, 0, -1, N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2025-01-30T20:15:49.010' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1032, N'cc07b313-0843-4aa8-bbda-871c8da728c8', -1, 1, N'-1,1032', 2, 0, -1, N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2025-01-30T20:15:49.013' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1033, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', -1, 1, N'-1,1033', 2, 0, -1, N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2025-01-30T20:15:49.013' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1034, N'f6c515bb-653c-4bdc-821c-987729ebe327', -1, 1, N'-1,1034', 2, 0, -1, N'Video', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2025-01-30T20:15:49.013' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1035, N'a5ddeee0-8fd8-4cee-a658-6f1fcdb00de3', -1, 1, N'-1,1035', 2, 0, -1, N'Audio', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2025-01-30T20:15:49.013' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1036, N'a43e3414-9599-4230-a7d3-943a21b20122', -1, 1, N'-1,1036', 2, 0, -1, N'Article', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2025-01-30T20:15:49.013' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1037, N'c4b1efcf-a9d5-41c4-9621-e9d273b52a9c', -1, 1, N'-1,1037', 2, 0, -1, N'Vector Graphics (SVG)', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2025-01-30T20:15:49.017' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1065, N'9fc8d601-2bad-4a4f-9c76-e18df24a16fd', -1, 1, N'-1,1065', 1, 0, -1, N'Site', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2025-01-30T21:28:32.847' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1066, N'a49ad1e4-e1fd-4abb-ba47-04499b5296cf', -1, 1, N'-1,1066', 1, 0, -1, N'Hero Block', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2025-01-30T21:47:55.747' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1067, N'9e4484e1-6ede-4d93-a482-0bbc1dc10bd0', -1, 1, N'-1,1067', 2, 0, -1, N'Hero CTA Block', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2025-01-30T21:50:18.653' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1068, N'72e0b7e0-341b-4499-9340-8d57c90c9bcb', -1, 1, N'-1,1068', 3, 0, -1, N'RTE Block', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2025-01-30T21:52:10.900' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1072, N'89a4e8cc-1c8c-4f4f-824d-f1fc28f4fe07', -1, 1, N'-1,1072', 4, 0, -1, N'General Content Page', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2025-01-30T22:09:36.070' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1075, N'214ef7b9-5aaa-4081-a399-709566213b9f', -1, 1, N'-1,1075', 5, 0, -1, N'Contact Us Page', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2025-01-30T22:12:43.787' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-20, N'0f582a79-1e41-4cf0-bfa0-76340651891a', -1, 0, N'-1,-20', 0, 0, -1, N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(N'2025-01-30T20:15:48.917' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-103, N'215cb418-2153-4429-9aef-8c0f0041191b', -1, 1, N'-1,-103', 38, 0, -1, N'Upload Vector Graphics', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.933' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-102, N'bc1e266c-dac4-4164-bf08-8a1ec6a7143d', -1, 1, N'-1,-102', 37, 0, -1, N'Upload Article', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.933' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-101, N'8f430dd6-4e96-447e-9dc0-cb552c8cd1f3', -1, 1, N'-1,-101', 36, 0, -1, N'Upload Audio', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.933' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-100, N'70575fe7-9812-4396-bbe1-c81a76db71b5', -1, 1, N'-1,-100', 35, 0, -1, N'Upload Video', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.933' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-99, N'8f1ef1e1-9de4-40d3-a072-6673f631ca64', -1, 1, N'-1,-99', 39, 0, -1, N'Label (decimal)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.930' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-98, N'a97cec69-9b71-4c30-8b12-ec398860d7e8', -1, 1, N'-1,-98', 38, 0, -1, N'Label (time)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.930' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-96, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', -1, 1, N'-1,-96', 2, 0, -1, N'List View - Media', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.950' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-95, N'c0808dd3-8133-4e4b-8ce8-e2bea84a96a4', -1, 1, N'-1,-95', 2, 0, -1, N'List View - Content', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.950' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-94, N'0e9794eb-f9b5-4f20-a788-93acd233a7e4', -1, 1, N'-1,-94', 37, 0, -1, N'Label (datetime)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.927' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-93, N'930861bf-e262-4ead-a704-f99453565708', -1, 1, N'-1,-93', 36, 0, -1, N'Label (bigint)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.927' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-92, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', -1, 1, N'-1,-92', 35, 0, -1, N'Label (string)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.927' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-91, N'8e7f995c-bd81-4627-9932-c40e568ec788', -1, 1, N'-1,-91', 36, 0, -1, N'Label (integer)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.927' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-90, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', -1, 1, N'-1,-90', 34, 0, -1, N'Upload File', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.930' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-89, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', -1, 1, N'-1,-89', 33, 0, -1, N'Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.940' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-88, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', -1, 1, N'-1,-88', 32, 0, -1, N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.943' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-87, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', -1, 1, N'-1,-87', 4, 0, -1, N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.943' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-51, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', -1, 1, N'-1,-51', 2, 0, -1, N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.943' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-49, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', -1, 1, N'-1,-49', 2, 0, -1, N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.943' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-43, N'fbaf13a8-4036-41f2-93a3-974f678c312a', -1, 1, N'-1,-43', 2, 0, -1, N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.943' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-42, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', -1, 1, N'-1,-42', 2, 0, -1, N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.950' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-41, N'5046194e-4237-453c-a547-15db3a07c4e1', -1, 1, N'-1,-41', 2, 0, -1, N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.947' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-40, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', -1, 1, N'-1,-40', 2, 0, -1, N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.947' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-39, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', -1, 1, N'-1,-39', 2, 0, -1, N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.947' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-37, N'0225af17-b302-49cb-9176-b9f35cab9c17', -1, 1, N'-1,-37', 2, 0, -1, N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.950' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-36, N'e4d66c0f-b935-4200-81f0-025f7256b89a', -1, 1, N'-1,-36', 2, 0, -1, N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.950' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1041, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', -1, 1, N'-1,1041', 2, 0, -1, N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.953' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1043, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', -1, 1, N'-1,1043', 2, 0, -1, N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:48.963' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1046, N'fd1e0da5-5606-4862-b679-5d0cf3a52a59', -1, 1, N'-1,1046', 2, 0, -1, N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:49.003' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1047, N'1ea2e01f-ebd8-4ce1-8d71-6b1149e63548', -1, 1, N'-1,1047', 2, 0, -1, N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:49.003' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1050, N'b4e3535a-1753-47e2-8568-602cf8cfee6f', -1, 1, N'-1,1050', 2, 0, -1, N'Multi URL Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:49.007' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1051, N'4309a3ea-0d78-4329-a06c-c80b036af19a', -1, 1, N'-1,1051', 2, 0, -1, N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:49.007' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1052, N'1b661f40-2242-4b44-b9cb-3990ee2b13c0', -1, 1, N'-1,1052', 2, 0, -1, N'Multiple Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:49.007' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1053, N'ad9f0cf2-bda2-45d5-9ea1-a63cfc873fd3', -1, 1, N'-1,1053', 2, 0, -1, N'Image Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:49.007' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1054, N'0e63d883-b62b-4799-88c3-157f82e83ecc', -1, 1, N'-1,1054', 2, 0, -1, N'Multiple Image Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T20:15:49.010' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1064, N'5f69f08b-c2a4-40a1-9d9c-12e7bffc589b', -1, 1, N'-1,1064', 34, 0, -1, N'Home Page - Primary Call To Action - Multi URL Picker Property Editor UI', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T21:13:27.537' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1069, N'895f497e-1542-4107-bc19-75ca3eba22e5', -1, 1, N'-1,1069', 35, 0, -1, N'General Content Page - Page Header - Block Grid Property Editor UI', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T22:08:10.853' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1070, N'3d98944a-d4e4-445f-ab6c-505d651713e4', -1, 1, N'-1,1070', 36, 0, -1, N'General Content Page - Main Content - Block Grid Property Editor UI', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T22:09:14.080' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1073, N'f8337711-3318-46ba-97c6-571da04892a0', -1, 1, N'-1,1073', 37, 0, -1, N'Contact Us Page - Page Header - Block Grid Property Editor UI', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2025-01-30T22:11:47.537' AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
GO
INSERT [dbo].[umbracoOpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConcurrencyToken], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [ClientType], [ApplicationType], [JsonWebKeySet], [Settings]) VALUES (N'2603cc85-9b0e-4b2e-89bb-6d96b9f96ff1', N'umbraco-swagger', NULL, N'd361e6ee-145c-4409-980b-46d49a557a40', NULL, N'Umbraco Swagger access', NULL, N'["ept:authorization","ept:token","gt:authorization_code","rst:code"]', NULL, NULL, N'["https://localhost:44305/umbraco/swagger/oauth2-redirect.html"]', NULL, N'public', NULL, NULL, N'{"tkn_lft:act":"00:20:00"}')
INSERT [dbo].[umbracoOpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConcurrencyToken], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [ClientType], [ApplicationType], [JsonWebKeySet], [Settings]) VALUES (N'a51ecb33-3b5e-4d99-bbd8-b2abef290738', N'umbraco-back-office', NULL, N'0075072f-05a5-4d0a-ab7e-119179baf33d', NULL, N'Umbraco back-office access', NULL, N'["ept:authorization","ept:token","ept:end_session","ept:revocation","gt:authorization_code","gt:refresh_token","rst:code"]', N'["https://localhost:44305/umbraco/oauth_complete","https://localhost:44305/umbraco/logout"]', NULL, N'["https://localhost:44305/umbraco/oauth_complete"]', NULL, N'public', NULL, NULL, NULL)
INSERT [dbo].[umbracoOpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConcurrencyToken], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [ClientType], [ApplicationType], [JsonWebKeySet], [Settings]) VALUES (N'b8c3f560-ff79-40b8-a5a8-dc0a8a94d6a9', N'umbraco-postman', NULL, N'f41da457-e708-4c6e-bb84-f9d1fa239673', NULL, N'Umbraco Postman access', NULL, N'["ept:authorization","ept:token","gt:authorization_code","rst:code"]', NULL, NULL, N'["https://oauth.pstmn.io/v1/callback","https://oauth.pstmn.io/v1/browser-callback"]', NULL, N'public', NULL, NULL, N'{"tkn_lft:act":"00:20:00"}')
GO
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'5bcdb952-5ccd-471e-8f32-98d8553f50ea', N'a51ecb33-3b5e-4d99-bbd8-b2abef290738', N'1e98d2e8-220b-4e6a-abf0-602628c37dd2', CAST(N'2025-02-19T21:43:40.4486454' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
INSERT [dbo].[umbracoOpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'ff949035-f20a-40bc-ad0f-4debd15d8159', N'a51ecb33-3b5e-4d99-bbd8-b2abef290738', N'd7cbf968-d817-48f8-8700-98d4a6853fd2', CAST(N'2025-01-30T18:16:14.6799222' AS DateTime2), NULL, N'["offline_access"]', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'ad-hoc')
GO
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'727de077-a023-4ba3-8971-5d4aee806501', N'a51ecb33-3b5e-4d99-bbd8-b2abef290738', N'5bcdb952-5ccd-471e-8f32-98d8553f50ea', N'a1d74bf9-1f6b-426e-9e33-d745a6f95ecd', CAST(N'2025-02-19T21:43:40.0000000' AS DateTime2), CAST(N'2025-02-19T21:48:40.0000000' AS DateTime2), N'CfDJ8HM8gIWdOUhFvE4sR9sL5ueGHgxOBh7UkuS8V_NeDd4-6c8NTokWE-Kh__MdH871ullv9hMyKcMVa-gak33o5o_ctXZpaZcwbAfR7m9cCmGP3jSE_FvQx2NqrscFdSGMEICpjUTx81t9EjiYa4ykAnNSqyTLr2Q03gt4KJrj1ZPNG4RQuVY0EM4GHtkNpuvfj80-ske2t9eK-KNC2qBYbscMVXvLLEoYjQLg90SscU9w_dqfNNKxlFG2xZ0cqjAMIrh_VNf-mAeGv1UVvDsMvJyezNR26Bt37fRexI11V9tuGAAgcPBZukPWRvmSof-j5PXndMzuepVruehQ1q_yypwTzHTHf3sM5cy9Td-ENOcfVmB1d-bbIyph4lwxl4UCl3X3Vll3D5uzjt3nELc-TZ-LQAZeiEduBkm-I4FNFTACLOR8FMAFsraj34LQwMycOWDz3ufLurdeG-AFfAEAdDlB27xau-Y3VLEfLkJJamWf_eB-EvKxgIgwvHI7RncG9OowUdK12BMrThhA7h2qbbxN1oFo601pPUckV0g1Q1flkRwYSGbODe5ViV5oRzzN077uANi9Att7zsnXcEQtBIeiPGDHH0b7R0wHPahNDicYOjKl0qILJuQwIxWXucZ9FPh8UXhsVPamZOvfjvhx59gjc-KXnlcp4fGqv9OFpAzU812nb1Ht9-i_1Srn65mKW4CIMQ7tjS055t9herLCFw2flRBsZb9CFXlln-Iwylnmx1g9t_hjukktXlFr6H8T4beVfYb5ivXwLxhKXpxYJHoc13HJSMpOyY1lccxQTsMyhhmyeVDWqU3BozqkeQx43Od_qj6al-Kv6H-6anfzBbp3vLU_YLzF0cvsYjRoCbTuWKUQwBdEwvunngytGdjtRNq58J93rw2vHLAVMmlsb0IPUOJ6_bt4dnJ1Gm3qjVHuJCqRG8zJCmcOoOLi0p43gCKPempXIm25ZQjryfvFfWlyng2surBn7ljYQRdghNC3W6618TPav_f5Wr5WjFfgQvaZJp32Si-uOdUll-Y46XYQQHJjK71oOVZ50D0zC_gpJB3PLVRvupxE29xrrfg1MRObol10xy8cX1Wm1aPhcBhSt2kiuT9YI0fS7vrDCkj-Df9ZCARMEakNG3dOF_qrtff9IJREOySTxHyzen0raI_8IrEP87zG0zeGAqbdlK7UNSsZbaogkEIblVT-UCLoEJJz6hKww59WGjb6nRlWVJZ3iD15oM72MciFnSI9TM_V4jggxIq5PUCkfVcNoqtZzWhu-W_E1mn752MQFFvzbmk54FVviWDUk_VH9GvouEnEzYEY3qmX-qWuXx2DnzDsFqvOIFg23PhUgdAvJiWgn2nHr2QAk8EZ7vt8RO1aXKLc_9nPUPp1-Yn2tLz5PgVDv2eUD2_88CFlEMUnBM2fADVIQDcoshzW9IDnY47KqIiXOtZ7d_jA1QBJ9uHMdu5ovZnrOC_SDXOU9Kdsjv49yD4wRY7rVT95ekD7NGH9o0tlES2scAanBQq5BolT5StEJogRGiZax5YeYf9yHl9E6IFkbNUwif4sMtjvg1i0jpYjMxZ0VmdKgnBT-31IBx7EXyzVKUEA8y3BgIaycwk0Ej2jlOlGdUq8s4-SznCu32MsNFSIeU3uab0NpCotLf4U-Ixhr-WeYhVir39FPQ09dJaG_5WPEElZNqwvr5vPMF9E9A6up4_pBI73k2dNNRSM6VRPjqLUN3x2ccbJAImQ1fj2S6bQVf50oQ56Zi-tyj63euCeKXjz0NAEJQn16qAMKKfAR_YJ9Jk_Nl79hgOjIAaG9t998p3xu4VLjdxISs9VUTqTo54F5hTfLKXGE-UIgIcjZo3ZMH6TYBbRpWhiyd8GnLLJ6eZP3FDjoZueUxlARzj2qVfHmIas9cs_gZq0yhy3fC3_t6QTCCueFHWA3IC5G0uBY7viXtk5mn1N-kZyBib9C4vB7B50-qWcBtdfUYuHjOksJv69V20cNYHT6ksGF5vYmyLTeXLMdE3uPx7KV-T2wK5OPjhZxZ7GbNKMyCxdBshH3kOO6yhbCUMNEqA-AkUsUZcCa0uoh7JjAoQWX8z4eKCXNgCZr9Fkbpx-b3yNlS0DTAOfoZwmAJESlsTdSqvOxNcRiJPlo8rzXa7cRjxRapj5NG2IU3Svc6dZa9NDj_13HV3l3R2f5Tcxdy6gcz17J3vu6Ju19tMcdIW3lhqQFGFNZAPrWZlZFRXDb5USXu-tihfZoJZvo5bZSP79xMN2tA-y1Z1UMrJE1qktV4syEzRzha2m0qt6oaR-TAWcHRvEttFVZNUrXhavCgJOoBSANaylBPSK4VdIzvLT7O2VHRbEGrjcmVgTZwhM68GdNQVcJ5X-v5_VaCNvIw_fuRQMWCJAyZxyMd171gXkQTR-NmDKuKT_DhGjj_yUFDU7qApx-ozlHARxYqAwVup4D49b04_Er4VQXzKYT-I90cHqzps_7bQrOblRs7rjK-H2NN6NTfOqJTRNiAqqsTP6nii2qHKKF63BDtbOfGQDrWZuhLOXniRYOHHiY1rMLEK0EKS0chWnfxNiRuCz861EtQbJy7aQ7-Sg6hQl5ARsZx6Tz0jj3NX02rhiPYxmPuKNv7lZtHe5kF8XdalPzUc93dlvOoSUrJ0eOuyA8ILCm7C0e69mEgZCHnE1PKS1Px0JwGJiAKphDEYl2WdUbf1UPFNXpsOSXNsTh7TZSn2iQpV8dvgNuZRDcuIXfazqm9iJgAZu5jS49XjVwfOFQt7WHHVY4wG47RiKAsb7Xglo3zAfjLpnCi_awxX6HMd7VPB_sHLzg9cczDPUgRWmYCvOCxNvVLmCvS2BsKrpCJHsLWLTTmPaLI95QfJ4jKzLQ7OtUl8P7VEfRHn-HFki4i37nwI8zpKH_9E3Au5eo8Y_Q65NIZf5gxNx_eQlZklIDGF7ABIB3cXdt5fvf6o-CsUPG8F2-47T5wEpfkxEMhLL4oAF2Y6wPx1CrRxxaN4lvbla_2nRAWL3MK95RaKbI6SdmZZ1Xf2ahEMg1HTxCp4WnBJ2BRkuxt_sKIalyKHaooA1SdjbSH1gSGHg5fpA8W2FTO7Oos2zTIvZY6bLd54cwMVxoZHCcUrRC1lZ-xF206bjV54GybmeryS88cMgWibPyMNO86OQQeTiNgNXRGLzw-zR97zMoyq8GJdXlQe4L54EBj4slj4VncfpoITOyfOgilattFqBK2ZOE_R1t2P_A9me1LNCYckBFD-ioPrjb9O-eietjQwAcGVYMMYaiGxyaWAEej0iw8W_Br6Uw7wJtfsmvzuUAxClkb9XtGjQNOleXfANf7Ty1JHuB9m_PDmZY6Q6hSP925dc1P95nKnfjn81hGxharT2qZcfI0evqfTVPtl32qrQ-4Ey8t2jCL_FmflOPN2DdkCkreXk_nRDMxmG77JHKNczHRZuyiTAPgvSU7PKPdVV_zJ63Omkt_b_PtCjT-o3bgNQ1wWeShr1KRO1L14BT6x3JG1hrav-WEoZ3ecCMzjPJ10IUIVksH7pXxzWS_n4cOGDPrV3SoUGnvMX6TFQpw97Wjh31lvDQwnkx7JqMCM41iiTqWGkwI9yLDDrve9WdqBWbc1Tyrx00gdRRVJvceIssERtJOMhtAmSj3RjvDuSvl6sDyeNm_uJJWw2L7ANsIM-2yDpiBAC-O5s7NERl7q9vsWCNEnSEsmnM81eIcXbp9q0iAnJkn4gvEgVkwGmjV_LDl77wXTtBZ3MLq25mPV0Q45yooCuQd0N2135a4tiJED4unuslbQjli8qKrhSLhqt464txVi8mpBniZ6u4f0RqXZ7OljTYaBvlIclEfcmK-96vhmGN56tayJacQiBe8j7BD-UiRHy_MPtskuHJnVLThPhd4X5GkGwC0t6hWdbN63YAjfDI8plnB0_9usFUWQ5QbvKI7hxFkVh1sOAgbyN2MQ-C2dLJA-YXk5iGs4qCRCpjshBkfgA0VnyQ_wBkKL2kcGtypcvcWVjZhv2JBPeod-efNNXqw', NULL, CAST(N'2025-02-19T21:43:41.2459115' AS DateTime2), N'dkUhwWn1Bia2KhyYXVXs6Qwq3o9U01l/On1VayhMjxo=', N'redeemed', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'authorization_code')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'76dcbf2d-3f0a-4c96-82d9-e93e740d262b', N'a51ecb33-3b5e-4d99-bbd8-b2abef290738', N'5bcdb952-5ccd-471e-8f32-98d8553f50ea', N'cf7d0ed6-7be7-4cf3-b903-ad289d791b7e', CAST(N'2025-02-19T21:43:41.0000000' AS DateTime2), CAST(N'2025-02-19T21:48:41.0000000' AS DateTime2), N'CfDJ8HM8gIWdOUhFvE4sR9sL5udtbzQ_AQqnui0emAXCbSUf2p1tk5rgqTM4CYBDSUuxiaCE_vTznRoTsxHNf2YJCDzvKvC8Shas9F1IO9zw7hxAcEOylCRT0j_2Y2NFtPidnfHV6b65dHhWVkBM92ggv_ZsjApkfKlaE8A4K8NUnW13ISdyytZ-otE3BTXRSXAMNp6TGzyHpCsn9ULBlvfsVXv3ZJUBi_cdfi-brM6svsh_mgRvlEpIb5ydwET18Zbl_yV4X4Sg8ITA-5UMg475g3OyHSJpSFgaDZgbRwop1lSGxuEntzj-cN2dxNsVUDX64754E9-95I6yYJeMydWScxJO2BLcsvatfgGooDLlRmnahFfKLuaCV9j6qkna2eV3qFyYAjWe7MwdKFPzUiOOhLN3yo7BLT9IZJtNrQk3rxnrle0AQM7gqsNfRZLd6x0QOmYMGO7AgxvmjXpmSLewehFuOpzKtM-L-Hb_zlV7VxRmHUP3Z1o0amcZnoRDk46acFFSXFIKK4q8_8wNldAVRJW-Kj_ktd9z4UuNEauJeT1Osj_a0dsZGc8brIN4vm-ph4zcl-vbGAdyoP6fkJrYEs9sQqPUhbytBv1LR-GV3w2pFBeFSJbQvBQMnnEX52YjoriCW0QEhQEGUdC8dwZ3NJONVc9rnoGb6Lh7RPTmSnSyP2hBAhTBe5cvd1XA4B-kliQGEPs0eM0gQE-xF151pyMxepiKE7vxYAOd-OCPPxxRdzz0bM5j2hEPeW_uQywRSVEJXo3KiKGDgz0SCcz_zLCPBWht3jrvvFkqiTygkDFCfPG-B1Sl_LNOCYR84R9zplsGm6Y0NVioL_xWm5Zj_7DH-EEHkn55LhegaWfJaPrhRK5Ck8MkZ56qzaPZJTV0kq2_JfIs_RqGtig96iuYTPHsuG6pbZaNxjwh3i3IVivF-53FiXpDTLrkxMr9onOGdITYNEbBwXnNwLeMokImTrFQ3rs4NA9Q-K_Qi9K27fjmINoU7v3jCBdWNpejG8VVGke_WyHR-pUN0bK2RzugFrp5SMmeWdAkWe5jNZtXyuhMcS9p83pfC89bJwC-iQRBn9ylwAysUHmNZ5m4zoMvAbkGvEc77yR_Djcv0Wl3g6e9b5mk2wM3kgc3tb7uvXcurqOATxROxXdxiIXacupfrnp7QfW3zYAGurZSekFJSujkzcfzizBod-A5EqoFd4Io7IwlcN4AtEkTwhbHL0YJFJxOIdDdTlrBbvQWJAyrf-dp-UKucQXINZ8lMdgvWTiyALv0BHilXkMpUAq2Qaets_74IsumGG9bUAEd_S8cmk0Dleae6xrsTOrjotkRbZ2jM55Crb7CoxpTYe3R_x4oKY5iAetexLEO3kIvlSc6vGHVWjmdgSj_WRQ8SPnNrPvHmsCsn3fxKOCUzNAx0xHgHLqRQoDF9Djus4UbGTvjp66I-ExUwDfctSk1NpMOS3TiBNoXX-w_ovyZ1IN7m7NGBdHVqMS_plRlfv0oWQur8322bK9pjqtEHRKEvHBzAGyAy3U1SW9QZ6YKqLNtTWiqYQ7iG7mcK42rYQ8MEUGCdAABHTNylLFusX9X0vLL7yb3yp8pGdq3Kp2hJQC77ci1XbGbNPgqiogHWC162d0zi-VpzOhd2SrjqCfrzLFZOjy_schsy8tlE5HsTslXLkRKLSGseOvUFpf55IlW9LtLobK43mO50i_noDwFA0CQIip9tfMHUepbXGQgVtDtT-PPJwrnyksePnCNLRC_rBjlnQXDN2t72k4zM7q89Vk5TRigK1hrW91V6HbvpTpnlLt6sE6iHo8R6IN5VVkKSg3-177HFHMJ5a43FiwwPl8FI10WtAFD5aHmZHYT4T4pVy3NxxtwfFDuXWUf1rhFIjQR1qx0yyaMHeOPmU2_bidxYD62GDAyoPJmK_wNqpcxQ0ROaJEv2iI8D3glsVibsz996BqNl8D1z6PqWw3HrWZOqj2uA5Zo-lMTMToZkwO5iEeDRILPhbV3bdxiiO2QUzHuAcPlSXM86FWwJ1hDHDJxiWt5FgT2Ha__HDC7GOZkOt4T106F7jc0-aErb0YXJ_RPWNRAWgRwVL_A9lBjDO11kWd9DYudpDXyKjawsCq3JFCalgJGk84mJOewJ5C9Wf2McCSI79Yw6RhEcYg0TR1t5Yhm7lENmDsAmWrN4wMUBIROttkiGf5Ftdi2X5BNaF8svNm-AZY76zJkvQh5Krm3c04YIhhQbjb1gDw43J2Nh5vFrhjJcwSVzw5jvZ2E2XLYuYvVuJiAx0fT-VnGAvw-zZG9ugFvWto7i-RqXrxdI4Fsh0A_11S5ZPqxuw_M_msgSX6FTZDLnivM0Y2tyuYXPaRZLyt2o0hE6QPZd86JaU83mZ64BrVf42gLtp-ql6J1onOLybRaJw_1PS_tdLRIqrnIJRulVgaNqCWyCzYRQ7toDqoWVRyQ7CpHUxcFGy_QI6DCP1YB-mvpEGVMvn9F3XFXJFz5EYguXN780Oq7Jxd5Cd7fBVAKAzhWYfvC5AqJ2Tm1qgpHCVjijbDObmAcC59fL0tA_mYqWgiQRanskjFlN4e7X-pmAhncq6HPfLjcrIf48tA0jK9DNILtC_IcKLaeKhJBdK6F1krcIiVFPrqPsq_kyFc9UviMes4_I647b3_gKNH5qKtKz40waMsCyxpYOtUDTSojNCKnys_Un06BkUEVpZPhGc8ybBJs-QEoOb_8wC7DZcfkHdVm8B0fJlFywZLExJY30sZsa1kdztPkCNXipuMJ4HMdTdOlCJED3slSNV8-iy0agGNhTlpDvShorIised076Kkm3sF_InV5i0XqU4JNTc5-YgDwx3QHD7eCvHAZzfN6X25RjhD42GLKJSiW1XFOrEO-iXeX9-JrxuWlxpKF9fclHE6p0qJOTtpTgTVf_aJdwJkNB5HCj3UbKcO4RJkDQe7kJ9koJ2qsHi8aF3zoZm5eF3Aqk-3Jn56bVW5BYUHUmI10Cm2ZqpYZOjiB8kfEKYT04hW1MI1gzvjFiGj6kaSF8-hsd47AElO9gEi0fYdpBXlpw92nFWtjWq8UEW5kN0IQt1-h1Dz8WO0', NULL, NULL, N'+HHq+RsyRu2PJFZIEwW1/Th/rCANLCuVNxXjcRlfx+8=', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'access_token')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'88975144-c5bf-4593-ad8a-ac783729b5fb', N'a51ecb33-3b5e-4d99-bbd8-b2abef290738', N'5bcdb952-5ccd-471e-8f32-98d8553f50ea', N'a232ea65-e96c-46f1-bd49-4b7ce2af67e2', CAST(N'2025-02-19T21:43:41.0000000' AS DateTime2), CAST(N'2025-02-19T22:03:41.0000000' AS DateTime2), N'CfDJ8HM8gIWdOUhFvE4sR9sL5ueOZUpuvA-i_GeURTKHf1_Dv8vAxMvigf8_wN9YQNHNBVc9aIir4C--sFbJzi6vEsscjtlKzwQ6EDalr7iN5nuXV9V51XViPZEva69I7KiA2WVf1Ln2hGmzz_pxp43XLe7YDGWL2f8HHtiTsd7l-RukENCheppCQSdlXMmYEeZKonYQ7Z6pRb2TykmLf6s_J4FgxtfpzQGFdcilQfSM_mYesxL_jix8T49S639fWDlpNNrrcNb7jQrUNxjAkgcJsCmd38I_PLsKbGCD3GMqPJY8iET5bq2kc7uN9k1dp0VzQWcUsPRiRiQLYH-KBqPvp5TTqzP8VaVk0CUnkcRCFY25fH84GlmcVHsHIdezdOuLp5doz9kYkbAyUWA_1X0vnO4yq5o_AVcmsdRBnSnFiNTGkwaFMJbrW5HwAWoVbQq_6YcfVD7XqPNLodJSRdMZ3vaYsGNXSJ1qkdgXIrQmqSVGYnRb_dnhUdZ2URi0Ed3Y6uNy0qALLTxjh8zk0NBaKoOpM9zIU83XxNFOHUX5a6EiOB8NgQp1OiFA4GOXsJPm7sxKXLy8FpXHt_GiilFT3_zN326DDMP9tySmEEloCwTBxNv0STDMTeKgO5mbBxIXsMQ4_ExTfUk539thw5rdXjWGC0a2ii35UFTsIPpqfGV9eHQiqaSoXiJTZNnhZwDkphgR8Bs7peZbbFnVLtcC4EfyPL73lMNZxL18vnmk_oGwT9h7klDJU8ejIrbiQWJgrgYEIsVX8L0QDg0Z-AdvfnM4A0IjZGVAANdlaHbMTx_Uw8MFKUh92duhJ7_S8sZiruU4X9vDf9TEQ0zPZBkbxh2ML9vjuwjMaDFLf_NLEcPwxO_lBvsfPpeEWWcrjEWZH-vF-L1McKoGo9xyXK9NAzndY0NgPGFUbnVGTLKo1znGWz1VDMw6hzM_UqoUNH6UcLZ78hwRlxtvwbVioxEsxK0akU8vvBSoxBuqnpL1rG9C-TnnuCG4F8bPYQ8g67NqDr1DFJg1gtKvXczP7S47oH0xkhQA5CuVj7DBp7zMuAGPrWF2zKsLR1nWrdIX3LxCryqYbIDnYz3hIhnAqoBqPHmBkjXbRwfc38CspgLR20TyYh1hHldDNtL_dC27Y72CO0lK1xjCk-puj3OHBxgBAw6ZLIoe6ohJv5avko5CcOv5GdV9dUkF6a2FFL4J516_-dsEsEqnV7tLIHOAINQ7Mhsf_1kVlyM3AQEdtpR6bKEPcsQLZyfukRI4CSjDaxsxbiMkqmY0nhA5DI9HWPeR3D5gp4ApduSlYfkHa86EUjgwnrRJ3bVxEanvjF3sKYZcHVsRks2iq3zjFfIk4gUuco9yGppbePRyL6m2ipzIO7MdB6bPQZg110D6P-rsOJ23x70XpGOEywBGu0SCmBld6iEUGp8rls2qO-GFUEG3DsWAgUO32OhdrSVb8OKm984zmtSDymtrTcrkt-XI72XL6H79Btknh44EaKVDvmzEai886yTwOWjSVhSkRrWQz0tsQ56Y9u3OVHDssmo0-0c75VJcEBdFlIhcQIpGbELirUD59UC9KELgbYGbT23LEfM4JIOsWPQ3qBjxfKJrTFRefltlOmUPyGpwUNlxN-NdqKol7IKuIa-rjAHHBEdXhG2f545XETM9vjL5hX5lwICcCrVaKYOyD4gH1qtF7KDTWnoUjnZLnGNyMbkOCHXIo3esp_TWgPZPdNYRsvvJxu8XmqujucI5TE2S8u88qQ3yxn0K-OZHSC8nB3pbFPCW2THHHgDPUM1d_nVRd8b2-5NCi0XylY6v5PNAxitX641TM7ibbhHcklE5am_Xx0C6wU9GezFqzUPgStDdLANPKw-iTJg4i82SqQczCGXufSxl2aW_UIGT6FIVwJvzmdkaVyueT4sCtOmnwG37jJ9DZ9mMj5o6qao3qIyqc6yI_WuU_jl640Y4VN6cXLzlk5WuKPyxx1_WsogrCcDWTnqvWHaf-C_Iw0JPIGRmWDZtbe97nPsnTezHkqu8e5_Yr4bXPAxiUdzpVE-WRJrS5L13eE3KBKntlwGzGzzpktbS4VSgqpTmyVHAwigmAJf21bRBwBUK-jQLTwvNqI2N-qkMR0VMb9B2TdDeRXoyClm_u_N-saqgVi6UcSFjpwteYII3or3x-sm-mx3h0NMFF6YNMDKAE5F8GQS0TxZiBZ180XdfCQ0yT9Uedz4sgHPyRabxWzBD29AWpPvYu_yduCBoBcchkP5Yv22AmAEjr624d5G8mL0vhFPUS_1-46KdrDDWTD7_BbRKnhRTjDVoVqE11Owngd7EkA6n2kN8LhbOnmlxn5nvFQvj5frOudn3jpnvO67Glv5iTqqTx10MtzTkv2zFI2jnCWYSt0TX2IIRFYyBL4xAEMWDDQgyYEoWP8a-EejSTfUGMe63Ma5jprXqEpFd_CH6dJ1jQV2DFeiuSlgbZYYlcaOlHJzPIDGEN6yMjKL4Tc5A51X9H6EZuZS811yuUYlipadUndD544HXvF8Sdb-TS5jb8cIJRP4xXjpEVTc51b80mcMrdZ043YJSNYMDDzD-ghOeUxrmV2lxQtnUBgyB-2IBi2AWL7MgqyoABnpDh39xv0pXs_-ujWTm4A6xTOszYEi2iiZGu5oTQlYzCaZ4TuM4DHvunrwsoEgWoJQPqllxluNVmzvpZuo2JJiJr1lfAPdSvyBrwvBNcanqDJ6qxRRXqIGoCFeksCOljJkFVahvIHbBWHoHtcDXhh6KfDd9LfqMRsBObUA551BGk78GgMsu5HwyeC-6RqwkG2_U6XGZ-D7fTX25dbkg8Kps6jTsTJnog7FQwPbCRgKFwaq_f2MnlyJ4y_SVLv6_Bz0Fd5gov4UreyRU_2yogd4TMlIP4xORgYOeRSb-OV0zoq5XMqCMTpBFkQ4vdSGy7qBG0qLiswh-lCDs-6b90ydNyAviXLeZwpXkNMewn_WMCk-Z6SuI1-OVhz95JifZXcLTcvVKo6m0Lm15BgsWjHy1fNHuf51Ig9l_h68yDXjcslCbkc4oK_BQ7RHW-25IUixqF8XwaLSh145uHR8e3Y28zdONtTIz6bTA8VgvnqghLnK9IzHLuKv7ijiekFfprNeiN7o-ArYpeu2gi0bhsqENJXBmnLAKk2U0WJoP7dj3zRzUgXNJLKPn1Tq7g6m2JjF_2_qNmxoxjCyGB0KrO8gK5dDQTyTY2SMI3WOdoY5rNqZCipZALlBc3w29j7LDdK7S-ocbSq2N7CQeXjUAlmKopNsLpiXycG8WHFK5Vz3oeCagvdUNlQYL0zDQT0atMVdyH0VP37KMoQ_JNUF74XYz06JSceGkrFYZ08ddfUr9w5cWPV9C5636w6RJayYOM0WtuOoxKpuzNMACOi6j3mRht-_2-7c8Xc0KZNMtwbv9XYExLvYMKlt5E2e8y3iJcdWDVm7wtrpBF8cT8ocC2ErhIpnBSypPgVmagAaqTKAL8LdCMgX_Ws4HtT2XfSM8JTvwFJAHABp8cgm5XuTdEe6nhOGKY6F1mzvnr__tTg-dYjMX3leeanYIQuco7akYYcsPdl24Xwh92QawJVQBOeQljpi-be4iSAcIo90DKN6UGLx0761a2ejVvs7DQ3OKz7LXlnAOs9xgVFX8t4zaLUBKUdVZ8RxwmnV1aRJVvLxoARwnoB1W2PtS1Lue48mjsqeCulVXlqUZbE7UzgOedbQrLRkqEjAsUz57bWPmTwn70NuD0VzzHt8ziz_aGq4OE_2HYPDB1Gjmul6iUHCf4XKLBd5RqPgM2I9yCsG1Vw-wc_nsztLAPImgdr_8XRdaUhMu9hriVfcuIztSxUg1-7XdC3kTLtN6QDLTOj23r2w6oSgP1lc_f0m_9mvqCLqqeIJaDebYNwl9z5BAEIA0VQ5Uj4SNOeg3DFsee281T1oSHSak_5cELGH0a2H4A4nuikt72h-omlMXCkgBBXP9r6kIk4SvnKR8pcEjkWIqoQY8FkkpWnzRiGVp82YYd4AaH3oYaoZuSSD2IPKUUAAsW3kKNfNFQS8dlv9LAmjqYh9owp3I', NULL, NULL, N'EaaF2RgiHto6OjF+NDKYP6e88zKaIQSUyO79+xAUvgY=', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'refresh_token')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'9afb3b80-8cef-4dc0-aea0-331459c8d4d8', N'a51ecb33-3b5e-4d99-bbd8-b2abef290738', N'5bcdb952-5ccd-471e-8f32-98d8553f50ea', N'2e4d7f3c-a5da-49db-bc72-d817043c10f0', CAST(N'2025-02-19T21:43:41.0000000' AS DateTime2), CAST(N'2025-02-19T21:48:41.0000000' AS DateTime2), N'CfDJ8HM8gIWdOUhFvE4sR9sL5ufk9xqXAyvq9YPi9SSiQreOBxp93uHlMrvPz-9SibrcQfMQg4rbMvvDbQ82h9EdOGXH-omP5U653y_aPqwi3JPbceDjGVMLtSfnlFM3sCGhNo6mIg-98mkqKYO2BOMK7dRs92sJQvyBTqJ7jgGo2SnQzAH3zsMrKdzUzJi4oUnunxRRbITqNnOQ4fJ2bWmzV_FrlW90QN9G0by-Z_jbgeXj-DR5NeQ1vJ05An-zSQt0B5h6IjVaToEX2A3AGewawiw-_o1rH0ZtiNFfiPr0M-5nI1GoD6pTCX5_mMo0mf6j1YQRIL1hk67-n1svExsU_nCw-kQuFDCqNehzq7R7MIKvVjuy5e8aA01xqoKDBOzMIpu_7dO13nMfpbJ3MBTqid2_iTvcb--Xs7KCWaA8iOrSc2RwcpIFdeAzCzKqgy-e3t4mWawfRKf2gbkyK-vaG851qA5bSbmFJzc8pVgzLaRdmtat3kyjqQpICRldMJc2i_BCSEi7L6C_yuEviKU9tJqIwt6GWY9-UizIlPWMVNyUEH0wE7CcEI5UcRktCaN6OBNdJ5YNckwyT52GU9zQ7FbDrmvzYwVD6gVqkNSutsNgjzf-RIQ-F5gxo6yxqn-L-snWq0p-aBxPvrkGn4TlNJzkC2QC0ssIW5ZiwoAE1f7PwTClPXxugZ2Fnu9f4ueulYLKwgAYHcWazEtjAhxPM-rODqbotY8-esgzIElX3rl94t1XnnJL0KpyO85BINXUkZKSV1pLJWZ2dLj95jbrpqpwedqQzXJR7h94jaVbYrHVN7hU-KFh3TFHFX1qmPfZLVPGNgqN9I97jQCB58WnEs_vru-URd4yM2iBkbEqTIX3234o1d3qFGgnQPj8O2JZI6rEpkPMT8MaWy-gDr8jVLdV9ABJpVLQbP5pHqJlFFhFLoot9jmDB78C02T7WzfLkkSTXNs2N1M3bZkQypiqIupMqh900EXqVRYX_HRHJZH9c413teYB-G7A8LOsvl6C5F7nQBSQDG_lAUYF2iv_y-gy0C4G5St7Xajq0eZwsKQUVPNphbpJUSDoI5NS9-25ptUmBUdwkfuw04d7srqPoMtCfe1nnG5nPtVmcpP8DhNlqip7Q1TwazVG3Ye29Nqa3zSwsLU74DWHCjAL0QmRP4FAYbSG1XsMKDamZaAg2sy12QinygSmFLt6UgcqY4CGL2Z_LvdIa1FzUsvEhB_d228K6-PC3sNyPr43-hiVV5BUNMSDK_UJkAV9sxwg-J1GRnqCkUey79mc-mk0wifuj_oo_mjDEw7qvp1RreciMsX3fdw8Fo6DUy9n2fkcmntP67NB1FsVCyhXsKgJFk5lBHNgWBbt4z0M5xXaZtGST_jpHfok9KoghzqwBO_UBUGkxQEa-WvL-nsZstl67g8_3Cqr6mKvRvxHX4vjOrnTUkcQo97RJ1g9UKEdSce_EmuWnuXK_HaGn4qvkqgvY-H6M34KKAvC9c4Kg5KALYpY_YC1UGAfn0VG0cZr4dl5eha_J-8rEA9WpeHDdqMO3dKBw0NOEHr81z2J-0pomR4EvP0hJ9Jj7RXvwAexBshTsZ5L3KBqQbn7v5lEI2sXJkSsTlsVqht8ae6qwNQ3ujSqKKKAhRg6NHNwj6Lmg1XIeji358aGTIgx0GoI-P8Upsz8quqliQL5TZPJuZ_yP7yVbP-_jVCNSJJo0HgQfuAzyp-Ov1GkM9VZ_21gUK5aN0kfI8R3BbomeoLP6rWE9gacEs-reeDzJjmtZ40Ry7hvZyzCGwbAsK7e6mPC8yIlTvlvASYbNa0rZksRCPWvigN11_m0_9dtuABqn7bVXYvqGvlcIxVcf6Wi0dSlAtzusbtlKaOi-1RaBO-Wecp1PLj8DcrPzl3B3nTW34_sWDMxYUC7PGp_v0ZR3vYASz0dWjXe6rUlVnzxYu9xDND36fG4CcOp6UvMMrDqXMTmPoi2ESW0ia1bl2FhYheyx7h9-Q2a00fspSLSINPJvS4em7lyg_n_A_jKyDvAxEDQSUzeFxiH7A_hm2mZKtbrbha2L7BmCiUuOOBB0peOr69N5OcbBvJQwPVYrpmGnaW-aI9UKnb63iHxE08oz5R9anVFyzFQ2PPpQlmfplJ2VUOHbRmtj1YnjXEjj3WulNBp9v9LniTgC25b3V-Ke6SSHYiFTyHa6OCZVyOE8dqQcT11mvAQ0Mi_9DWNNJq_VWTPXSA7Fu26PE68k1AOJHm325Dh5jLaadwgttEmZ8oIm23aJyIEiJev5noUYEKhApTVFlQMPEtNxZCVX77q4ZjLBDnISVCjS_GI-FIzNpIDopVk1TJSUaBbUWqGxpnTUHvZub5Gsh-5z-55BbL1oOGdxh9b9_LgX_nzb3uD0IZ_j2gxz_Sq4T8G77E5hrqAIj8ihBaLWJJUJuYUr0rwVNG1oZPxpDfTm5gDX0iv-whkvZ0_c3Hmqipq1GMYwKlrlPXEnn1KDPEfMgbCjmtOe3shz0FgMUtFBGjTccInCKZhTrs-P9dDs5Bm41X6T1tcNn50m5A5bLy4ZTcDCMOz8hmNqKDadj3_oP3zdZTjpbImea7od4eMu9EspTL1E6jyasJ_7DvcvUCru0z5Flono5ZfqG-kkehDvfhuf55CoaoxY0djER9v0ij4alq1av1_TZ_bl8TDMw4BczOzBiuuylm6WQ3qm9be3jxj7Z8udBzYmP1Ul8VVUGE_rZZflNDqnnOI7vN-2CCsifC2pCEMaoFZgNBt-_yRYj3Mfo1dUGfU3JjBHlpT4gjKTa2o9oOmM2zIhUbnTfLTZV4XntKxTqBCDYgXZUpKXTKvobCpQkEyZ866-sRDVqfNqLOqkpX8luAo3e6r6X643Gp51dUiXEFaZIj5XnMgrl777erhdyImiexHxCEe1YIaYMqAUdY4WhbZp7RV1G3u6MWuA3KhBRyV-hdqYfbRjqY250GnuJB1gQmkMbQR-y1REPyvcDNqcKstqnsh1mkZ2YM-obeS14_YvDIk0bbzZirFXs901tW6k1kuM-Wq-Y4T9HPCRSbVSyHsFnyc5ox8WdVn7JGtxbBPBTxZHwnFvyY', NULL, NULL, N'TGo13Vfb70FMR9zaaKV247fhvEd23Wz4eKAtxmJjbwA=', N'valid', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'access_token')
INSERT [dbo].[umbracoOpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'd971de04-3394-4601-a444-b2fe680bc56f', N'a51ecb33-3b5e-4d99-bbd8-b2abef290738', N'5bcdb952-5ccd-471e-8f32-98d8553f50ea', N'fd7044b2-6727-411a-9d5b-07648f5a2c2e', CAST(N'2025-02-19T21:43:41.0000000' AS DateTime2), CAST(N'2025-02-19T22:03:41.0000000' AS DateTime2), N'CfDJ8HM8gIWdOUhFvE4sR9sL5ueNccEUMKgevr5r6Y6F8IGxFRHZyTytpSKxYtTf9hV8JI4y7oEXEH-b0-XhKE9j4Uo7Q-dKwUi_kCb2F7_ihKIMDAEf87WHGzeOz3cqpllFmGvUEohfjwMr_Me2NzsQoFrpDyPvlw9xvAZs54CWD0OpWH225oQn-Ru1zHBF4trQjCExzX-QGoerhaR8FHkXh2eK7Q6ArgDdsG1qaFh19gEq_aynOYzaQCNUUhEH9kOYg5roX2HPsJK2no6W4ypXUk76YFq1l8Jgrb9CWVZG8iP8qCL_pOgvQPRMhLBEezNFD-t4ZB7FAjuBaIsd8fNzXwZEXattnPMJQEqj7zEPiWXU999eTvnHvGCEvIZZWHpeP7Lf_RI4RPGVaCLKCa1b-qptv9ofQzI0sq4-QvGDq_00F9GyzLs3VcUm3YASIA1ENZQfyxyj9E1uwXP4gpoGTkvB7osoVv-N73fFeCLpcBng60CL47X0GEADFSKUy3DAc39wTmrcraUvr1ZWe344t0k8Qj-qisJIc5ETsLGcIztHhhMYkundCXWPljKcCyspo291xL3vEn9YWi4AeXAkD-kjXaLVvdMObJmAs_a1SkLbwW4PVlVLEePz223COJAuNWOR2EqZ2fa2C8xCaznEEDZSvbxBnbL3oB6ZsEKIMJRsnD3bHUzzW15ZVill3Si6ifpW4A2ZNCrMkLCKNCIH9qeslRkQP2m5CCr34cKIP45YGSIQznyOY7Y5MZ8DjIsU_noTc9IQ1Gzr-niAnMXQwkiDRZPVeRdF4VB7zYq0tLaYIB32XcsCgpYyOldIYDmndoTTXLUtPOXVJ6B1IawKofRQOz0-2NHnCXLoTkQPWi1IZxrujDTJpYBeOjV61eFN5ai38tKk-zsukWh8mL2srsWEP3Hi167tHjQma--dHKfT8OQvO1a47SvwEaG0kEyPTqguvRJdnZ4ww10t6x-rDTECVSlyEMcniUU-N34iDba4STfhT4NILpZG2oDeGHTPAd4Ut5SGiA4A6LX0g7NDL0bLL3HFg-b38bCVop5ox3c8-I3gBM3jqzpv523wrVrac-2jExKmBHUPb_AL8ahdXNLTlaKxH3_605gpgSg3feE7cwJG_OS0QMd-mOCPrt5p7DSo9uAG8hoQvOAVxB2kqcyp0VDriwEigZwe_ARqMvgXraKL7tylZL06_YoD9YKXxJIJpmc73D77HA9O7yWGPT27y7Hgal3y8DjZhwuj3AIYTmWhnyK7hAC8ezg2OsfuwplXID0sDOOuvXEFaF7CVlpUdyY73b2MP37g6zlO-vCk82nz3r0aYcrhkRonywIE7Ety8RDMAdPmstmcDEvCjz_7g_9uDiQxaDu3QKetufr9Tkm2G3GjwDqFlSlb5l8zzglIKsFTyzSzQbACZDbUbN2A6Yu10-zOikySzNJPejcdoiwX1x14lLgMS76gKC8EX5cM3FaTs_Gvhb68AiQSmBtfQiFEAu8qdx1dku7ldDRDdOVyCBpHqFF3Ja0pnlB9z2lp-WAV9sLJJZpOwrjqqvQMJVSEUOy4AsodcNABGJdpc-lQLpHycsKHw2q4uybi6DCalxXg91u0ITq6iH-PcHe-mWIQjBIMViLgLETSDwfVzYUrHk_LMXQoO-twYawJhiFn_ftTsvNyLljjtoUmOnxL29C7rlfmHohvNmX4YGT2e8XKBoTA93DmMRy9ativUnQ2D9zINPYyqTMwEllhZE7ZcrnMbM-0IX-f4srFravg2p03Y_76MLMQlM0C20P1NR6awhm2Uwfir7meoQkqAWebkg9Z6w7WcOmqckrvEjjPxl84OsuWzMvIG85WuPzdc_45IbEe2nRY33W9uXgB1FttkiWlPM-_HbrYlVujm0Z5exmpEbecFsQ-EY0R-6sxOZpB4NPuJuN8gikhR_fRaBs8_47re232BDsDEPNLx_v6XbhM9lH37eerQ-5JugwHt0fDRxtuJXUUdfUxYb1xlpsYs7TEK7kFRnYXIWoiJQt6lbWsXIBgYq5gOr42tcwjJJp2hOTJlmFHz3CXOqPaNXue8nEC3sYtxraJR1RzPzn-nFwQg4UmLW_msFRhBkKqXC_73yPaUCw5O_zFD_cufJiV7iorCdHYLB4YP9-remgJMoqop4wbQ3F7Jptx6TCu1es0669UtaZgtDh6K6Pw526kG0olV_Lsk6USySCmCaYYycyMGXSubWZTlzx_gF3HllvJagUwRH4qgxBeq0UQPx2virmNMq6JahWPB8iSxShyud_Xog4mFNupkQH36f_peE4dSxp6_Rc7qBsCWsur2Uev8HHLB3YbfNTYNynKKDNQzfx6V59HMKyDmFS_Kn_MVGvoRrbnrUaFDpKT8np9Rc0nJzQWmgr_z7MpVrjSJ__HoOO-uW3v2vo6Gbubs8T9pDVOPPi669-_KeCmknEfHKF81TF_v8peMCkYXaUNEPGQzSFjSj4mzwkhghO7Yfa0YqwACBGoxnNwUyq0R4D5TaEXpqrCbfsM7XlEwncw52-ct-xTL-9P4_WbhNamuObIMPDw8EuHM9Pe-qR1_l6tMlk0agX3zd6j8dPDpiG5mM0ccZGkbmK0V_DaSl_uWx1bopYdsAS6l1tbrDzV00d3YsvHbs6zZY6Vaavrcc_y6RMx_IAT85gWOKXlfjAnFpuDStizb7Vtc-ajc5qDO3-vCmo6WhzmH7PyDyE4frezuMrlKWxG87xQr6TIsW6o9hFsV0MQU6mPxE4YapxrQezZ1Y-DuRN2zqqwDacXugU1SAFyMgkXRtkgpMGRNFj_jDjkFN0kbn860b9CX6CV9UGWdDpDrcNRQB2lp0FO6Kl4uEzNSIXkt-Z9BqJv5CC9JOYyD5rFZhpJiQ2DbS-1d1vyCd7IuCa9pU3mqpvjqc4DkRodfwrkHpPPUzPS1_6m88M5vV7HJUpRF45iwGV0Uxdtup3MuywZ3d4of1L4mNPvOaAuhj8n-GK1udGHt8GvREACdLjZD7XJJL--VNpby4i84i1GbXzr8GoAuVl-kDeDxAtuvMKjcOt34YutvXkoVYZQg3d67G7NySvRpFqLnfjD8Gmv7c70ro525JCDJxA12BTKKib5wPPbTqKWaD6DthwWpDvXG7ccg2Kw9GcWFAKFZ90vXxvyjTjKFu19NXRG6wcnJ7xjHS7XWZpkTDnRkYWFbl7SLl8olY0eiw75RJYCTQuYGs75ZUWjNiJ7QKlN-yGc1YYUEkYBY5Of24xGLDtPLS5m8ZYeYoecz2o3eywbS2a43nkI-A88InJDv7yftBJNFenqtWTiNrw7X20Z3C3NeAg5VgErOnNq0QUG2N7ZjYuTzbpp9LjvliOEt_3xHAfOx8eiGcii4UpJLE4z2IlqBUE-6wTMO3J8OSCnrNITy5a4Oc09su-Z8eczrIqbCRhJUFp1okFlWxUDse5vaE2FrL3uHY8gZMcs9bg4iZFe3n4ptgrMMrMnz_CEx24c32JemiADUr7Nt_n8p3Aqkry8hJ7BrqZ-vdCGtekNhtiNfSbXMsy3a8SJwBoEh6j337_7Jn0XOEuVx0ncBP-vBNxh4jNAAkIF0tBQW66w_VJt5bvL-husQSU2mRs0c-o0JfICsBl3_e1bp-GgUvDOgbdf5FNWzWnEi2Yunkj0u3pK-idvd0Mu8FjzqfElP41-rD5AQy4yhRDyGf4ja-MTIb0XVl8r_nmdvAV2afxs7_jSAJaP4LkfXR7xroEoURgUAivFqXduJhqWNrM8mUW5UDGRK9sbWd1Y4Afqh7ecekhYF2XLxW_lPFv5aaLqWcVRos03TydWTN8tWF8-4bnNlCpPv9AUipl9Wqw7zr7cAl8lG_trYSe7eNc2ZhGyUxNwR6LebbClZJNo05QD9xOrmh4dmAA32YhLsUApVTHGwwLRCzsABPpEbhjVzLcmrW8GlJx93CqPPIXKPS1ahs3ErTeXuiovN9Zn7Xn3kasfJPHFVPv9W_5rovAs5OtkHnZQvKYTnzbtPqnE6ZGPH0ivjAg3BHrr59dpsLs6x0IOr1iEZw9fW0NJcCrzr6paaYOOCuCa', NULL, CAST(N'2025-02-19T21:43:41.5240080' AS DateTime2), N'rCH250/BDxtuwCX+cZghkl8zVZvQdNWWEgsfd3GYtrA=', N'redeemed', N'1e70f841-c261-413b-abb2-2d68cdb96094', N'refresh_token')
GO
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON 

INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (1, N'4cbeb612-e689-3563-b755-bf3ede295433', 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy', 0)
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (2, N'0cc3507c-66ab-3091-8913-3d998148e423', 0, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Parent Document On Delete', N'relateParentDocumentOnDelete', 0)
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (3, N'8307994f-faf2-3844-bab9-72d34514edf2', 0, N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'Relate Parent Media Folder On Delete', N'relateParentMediaFolderOnDelete', 0)
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (4, N'4954ce93-3bf9-3d1e-9cd2-21bf9f9c2abf', 0, NULL, NULL, N'Related Media', N'umbMedia', 1)
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias], [isDependency]) VALUES (5, N'0b93e414-5abe-36ec-a6bb-516e56f12238', 0, NULL, NULL, N'Related Document', N'umbDocument', 1)
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoServer] ON 

INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isSchedulingPublisher]) VALUES (1, N'https://localhost:44305/', N'HEMELTON_SMITH/5bd618a8aa427834f5241c6f837c254d064ef219', CAST(N'2025-01-30T20:16:21.117' AS DateTime), CAST(N'2025-02-19T23:43:31.393' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[umbracoServer] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoUser] ON 

INSERT [dbo].[umbracoUser] ([id], [userDisabled], [key], [userNoConsole], [userName], [userLogin], [userPassword], [passwordConfig], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate], [emailConfirmedDate], [invitedDate], [createDate], [updateDate], [kind], [avatar]) VALUES (-1, 0, N'1e70f841-c261-413b-abb2-2d68cdb96094', 0, N'Smith Chonco', N'hemeltonsmith@gmail.com', N'AQAAAAIAAYagAAAAECCBCjqkYezD1UD3sDIxlmREmNkCWgaS/pyGmV3DzBG82zl+fg1eaMw2SSHnzEHPdA==', N'{"hashAlgorithm":"PBKDF2.ASPNETCORE.V3"}', N'hemeltonsmith@gmail.com', N'en-US', N'TYYE7KRPVQ5Z5BP45XIH2VUE47CZ5TWG', NULL, NULL, CAST(N'2025-01-30T20:15:56.720' AS DateTime), CAST(N'2025-02-19T23:43:37.367' AS DateTime), NULL, NULL, CAST(N'2025-01-30T20:15:48.787' AS DateTime), CAST(N'2025-02-19T23:43:38.250' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
GO
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 1)
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 5)
GO
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] ON 

INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (1, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'admin', N'Administrators', NULL, CAST(N'2025-01-30T20:15:50.200' AS DateTime), CAST(N'2025-01-30T20:15:50.200' AS DateTime), N'icon-medal', 1, -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (2, N'9fc2a16f-528c-46d6-a014-75bf4ec2480c', N'writer', N'Writers', NULL, CAST(N'2025-01-30T20:15:50.397' AS DateTime), CAST(N'2025-01-30T20:15:50.397' AS DateTime), N'icon-edit', 1, -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (3, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'editor', N'Editors', NULL, CAST(N'2025-01-30T20:15:50.400' AS DateTime), CAST(N'2025-01-30T20:15:50.400' AS DateTime), N'icon-tools', 1, -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (4, N'f2012e4c-d232-4bd1-8eae-4384032d97d8', N'translator', N'Translators', NULL, CAST(N'2025-01-30T20:15:50.400' AS DateTime), CAST(N'2025-01-30T20:15:50.400' AS DateTime), N'icon-globe', 1, -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [key], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [hasAccessToAllLanguages], [startContentId], [startMediaId]) VALUES (5, N'8c6ad70f-d307-4e4a-af58-72c2e4e9439d', N'sensitiveData', N'Sensitive data', NULL, CAST(N'2025-01-30T20:15:50.400' AS DateTime), CAST(N'2025-01-30T20:15:50.400' AS DateTime), N'icon-lock', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] OFF
GO
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'member')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'packages')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'settings')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'translation')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'users')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (2, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (4, N'translation')
GO
SET IDENTITY_INSERT [dbo].[umbracoUserGroup2Permission] ON 

INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (36, N'f2012e4c-d232-4bd1-8eae-4384032d97d8', N'Umb.Document.Update')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (37, N'f2012e4c-d232-4bd1-8eae-4384032d97d8', N'Umb.Document.Read')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (1, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Create')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (2, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Update')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (3, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Delete')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (4, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Move')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (5, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Duplicate')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (6, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Sort')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (7, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Rollback')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (8, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.PublicAccess')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (9, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.CultureAndHostnames')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (10, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Publish')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (11, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Permissions')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (12, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Unpublish')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (13, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Read')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (14, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.CreateBlueprint')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (15, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'Umb.Document.Notifications')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (16, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N':')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (17, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'5')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (18, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'7')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (19, N'e5e7f6c8-7f9c-4b5b-8d5d-9e1e5a4f7e4d', N'T')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (20, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Create')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (21, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Update')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (22, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Delete')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (23, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Move')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (24, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Duplicate')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (25, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Sort')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (26, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Rollback')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (27, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.PublicAccess')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (28, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Publish')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (29, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Unpublish')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (30, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Read')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (31, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.CreateBlueprint')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (32, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'Umb.Document.Notifications')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (33, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N':')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (34, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'5')
INSERT [dbo].[umbracoUserGroup2Permission] ([id], [userGroupKey], [permission]) VALUES (35, N'44dc260e-b4d4-4dd9-9081-eec5598f1641', N'T')
SET IDENTITY_INSERT [dbo].[umbracoUserGroup2Permission] OFF
GO
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'93467421-0005-40ce-8d5b-279d5a9e7f74', -1, CAST(N'2025-02-19T21:43:40.180' AS DateTime), CAST(N'2025-02-19T21:43:40.180' AS DateTime), NULL, N'::1')
GO
/****** Object:  Index [IX_cmsContentNu_published]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_cmsContentNu_published] ON [dbo].[cmsContentNu]
(
	[published] ASC,
	[nodeId] ASC,
	[rv] ASC
)
INCLUDE([dataRaw]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsContentType]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentType] ON [dbo].[cmsContentType]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsContentType_icon]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_cmsContentType_icon] ON [dbo].[cmsContentType]
(
	[icon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDictionary_id]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDictionary_id] ON [dbo].[cmsDictionary]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsDictionary_key]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDictionary_key] ON [dbo].[cmsDictionary]
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDictionary_Parent]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_cmsDictionary_Parent] ON [dbo].[cmsDictionary]
(
	[parent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsLanguageText_languageId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsLanguageText_languageId] ON [dbo].[cmsLanguageText]
(
	[languageId] ASC,
	[UniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsMember_LoginName]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_cmsMember_LoginName] ON [dbo].[cmsMember]
(
	[LoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsPropertyTypeAlias]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyTypeAlias] ON [dbo].[cmsPropertyType]
(
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyTypeUniqueID]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeUniqueID] ON [dbo].[cmsPropertyType]
(
	[UniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyTypeGroupUniqueID]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeGroupUniqueID] ON [dbo].[cmsPropertyTypeGroup]
(
	[uniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsTagRelationship_tagId_nodeId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_cmsTagRelationship_tagId_nodeId] ON [dbo].[cmsTagRelationship]
(
	[tagId] ASC,
	[nodeId] ASC
)
INCLUDE([propertyTypeId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsTags]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTags] ON [dbo].[cmsTags]
(
	[group] ASC,
	[tag] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsTags_LanguageId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_cmsTags_LanguageId] ON [dbo].[cmsTags]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsTags_languageId_group]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_cmsTags_languageId_group] ON [dbo].[cmsTags]
(
	[languageId] ASC,
	[group] ASC
)
INCLUDE([id],[tag]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsTemplate_nodeId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTemplate_nodeId] ON [dbo].[cmsTemplate]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoAccess_nodeId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoAccess_nodeId] ON [dbo].[umbracoAccess]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoAccessRule]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoAccessRule] ON [dbo].[umbracoAccessRule]
(
	[ruleValue] ASC,
	[ruleType] ASC,
	[accessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersion_Current]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoContentVersion_Current] ON [dbo].[umbracoContentVersion]
(
	[current] ASC
)
INCLUDE([nodeId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersion_NodeId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoContentVersion_NodeId] ON [dbo].[umbracoContentVersion]
(
	[nodeId] ASC,
	[current] ASC
)
INCLUDE([id],[versionDate],[text],[userId],[preventCleanup]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersionCultureVariation_LanguageId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoContentVersionCultureVariation_LanguageId] ON [dbo].[umbracoContentVersionCultureVariation]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersionCultureVariation_VersionId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoContentVersionCultureVariation_VersionId] ON [dbo].[umbracoContentVersionCultureVariation]
(
	[versionId] ASC,
	[languageId] ASC
)
INCLUDE([id],[name],[date],[availableUserId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoCreatedPackageSchema_Name]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoCreatedPackageSchema_Name] ON [dbo].[umbracoCreatedPackageSchema]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocument_Published]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoDocument_Published] ON [dbo].[umbracoDocument]
(
	[published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocumentCultureVariation_LanguageId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoDocumentCultureVariation_LanguageId] ON [dbo].[umbracoDocumentCultureVariation]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocumentCultureVariation_NodeId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoDocumentCultureVariation_NodeId] ON [dbo].[umbracoDocumentCultureVariation]
(
	[nodeId] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_umbracoDocumentUrl]    Script Date: 2025/02/20 00:08:02 ******/
ALTER TABLE [dbo].[umbracoDocumentUrl] ADD  CONSTRAINT [PK_umbracoDocumentUrl] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocumentVersion_id_published]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoDocumentVersion_id_published] ON [dbo].[umbracoDocumentVersion]
(
	[id] ASC,
	[published] ASC
)
INCLUDE([templateId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocumentVersion_published]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoDocumentVersion_published] ON [dbo].[umbracoDocumentVersion]
(
	[published] ASC
)
INCLUDE([id],[templateId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoExternalLogin_LoginProvider]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoExternalLogin_LoginProvider] ON [dbo].[umbracoExternalLogin]
(
	[loginProvider] ASC,
	[userOrMemberKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoExternalLogin_ProviderKey]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoExternalLogin_ProviderKey] ON [dbo].[umbracoExternalLogin]
(
	[loginProvider] ASC,
	[providerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoExternalLogin_userOrMemberKey]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoExternalLogin_userOrMemberKey] ON [dbo].[umbracoExternalLogin]
(
	[userOrMemberKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoExternalLoginToken_Name]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoExternalLoginToken_Name] ON [dbo].[umbracoExternalLoginToken]
(
	[externalLoginId] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoLanguage_fallbackLanguageId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLanguage_fallbackLanguageId] ON [dbo].[umbracoLanguage]
(
	[fallbackLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoLanguage_languageISOCode]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoLanguage_languageISOCode] ON [dbo].[umbracoLanguage]
(
	[languageISOCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoLog]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLog] ON [dbo].[umbracoLog]
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoLog_datestamp]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLog_datestamp] ON [dbo].[umbracoLog]
(
	[Datestamp] ASC,
	[userId] ASC,
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoLog_datestamp_logheader]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLog_datestamp_logheader] ON [dbo].[umbracoLog]
(
	[Datestamp] ASC,
	[logHeader] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LogViewerQuery_name]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LogViewerQuery_name] ON [dbo].[umbracoLogViewerQuery]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoMediaVersion]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoMediaVersion] ON [dbo].[umbracoMediaVersion]
(
	[id] ASC,
	[path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_Level]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_Level] ON [dbo].[umbracoNode]
(
	[level] ASC,
	[parentId] ASC,
	[sortOrder] ASC,
	[nodeObjectType] ASC,
	[trashed] ASC
)
INCLUDE([nodeUser],[path],[uniqueId],[createDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_ObjectType]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_ObjectType] ON [dbo].[umbracoNode]
(
	[nodeObjectType] ASC,
	[trashed] ASC
)
INCLUDE([uniqueId],[parentId],[level],[path],[sortOrder],[nodeUser],[text],[createDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_ObjectType_trashed_sorted]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_ObjectType_trashed_sorted] ON [dbo].[umbracoNode]
(
	[nodeObjectType] ASC,
	[trashed] ASC,
	[sortOrder] ASC,
	[id] ASC
)
INCLUDE([uniqueId],[parentId],[level],[path],[nodeUser],[text],[createDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_parentId_nodeObjectType]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_parentId_nodeObjectType] ON [dbo].[umbracoNode]
(
	[parentId] ASC,
	[nodeObjectType] ASC
)
INCLUDE([trashed],[nodeUser],[level],[path],[sortOrder],[uniqueId],[text],[createDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoNode_Path]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_Path] ON [dbo].[umbracoNode]
(
	[path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_Trashed]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_Trashed] ON [dbo].[umbracoNode]
(
	[trashed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_UniqueId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoNode_UniqueId] ON [dbo].[umbracoNode]
(
	[uniqueId] ASC
)
INCLUDE([parentId],[level],[path],[sortOrder],[trashed],[nodeUser],[text],[createDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoOpenIddictApplications_ClientId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoOpenIddictApplications_ClientId] ON [dbo].[umbracoOpenIddictApplications]
(
	[ClientId] ASC
)
WHERE ([ClientId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoOpenIddictAuthorizations_ApplicationId_Status_Subject_Type]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoOpenIddictAuthorizations_ApplicationId_Status_Subject_Type] ON [dbo].[umbracoOpenIddictAuthorizations]
(
	[ApplicationId] ASC,
	[Status] ASC,
	[Subject] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoOpenIddictScopes_Name]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoOpenIddictScopes_Name] ON [dbo].[umbracoOpenIddictScopes]
(
	[Name] ASC
)
WHERE ([Name] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoOpenIddictTokens_ApplicationId_Status_Subject_Type]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoOpenIddictTokens_ApplicationId_Status_Subject_Type] ON [dbo].[umbracoOpenIddictTokens]
(
	[ApplicationId] ASC,
	[Status] ASC,
	[Subject] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoOpenIddictTokens_AuthorizationId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoOpenIddictTokens_AuthorizationId] ON [dbo].[umbracoOpenIddictTokens]
(
	[AuthorizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoOpenIddictTokens_ReferenceId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoOpenIddictTokens_ReferenceId] ON [dbo].[umbracoOpenIddictTokens]
(
	[ReferenceId] ASC
)
WHERE ([ReferenceId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoPropertyData_LanguageId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoPropertyData_LanguageId] ON [dbo].[umbracoPropertyData]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoPropertyData_PropertyTypeId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoPropertyData_PropertyTypeId] ON [dbo].[umbracoPropertyData]
(
	[propertyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoPropertyData_Segment]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoPropertyData_Segment] ON [dbo].[umbracoPropertyData]
(
	[segment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoPropertyData_VersionId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoPropertyData_VersionId] ON [dbo].[umbracoPropertyData]
(
	[versionId] ASC,
	[propertyTypeId] ASC,
	[languageId] ASC,
	[segment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoRedirectUrl]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRedirectUrl] ON [dbo].[umbracoRedirectUrl]
(
	[urlHash] ASC,
	[contentKey] ASC,
	[culture] ASC,
	[createDateUtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoRedirectUrl_culture_hash]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoRedirectUrl_culture_hash] ON [dbo].[umbracoRedirectUrl]
(
	[createDateUtc] ASC
)
INCLUDE([culture],[url],[urlHash],[contentKey]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoRelation_parentChildType]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelation_parentChildType] ON [dbo].[umbracoRelation]
(
	[parentId] ASC,
	[childId] ASC,
	[relType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoRelationType_alias]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_alias] ON [dbo].[umbracoRelationType]
(
	[alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoRelationType_name]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_name] ON [dbo].[umbracoRelationType]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoRelationType_UniqueId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_UniqueId] ON [dbo].[umbracoRelationType]
(
	[typeUniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_computerName]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_computerName] ON [dbo].[umbracoServer]
(
	[computerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoServer_isActive]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoServer_isActive] ON [dbo].[umbracoServer]
(
	[isActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoTwoFactorLogin_ProviderName]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoTwoFactorLogin_ProviderName] ON [dbo].[umbracoTwoFactorLogin]
(
	[providerName] ASC,
	[userOrMemberKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoTwoFactorLogin_userOrMemberKey]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoTwoFactorLogin_userOrMemberKey] ON [dbo].[umbracoTwoFactorLogin]
(
	[userOrMemberKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUser_userKey]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUser_userKey] ON [dbo].[umbracoUser]
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoUser_userLogin]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUser_userLogin] ON [dbo].[umbracoUser]
(
	[userLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserDataDto_UserKey_Group_Identifier]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUserDataDto_UserKey_Group_Identifier] ON [dbo].[umbracoUserData]
(
	[userKey] ASC
)
INCLUDE([group],[identifier]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoUserGroup_userGroupAlias]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserGroup_userGroupAlias] ON [dbo].[umbracoUserGroup]
(
	[userGroupAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserGroup_userGroupKey]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserGroup_userGroupKey] ON [dbo].[umbracoUserGroup]
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoUserGroup_userGroupName]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserGroup_userGroupName] ON [dbo].[umbracoUserGroup]
(
	[userGroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserGroup2GranularPermissionDto_UniqueId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUserGroup2GranularPermissionDto_UniqueId] ON [dbo].[umbracoUserGroup2GranularPermission]
(
	[uniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserGroup2GranularPermissionDto_UserGroupKey_UniqueId]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUserGroup2GranularPermissionDto_UserGroupKey_UniqueId] ON [dbo].[umbracoUserGroup2GranularPermission]
(
	[userGroupKey] ASC
)
INCLUDE([uniqueId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserGroup2Permission_userGroupKey]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUserGroup2Permission_userGroupKey] ON [dbo].[umbracoUserGroup2Permission]
(
	[userGroupKey] ASC
)
INCLUDE([permission]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserLogin_lastValidatedUtc]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUserLogin_lastValidatedUtc] ON [dbo].[umbracoUserLogin]
(
	[lastValidatedUtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserStartNode_startNodeType]    Script Date: 2025/02/20 00:08:02 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserStartNode_startNodeType] ON [dbo].[umbracoUserStartNode]
(
	[startNodeType] ASC,
	[startNode] ASC,
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoWebhookLog_date]    Script Date: 2025/02/20 00:08:02 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoWebhookLog_date] ON [dbo].[umbracoWebhookLog]
(
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isElement]  DEFAULT ('0') FOR [isElement]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_isLockedOut]  DEFAULT ('0') FOR [isLockedOut]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_isApproved]  DEFAULT ('1') FOR [isApproved]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_isSensitive]  DEFAULT ('0') FOR [isSensitive]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_labelOnTop]  DEFAULT ('0') FOR [labelOnTop]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_UniqueID]  DEFAULT (newid()) FOR [UniqueID]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD  CONSTRAINT [DF_cmsPropertyTypeGroup_uniqueID]  DEFAULT (newid()) FOR [uniqueID]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD  CONSTRAINT [DF_cmsPropertyTypeGroup_type]  DEFAULT ('0') FOR [type]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAudit] ADD  CONSTRAINT [DF_umbracoAudit_eventDateUtc]  DEFAULT (getdate()) FOR [eventDateUtc]
GO
ALTER TABLE [dbo].[umbracoCacheInstruction] ADD  CONSTRAINT [DF_umbracoCacheInstruction_instructionCount]  DEFAULT ('1') FOR [instructionCount]
GO
ALTER TABLE [dbo].[umbracoConsent] ADD  CONSTRAINT [DF_umbracoConsent_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoContentVersion] ADD  CONSTRAINT [DF_umbracoContentVersion_versionDate]  DEFAULT (getdate()) FOR [versionDate]
GO
ALTER TABLE [dbo].[umbracoContentVersion] ADD  CONSTRAINT [DF_umbracoContentVersion_preventCleanup]  DEFAULT ('0') FOR [preventCleanup]
GO
ALTER TABLE [dbo].[umbracoCreatedPackageSchema] ADD  CONSTRAINT [DF_umbracoCreatedPackageSchema_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoExternalLogin] ADD  CONSTRAINT [DF_umbracoExternalLogin_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoExternalLoginToken] ADD  CONSTRAINT [DF_umbracoExternalLoginToken_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoKeyValue] ADD  CONSTRAINT [DF_umbracoKeyValue_updated]  DEFAULT (getdate()) FOR [updated]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_isDefaultVariantLang]  DEFAULT ('0') FOR [isDefaultVariantLang]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_uniqueId]  DEFAULT (newid()) FOR [uniqueId]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
ALTER TABLE [dbo].[umbracoRelationType] ADD  CONSTRAINT [DF_umbracoRelationType_isDependency]  DEFAULT ('0') FOR [isDependency]
GO
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_key]  DEFAULT (newid()) FOR [key]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_kind]  DEFAULT ('0') FOR [kind]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_key]  DEFAULT (newid()) FOR [key]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[cmsContentNu]  WITH NOCHECK ADD  CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cmsContentNu] CHECK CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
ALTER TABLE [dbo].[cmsDictionary]  WITH CHECK ADD  CONSTRAINT [FK_cmsDictionary_cmsDictionary_id] FOREIGN KEY([parent])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsDictionary] CHECK CONSTRAINT [FK_cmsDictionary_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[umbracoDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsContent]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
ALTER TABLE [dbo].[cmsTags]  WITH CHECK ADD  CONSTRAINT [FK_cmsTags_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsTags] CHECK CONSTRAINT [FK_cmsTags_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id1] FOREIGN KEY([loginNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id1]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id2] FOREIGN KEY([noAccessNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id2]
GO
ALTER TABLE [dbo].[umbracoAccessRule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id] FOREIGN KEY([accessId])
REFERENCES [dbo].[umbracoAccess] ([id])
GO
ALTER TABLE [dbo].[umbracoAccessRule] CHECK CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id]
GO
ALTER TABLE [dbo].[umbracoContent]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContent_cmsContentType_NodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContent] CHECK CONSTRAINT [FK_umbracoContent_cmsContentType_NodeId]
GO
ALTER TABLE [dbo].[umbracoContent]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoContent] CHECK CONSTRAINT [FK_umbracoContent_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCleanupPolicy]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCleanupPolicy_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentVersionCleanupPolicy] CHECK CONSTRAINT [FK_umbracoContentVersionCleanupPolicy_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id] FOREIGN KEY([availableUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoDataType]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDataType] CHECK CONSTRAINT [FK_umbracoDataType_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocument]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoDocument] CHECK CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocumentUrl]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoDocumentUrl_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentUrl] CHECK CONSTRAINT [FK_umbracoDocumentUrl_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoDocumentUrl]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoDocumentUrl_umbracoNode_uniqueId] FOREIGN KEY([uniqueId])
REFERENCES [dbo].[umbracoNode] ([uniqueId])
GO
ALTER TABLE [dbo].[umbracoDocumentUrl] CHECK CONSTRAINT [FK_umbracoDocumentUrl_umbracoNode_uniqueId]
GO
ALTER TABLE [dbo].[umbracoDocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentVersion_cmsTemplate_nodeId] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoDocumentVersion] CHECK CONSTRAINT [FK_umbracoDocumentVersion_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[umbracoDocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentVersion] CHECK CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoDomain]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomain_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomain] CHECK CONSTRAINT [FK_umbracoDomain_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoExternalLoginToken]  WITH CHECK ADD  CONSTRAINT [FK_umbracoExternalLoginToken_umbracoExternalLogin_id] FOREIGN KEY([externalLoginId])
REFERENCES [dbo].[umbracoExternalLogin] ([id])
GO
ALTER TABLE [dbo].[umbracoExternalLoginToken] CHECK CONSTRAINT [FK_umbracoExternalLoginToken_umbracoExternalLogin_id]
GO
ALTER TABLE [dbo].[umbracoLanguage]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id] FOREIGN KEY([fallbackLanguageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoLanguage] CHECK CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoLog]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLog_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoLog] CHECK CONSTRAINT [FK_umbracoLog_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoMediaVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoMediaVersion] CHECK CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoUser_id] FOREIGN KEY([nodeUser])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoOpenIddictAuthorizations]  WITH CHECK ADD  CONSTRAINT [FK_umbracoOpenIddictAuthorizations_umbracoOpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[umbracoOpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[umbracoOpenIddictAuthorizations] CHECK CONSTRAINT [FK_umbracoOpenIddictAuthorizations_umbracoOpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[umbracoOpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_umbracoOpenIddictTokens_umbracoOpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[umbracoOpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[umbracoOpenIddictTokens] CHECK CONSTRAINT [FK_umbracoOpenIddictTokens_umbracoOpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[umbracoOpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_umbracoOpenIddictTokens_umbracoOpenIddictAuthorizations_AuthorizationId] FOREIGN KEY([AuthorizationId])
REFERENCES [dbo].[umbracoOpenIddictAuthorizations] ([Id])
GO
ALTER TABLE [dbo].[umbracoOpenIddictTokens] CHECK CONSTRAINT [FK_umbracoOpenIddictTokens_umbracoOpenIddictAuthorizations_AuthorizationId]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoRedirectUrl]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID] FOREIGN KEY([contentKey])
REFERENCES [dbo].[umbracoNode] ([uniqueId])
GO
ALTER TABLE [dbo].[umbracoRedirectUrl] CHECK CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
ALTER TABLE [dbo].[umbracoUser2ClientId]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2ClientId_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2ClientId] CHECK CONSTRAINT [FK_umbracoUser2ClientId_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserData_umbracoUser_key] FOREIGN KEY([userKey])
REFERENCES [dbo].[umbracoUser] ([key])
GO
ALTER TABLE [dbo].[umbracoUserData] CHECK CONSTRAINT [FK_umbracoUserData_umbracoUser_key]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startContentId_umbracoNode_id] FOREIGN KEY([startContentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startContentId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startMediaId_umbracoNode_id] FOREIGN KEY([startMediaId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startMediaId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2App]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2App] CHECK CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2GranularPermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2GranularPermission_umbracoNode_uniqueId] FOREIGN KEY([uniqueId])
REFERENCES [dbo].[umbracoNode] ([uniqueId])
GO
ALTER TABLE [dbo].[umbracoUserGroup2GranularPermission] CHECK CONSTRAINT [FK_umbracoUserGroup2GranularPermission_umbracoNode_uniqueId]
GO
ALTER TABLE [dbo].[umbracoUserGroup2GranularPermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2GranularPermission_umbracoUserGroup_key] FOREIGN KEY([userGroupKey])
REFERENCES [dbo].[umbracoUserGroup] ([key])
GO
ALTER TABLE [dbo].[umbracoUserGroup2GranularPermission] CHECK CONSTRAINT [FK_umbracoUserGroup2GranularPermission_umbracoUserGroup_key]
GO
ALTER TABLE [dbo].[umbracoUserGroup2Language]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2Language_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoUserGroup2Language] CHECK CONSTRAINT [FK_umbracoUserGroup2Language_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2Language]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2Language_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoUserGroup2Language] CHECK CONSTRAINT [FK_umbracoUserGroup2Language_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2Permission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2Permission_umbracoUserGroup_key] FOREIGN KEY([userGroupKey])
REFERENCES [dbo].[umbracoUserGroup] ([key])
GO
ALTER TABLE [dbo].[umbracoUserGroup2Permission] CHECK CONSTRAINT [FK_umbracoUserGroup2Permission_umbracoUserGroup_key]
GO
ALTER TABLE [dbo].[umbracoUserLogin]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserLogin] CHECK CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id] FOREIGN KEY([startNode])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoWebhook2ContentTypeKeys]  WITH CHECK ADD  CONSTRAINT [FK_umbracoWebhook2ContentTypeKeys_umbracoWebhook_id] FOREIGN KEY([webhookId])
REFERENCES [dbo].[umbracoWebhook] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoWebhook2ContentTypeKeys] CHECK CONSTRAINT [FK_umbracoWebhook2ContentTypeKeys_umbracoWebhook_id]
GO
ALTER TABLE [dbo].[umbracoWebhook2Events]  WITH CHECK ADD  CONSTRAINT [FK_umbracoWebhook2Events_umbracoWebhook_id] FOREIGN KEY([webhookId])
REFERENCES [dbo].[umbracoWebhook] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoWebhook2Events] CHECK CONSTRAINT [FK_umbracoWebhook2Events_umbracoWebhook_id]
GO
ALTER TABLE [dbo].[umbracoWebhook2Headers]  WITH CHECK ADD  CONSTRAINT [FK_umbracoWebhook2Headers_umbracoWebhook_id] FOREIGN KEY([webhookId])
REFERENCES [dbo].[umbracoWebhook] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[umbracoWebhook2Headers] CHECK CONSTRAINT [FK_umbracoWebhook2Headers_umbracoWebhook_id]
GO
USE [master]
GO
ALTER DATABASE [BluegrassAssessment] SET  READ_WRITE 
GO
