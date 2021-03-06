USE [master]
GO
/****** Object:  Database [EducationBoardInterView]    Script Date: 12-Feb-21 11:08:35 AM ******/
CREATE DATABASE [EducationBoardInterView]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EducationBoardInterView', FILENAME = N'D:\Installded Software(No Access)\SQL SERVER 2017\MSSQL14.MSSQLSERVER\MSSQL\DATA\EducationBoardInterView.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EducationBoardInterView_log', FILENAME = N'D:\Installded Software(No Access)\SQL SERVER 2017\MSSQL14.MSSQLSERVER\MSSQL\DATA\EducationBoardInterView_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EducationBoardInterView] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EducationBoardInterView].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EducationBoardInterView] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET ARITHABORT OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EducationBoardInterView] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EducationBoardInterView] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EducationBoardInterView] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EducationBoardInterView] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EducationBoardInterView] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET RECOVERY FULL 
GO
ALTER DATABASE [EducationBoardInterView] SET  MULTI_USER 
GO
ALTER DATABASE [EducationBoardInterView] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EducationBoardInterView] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EducationBoardInterView] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EducationBoardInterView] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EducationBoardInterView] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EducationBoardInterView', N'ON'
GO
ALTER DATABASE [EducationBoardInterView] SET QUERY_STORE = OFF
GO
USE [EducationBoardInterView]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12-Feb-21 11:08:36 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12-Feb-21 11:08:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12-Feb-21 11:08:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12-Feb-21 11:08:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12-Feb-21 11:08:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[fullName] [nvarchar](max) NULL,
	[employeeCode] [nvarchar](max) NULL,
	[isVerified] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[createdAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](120) NULL,
	[updatedAt] [datetime2](7) NULL,
	[updatedBy] [nvarchar](120) NULL,
	[accountType] [int] NULL,
	[imgUrl] [nvarchar](max) NULL,
	[roleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Depts]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Depts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Depts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[divisionId] [int] NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Divisions]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Divisions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NavBands]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavBands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[navParentId] [int] NULL,
	[name] [nvarchar](150) NULL,
	[nameBN] [nvarchar](150) NULL,
	[shortOrder] [int] NULL,
	[imgClass] [nvarchar](150) NULL,
 CONSTRAINT [PK_NavBands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NavItems]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[navBandId] [int] NULL,
	[name] [nvarchar](250) NULL,
	[nameBN] [nvarchar](250) NULL,
	[area] [nvarchar](250) NULL,
	[controller] [nvarchar](250) NULL,
	[action] [nvarchar](250) NULL,
	[imgClass] [nvarchar](250) NULL,
	[activeLi] [nvarchar](250) NULL,
	[status] [int] NULL,
	[displayOrder] [int] NULL,
 CONSTRAINT [PK_NavItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NavModules]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavModules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[name] [nvarchar](150) NULL,
	[nameBN] [nvarchar](150) NULL,
	[shortOrder] [int] NULL,
	[imgClass] [nvarchar](150) NULL,
 CONSTRAINT [PK_NavModules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NavParents]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavParents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[navModuleId] [int] NULL,
	[name] [nvarchar](150) NULL,
	[nameBN] [nvarchar](150) NULL,
	[shortOrder] [int] NULL,
	[imgClass] [nvarchar](150) NULL,
 CONSTRAINT [PK_NavParents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schools]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schools](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[districtId] [int] NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Schools] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[schoolId] [int] NULL,
	[deptId] [int] NULL,
	[name] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccessPages]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccessPages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[roleId] [nvarchar](450) NULL,
	[moduleId] [int] NULL,
	[parentId] [int] NULL,
	[bandId] [int] NULL,
	[navItemId] [int] NULL,
 CONSTRAINT [PK_UserAccessPages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogHistories]    Script Date: 12-Feb-21 11:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[isDelete] [bit] NULL,
	[createdAt] [datetime2](7) NULL,
	[updatedAt] [datetime2](7) NULL,
	[createdBy] [nvarchar](250) NULL,
	[updatedBy] [nvarchar](250) NULL,
	[userId] [nvarchar](250) NULL,
	[logTime] [datetime2](7) NOT NULL,
	[status] [int] NULL,
	[ipAddress] [nvarchar](250) NULL,
	[browserName] [nvarchar](250) NULL,
	[pcName] [nvarchar](250) NULL,
 CONSTRAINT [PK_UserLogHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210206123059_v_initial', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210207072141_v_navbar_band_table_update', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210207114119_v_rolename_in_app_user_model', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210208073659_v_user_access_page_entity', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210211181054_v_education_board_table_add', N'2.2.6-servicing-10079')
SET IDENTITY_INSERT [dbo].[Depts] ON 

INSERT [dbo].[Depts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [name]) VALUES (1, NULL, NULL, NULL, NULL, NULL, N'Science')
INSERT [dbo].[Depts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [name]) VALUES (2, NULL, NULL, NULL, NULL, NULL, N'Business')
INSERT [dbo].[Depts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [name]) VALUES (3, NULL, NULL, NULL, NULL, NULL, N'Arts')
SET IDENTITY_INSERT [dbo].[Depts] OFF
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (1, NULL, NULL, NULL, NULL, NULL, 1, N'Gazipur')
INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (2, NULL, NULL, NULL, NULL, NULL, 1, N'Dhaka District')
INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (3, NULL, NULL, NULL, NULL, NULL, 1, N'Naraingong')
INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (4, NULL, NULL, NULL, NULL, NULL, 1, N'Rajbari')
INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (5, NULL, NULL, NULL, NULL, NULL, 2, N'Cumilla')
INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (6, NULL, NULL, NULL, NULL, NULL, 2, N'Chadpur')
INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (7, NULL, NULL, NULL, NULL, NULL, 2, N'Nowakhali')
INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (8, NULL, NULL, NULL, NULL, NULL, 2, N'Feni')
INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (9, NULL, NULL, NULL, NULL, NULL, 3, N'Sylhet District')
INSERT [dbo].[Districts] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [divisionId], [name]) VALUES (10, NULL, NULL, NULL, NULL, NULL, 4, N'Khulna District')
SET IDENTITY_INSERT [dbo].[Districts] OFF
SET IDENTITY_INSERT [dbo].[Divisions] ON 

INSERT [dbo].[Divisions] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [name]) VALUES (1, NULL, NULL, NULL, NULL, NULL, N'Dhaka')
INSERT [dbo].[Divisions] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [name]) VALUES (2, NULL, NULL, NULL, NULL, NULL, N'Chittagong')
INSERT [dbo].[Divisions] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [name]) VALUES (3, NULL, NULL, NULL, NULL, NULL, N'Sylhet')
INSERT [dbo].[Divisions] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [name]) VALUES (4, NULL, NULL, NULL, NULL, NULL, N'Khulna')
SET IDENTITY_INSERT [dbo].[Divisions] OFF
SET IDENTITY_INSERT [dbo].[Schools] ON 

INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (1, NULL, NULL, NULL, NULL, NULL, 1, N'Gazipur Govt School')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (2, NULL, NULL, NULL, NULL, NULL, 1, N'Gazipur High School')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (3, NULL, NULL, NULL, NULL, NULL, 1, N'Gazipur Primary School')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (4, NULL, NULL, NULL, NULL, NULL, 2, N'Dhaka Cadate School')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (5, NULL, NULL, NULL, NULL, NULL, 2, N'Dhaka Govt')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (6, NULL, NULL, NULL, NULL, NULL, 2, N'Dhaka Ideal')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (7, NULL, NULL, NULL, NULL, NULL, 3, N'Naraingong Govt')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (8, NULL, NULL, NULL, NULL, NULL, 3, N'Naraingong High')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (9, NULL, NULL, NULL, NULL, NULL, 3, N'Naraingong Primary')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (10, NULL, NULL, NULL, NULL, NULL, 5, N'Cumilla Govt')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (11, NULL, NULL, NULL, NULL, NULL, 5, N'Cumilla Ideal')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (12, NULL, NULL, NULL, NULL, NULL, 5, N'Cumilla Model')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (13, NULL, NULL, NULL, NULL, NULL, 5, N'Cumilla Zilla')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (14, NULL, NULL, NULL, NULL, NULL, 6, N'Chadpur Govt')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (15, NULL, NULL, NULL, NULL, NULL, 6, N'Chadpur Model')
INSERT [dbo].[Schools] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [districtId], [name]) VALUES (16, NULL, NULL, NULL, NULL, NULL, 6, N'Chadpur Primary')
SET IDENTITY_INSERT [dbo].[Schools] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (1, NULL, NULL, NULL, NULL, NULL, 1, 1, N'Rahim', N'rahim@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (2, NULL, NULL, NULL, NULL, NULL, 1, 1, N'Karim', N'karim@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (3, NULL, NULL, NULL, NULL, NULL, 1, 2, N'Rina', N'rina@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (4, NULL, NULL, NULL, NULL, NULL, 1, 2, N'Mina', N'mina@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (5, NULL, NULL, NULL, NULL, NULL, 1, 3, N'Bob', N'bob@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (6, NULL, NULL, NULL, NULL, NULL, 1, 3, N'Jon', N'jon@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (7, NULL, NULL, NULL, NULL, NULL, 2, 1, N'Rahim', N'rahim@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (8, NULL, NULL, NULL, NULL, NULL, 2, 2, N'karim', N'karim@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (9, NULL, NULL, NULL, NULL, NULL, 2, 3, N'Rina', N'rina@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (10, NULL, NULL, NULL, NULL, NULL, 5, 1, N'Rahim', N'rahim@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (11, NULL, NULL, NULL, NULL, NULL, 5, 1, N'Karim', N'karim@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (12, NULL, NULL, NULL, NULL, NULL, 5, 1, N'Rina', N'rina@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (13, NULL, NULL, NULL, NULL, NULL, 5, 2, N'Mina', N'mina@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (14, NULL, NULL, NULL, NULL, NULL, 5, 2, N'Bob', N'bob@gmail.com')
INSERT [dbo].[Students] ([Id], [isDelete], [createdAt], [updatedAt], [createdBy], [updatedBy], [schoolId], [deptId], [name], [email]) VALUES (15, NULL, NULL, NULL, NULL, NULL, 5, 3, N'Jon', N'jon@gmail.com')
SET IDENTITY_INSERT [dbo].[Students] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Districts_divisionId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_Districts_divisionId] ON [dbo].[Districts]
(
	[divisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NavBands_navParentId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_NavBands_navParentId] ON [dbo].[NavBands]
(
	[navParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NavItems_navBandId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_NavItems_navBandId] ON [dbo].[NavItems]
(
	[navBandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NavParents_navModuleId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_NavParents_navModuleId] ON [dbo].[NavParents]
(
	[navModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Schools_districtId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_Schools_districtId] ON [dbo].[Schools]
(
	[districtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Students_deptId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_Students_deptId] ON [dbo].[Students]
(
	[deptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Students_schoolId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_Students_schoolId] ON [dbo].[Students]
(
	[schoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccessPages_bandId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserAccessPages_bandId] ON [dbo].[UserAccessPages]
(
	[bandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccessPages_moduleId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserAccessPages_moduleId] ON [dbo].[UserAccessPages]
(
	[moduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccessPages_navItemId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserAccessPages_navItemId] ON [dbo].[UserAccessPages]
(
	[navItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAccessPages_parentId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserAccessPages_parentId] ON [dbo].[UserAccessPages]
(
	[parentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserAccessPages_roleId]    Script Date: 12-Feb-21 11:08:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserAccessPages_roleId] ON [dbo].[UserAccessPages]
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_Districts_Divisions_divisionId] FOREIGN KEY([divisionId])
REFERENCES [dbo].[Divisions] ([Id])
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Divisions_divisionId]
GO
ALTER TABLE [dbo].[NavBands]  WITH CHECK ADD  CONSTRAINT [FK_NavBands_NavParents_navParentId] FOREIGN KEY([navParentId])
REFERENCES [dbo].[NavParents] ([Id])
GO
ALTER TABLE [dbo].[NavBands] CHECK CONSTRAINT [FK_NavBands_NavParents_navParentId]
GO
ALTER TABLE [dbo].[NavItems]  WITH CHECK ADD  CONSTRAINT [FK_NavItems_NavBands_navBandId] FOREIGN KEY([navBandId])
REFERENCES [dbo].[NavBands] ([Id])
GO
ALTER TABLE [dbo].[NavItems] CHECK CONSTRAINT [FK_NavItems_NavBands_navBandId]
GO
ALTER TABLE [dbo].[NavParents]  WITH CHECK ADD  CONSTRAINT [FK_NavParents_NavModules_navModuleId] FOREIGN KEY([navModuleId])
REFERENCES [dbo].[NavModules] ([Id])
GO
ALTER TABLE [dbo].[NavParents] CHECK CONSTRAINT [FK_NavParents_NavModules_navModuleId]
GO
ALTER TABLE [dbo].[Schools]  WITH CHECK ADD  CONSTRAINT [FK_Schools_Districts_districtId] FOREIGN KEY([districtId])
REFERENCES [dbo].[Districts] ([Id])
GO
ALTER TABLE [dbo].[Schools] CHECK CONSTRAINT [FK_Schools_Districts_districtId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Depts_deptId] FOREIGN KEY([deptId])
REFERENCES [dbo].[Depts] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Depts_deptId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Schools_schoolId] FOREIGN KEY([schoolId])
REFERENCES [dbo].[Schools] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Schools_schoolId]
GO
ALTER TABLE [dbo].[UserAccessPages]  WITH CHECK ADD  CONSTRAINT [FK_UserAccessPages_AspNetRoles_roleId] FOREIGN KEY([roleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[UserAccessPages] CHECK CONSTRAINT [FK_UserAccessPages_AspNetRoles_roleId]
GO
ALTER TABLE [dbo].[UserAccessPages]  WITH CHECK ADD  CONSTRAINT [FK_UserAccessPages_NavBands_bandId] FOREIGN KEY([bandId])
REFERENCES [dbo].[NavBands] ([Id])
GO
ALTER TABLE [dbo].[UserAccessPages] CHECK CONSTRAINT [FK_UserAccessPages_NavBands_bandId]
GO
ALTER TABLE [dbo].[UserAccessPages]  WITH CHECK ADD  CONSTRAINT [FK_UserAccessPages_NavItems_navItemId] FOREIGN KEY([navItemId])
REFERENCES [dbo].[NavItems] ([Id])
GO
ALTER TABLE [dbo].[UserAccessPages] CHECK CONSTRAINT [FK_UserAccessPages_NavItems_navItemId]
GO
ALTER TABLE [dbo].[UserAccessPages]  WITH CHECK ADD  CONSTRAINT [FK_UserAccessPages_NavModules_moduleId] FOREIGN KEY([moduleId])
REFERENCES [dbo].[NavModules] ([Id])
GO
ALTER TABLE [dbo].[UserAccessPages] CHECK CONSTRAINT [FK_UserAccessPages_NavModules_moduleId]
GO
ALTER TABLE [dbo].[UserAccessPages]  WITH CHECK ADD  CONSTRAINT [FK_UserAccessPages_NavParents_parentId] FOREIGN KEY([parentId])
REFERENCES [dbo].[NavParents] ([Id])
GO
ALTER TABLE [dbo].[UserAccessPages] CHECK CONSTRAINT [FK_UserAccessPages_NavParents_parentId]
GO
/****** Object:  StoredProcedure [dbo].[SP_GroupingStudentList]    Script Date: 12-Feb-21 11:08:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--	EXEC SP_GroupingStudentList

CREATE PROC [dbo].[SP_GroupingStudentList]
AS
BEGIN

select 
	D.name as Division, 
	isnull(Di.name ,'NO') as District, 
	ISNULL(S.name,'NO') as School, 
	ISNULL(Dept.name,'NO'), 
	COUNT(Stu.Id) as Total_Student
					from Divisions as D
					left join Districts as Di on D.Id = Di.divisionId
					left join Schools as S on Di.Id = S.districtId
					left join Students as Stu on S.Id = Stu.schoolId
					left join Depts as Dept on Stu.deptId = Dept.Id 
					group by D.name, Di.name, S.name, Dept.name 

--FOR XML PATH('')

END
GO
USE [master]
GO
ALTER DATABASE [EducationBoardInterView] SET  READ_WRITE 
GO
