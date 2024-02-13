USE [master]
GO
/****** Object:  Database [TestEGDB]    Script Date: 13/02/2024 02:39:17 p. m. ******/
CREATE DATABASE [TestEGDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestEGDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestEGDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestEGDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestEGDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TestEGDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestEGDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestEGDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestEGDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestEGDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestEGDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestEGDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestEGDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestEGDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestEGDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestEGDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestEGDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestEGDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestEGDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestEGDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestEGDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestEGDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TestEGDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestEGDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestEGDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestEGDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestEGDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestEGDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TestEGDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestEGDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TestEGDB] SET  MULTI_USER 
GO
ALTER DATABASE [TestEGDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestEGDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestEGDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestEGDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestEGDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestEGDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestEGDB', N'ON'
GO
ALTER DATABASE [TestEGDB] SET QUERY_STORE = OFF
GO
USE [TestEGDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/02/2024 02:39:17 p. m. ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 13/02/2024 02:39:17 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/02/2024 02:39:17 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/02/2024 02:39:17 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/02/2024 02:39:17 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/02/2024 02:39:17 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/02/2024 02:39:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 13/02/2024 02:39:17 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionTypes]    Script Date: 13/02/2024 02:39:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionTypes](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[LimitDays] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NOT NULL,
	[LastModifiedAt] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_PermissionTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240213194136_InitialMigration', N'6.0.26')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7c704b7f-32b0-4733-9926-f46fcbeb2385', N'Manager', N'MANAGER', N'47935e5c-2d79-41b9-9a6a-1ed33bb013bc')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'93d63382-8e51-4a50-a5a4-a7a9fd6ed41f', N'Admin', N'ADMIN', N'f83adf67-dab3-44a6-bb10-a9cf2a7ed584')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf', N'Employee', N'EMPLOYEE', N'6d9661aa-161e-45ab-95ff-3e5cf07f53cd')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cf669c4a-e8dd-4e83-a5e7-4c54b29a9767', N'Coordinator', N'COORDINATOR', N'9eb7057b-da1c-46e8-bcf1-36e4425a0138')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'898045a8-745f-4d3d-8d3b-2d58608b5f4e', N'7c704b7f-32b0-4733-9926-f46fcbeb2385')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'898045a8-745f-4d3d-8d3b-2d58608b5f4e', N'93d63382-8e51-4a50-a5a4-a7a9fd6ed41f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'00ab3f6c-47f4-4e81-9044-6a0825ab88ec', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'040525e4-6a0c-4cb7-beb8-832123de2f93', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'07effc49-3c1a-47dc-be19-b440365a8093', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0adbab3f-d882-4a58-b746-a57364ffb26a', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0b3f5782-8a8e-4ddc-a839-ba5c5b63409b', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0b5d6ca6-7a42-465b-b218-bc9bdec4a66f', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0b863d8f-cb83-4031-9922-ae2fe5f6a82b', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1062efb4-bcc0-40ad-8132-de20261f7d0c', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1065bf3d-5cca-4293-a7b5-3fc5f4c40495', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1340d664-b21b-47d9-afdf-89460b6e6508', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'177ef63d-84d3-4dfd-aa29-0474b7583c1f', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1fe59772-172c-4e4c-ba6a-b9a78eb71080', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'23698d71-9444-4dd5-9312-29780cfa69c7', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'24cc351d-fcad-446a-ad77-f48b61795da9', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'29797d98-6694-47b4-8f20-668921f564d8', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2db617da-0280-4b03-af30-240bcd5b1b75', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'338f2c0b-4e9b-4003-8e29-8d83411e46d0', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'35c498ed-5e20-48ec-a2a5-ff01b42e2cdf', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'36dc2e07-47ca-4d9f-8e0a-c47ca852c878', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'385a5cf4-e69e-47cb-b7cf-a6c3c385bce4', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38b4a2ec-6e1d-4147-9c40-8ada7a8e4473', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38b709b0-0343-46ce-970b-e0e50a68b204', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3ace2048-84cb-432d-843a-842abbc38ae5', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3ebda5dc-8fc3-4a12-91b1-11fbc5c326b4', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3edefb25-8430-4fe2-b927-0622e9b1432e', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'40fb4b0f-f3b0-42ed-ad00-0f7edc4ce1cb', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'42aac612-df35-4a37-b10d-310a115809dc', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'47cdd02f-8782-4bb2-9c37-bfd76cbb9cbb', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'488cfd6b-2f3d-4a61-8811-7f7bfb2d8e23', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4987422d-9d74-49d2-ae79-894d8d8b2d64', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4b17621a-643e-47e2-96f5-b1ad33c5efef', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4d776a1e-ed42-4716-8cbd-5cccb24de01c', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4e6124f6-d2ab-4bf7-8910-f41eba374c22', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'57c4a28a-c95a-40a2-aefa-fe8bf59a6c1d', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'59b262cd-7c34-4c14-99bc-509a726abccd', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'62e516ba-fee8-44c2-9a5c-29b66e889d8f', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'635be531-bf21-4079-8732-5e502dbaec8b', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6628e9b6-fe06-47b1-a5e4-99bfdbad94aa', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'66c86bd5-c475-43f3-b19f-5165d9ebcf30', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'68468c12-6c81-4215-b9dc-d3bac204b176', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'68572e22-5d1c-49d8-9077-66b43a58bee3', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6c039b31-10e5-4621-a258-018fb74954b8', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6e4a5974-c5b6-4214-a539-cf4867cc83e4', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6423e5-08ff-4d37-9e3d-02fea6837df4', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7431988c-c41a-4162-a054-5c6e7d6d11f2', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'74850911-cbf2-4b3a-bca3-b3b95f533d7b', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'770ce925-bebb-4ae2-8f0e-020b088f6099', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'778cc6e2-99e3-457a-9ad7-bde6a1c8e8cb', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'797fa8fc-f38d-46ba-9478-7dfd9eaba608', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7f91ac89-e869-40bf-ad03-46c6f5b6f291', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'80c6934b-0ab5-435e-86a8-ff5082138ee7', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'829d2cfb-6fa7-46a3-a2b7-bcb06ee4f964', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'830a1d2c-a007-4649-9376-7bc57f3d3169', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'83d89dec-a789-4772-a2a0-5567bbab7334', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84aec093-44d7-41aa-9134-b683b6e20c16', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'872c3199-0b34-48a5-9fad-801fde1b9938', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'878088da-dec0-438c-92cb-856ba33fe427', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'898045a8-745f-4d3d-8d3b-2d58608b5f4e', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8a1ae01c-8359-4a87-a721-bdc80e7d6936', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8b8dc9e1-6750-4012-9e11-869b3041a2e7', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8bdcdb08-7c9f-49e2-a672-941afe38f628', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8f0109d7-66e7-4857-b4de-7f05e9108f78', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8f54dad6-65ec-4392-8994-a2f2616002c4', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'92d36f82-99f7-4cae-a069-5479c4cbf1f5', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9840bf08-d6f7-49ff-b3ad-9d7326c4413f', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9c0e1309-7e57-4d5a-9fb1-903ae5509fd9', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a725b0de-3db1-4c51-b6ba-6eb66b31ae7b', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a72ae0ca-1707-4249-9df7-2f0666633b64', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a8d2bbba-99e4-4aa5-9e46-1693f12208c2', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ac27ce54-b258-467b-89f6-9394d3a5a66c', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae1db9b6-9afe-4dcd-9b6b-651b419a42d1', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'af7073c9-6505-48d1-b304-96e12bc12b66', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'afd05063-34bb-4e46-b9f5-b4fd267e6dd0', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b06c5a20-06c8-4067-abb8-295995182bff', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b2a6681f-8f7e-4fc7-a0a3-7a334e7c2941', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b97c2c41-b48a-495d-bed3-99953e8a456d', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'babfc9f3-ee59-4361-88cc-b9dfcc413bbd', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bbbb7d23-7cf3-4fbb-af6b-e29008db8ea3', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c4574c25-0c28-4397-bffb-c95239568d47', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c4ac37e9-4e92-409e-a3fb-faab6f80af12', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c5b39949-e550-4e89-b13c-432928e7519b', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c7e52e77-21f9-41f5-b773-3678677401be', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cfec291e-1222-4fe4-a46f-c6f57a21d9b8', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cff169c1-ec8a-4937-8889-39151966cebb', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cff81601-b00b-4c66-80f5-7aca9d9cf9a6', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd12d7b37-b068-4427-b4f3-e8ecfe0980f8', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd700ebb2-fc35-4017-82ef-5edaf215bfb7', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd72cd539-050d-4076-b577-b2238082321f', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd76d8a3e-0854-435b-9276-cc9f4380f69a', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd77346b7-e107-43ff-bfe0-8ea9fc720c46', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e3eddc21-7571-4088-ac2a-4a993f5631a7', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e901c0fd-9843-4a33-94f6-f42a27524bb0', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ea393e37-9e6e-46f7-8e52-c2a07eca31f3', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ec5fbb8c-993f-4ea2-af89-b7a3a98fafbc', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f0482c85-8ad5-4a3e-b3fe-ef2726256c27', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f33770ed-9ae1-49eb-9501-615492321da2', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fa0f7d40-d4b5-49de-adb1-be2f57f3fbbd', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fe6f6756-0fcf-4e7f-b0dc-078cf8f481d8', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ff1526d7-f90a-4f88-b04c-2a2658cf73c5', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ff17e92f-35e0-4e49-b651-00a2fd77bf22', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ffca6d7b-7fcb-4713-8fda-7ec06ec69d1d', N'b8c81c94-6d6f-4448-b2ec-3c5968ef22bf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'898045a8-745f-4d3d-8d3b-2d58608b5f4e', N'cf669c4a-e8dd-4e83-a5e7-4c54b29a9767')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'00ab3f6c-47f4-4e81-9044-6a0825ab88ec', N'Neme22', N'LasName22', N'user22Basic', N'USER22BASIC', N'userBasic22@mail.com', N'USERBASIC22@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEKk7vzFtGPUxRSACyl630oJjreysFHcNepbKklfGnDS3z+1Z0rANyOd9n8DHW0X5hg==', N'PHP5SVVT324NCELMSZDAGJQAL2R4NSEU', N'596217e5-5541-492a-9629-38fdcec8827e', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'040525e4-6a0c-4cb7-beb8-832123de2f93', N'Neme94', N'LasName94', N'user94Basic', N'USER94BASIC', N'userBasic94@mail.com', N'USERBASIC94@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEHPuaJv+E9Nz4YyyM0VeNhW8GzROcwH+11yFkDUNp/rij6Tpc4QlLpZFoWWlSnrKqQ==', N'ALL3DY5JCWSLULGEIHB4TVLZPDJ3OVYF', N'd71d2635-1889-4224-9a41-c74a89f83d26', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'07effc49-3c1a-47dc-be19-b440365a8093', N'Neme31', N'LasName31', N'user31Basic', N'USER31BASIC', N'userBasic31@mail.com', N'USERBASIC31@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEJKJac1+EUQObgPLrqZb859XTi2n1hG+Lm4csWW60mo2E1FnB4Vy+hYEutzO5pqkSg==', N'DQOM6NFSD3MSAWK6RSQRM6V3OODTZPHJ', N'ddba3993-7d51-48a1-84e0-cb8978b83e7f', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0adbab3f-d882-4a58-b746-a57364ffb26a', N'Neme36', N'LasName36', N'user36Basic', N'USER36BASIC', N'userBasic36@mail.com', N'USERBASIC36@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEMOVEVHrmsNm09X5FK9bhNzfpWs5evMAMkCOdWKw1Hnc9v7wWEbs1JMrbv6Jo9kdnw==', N'GTAEXTKO6ZFP63W5RDECSMKMY3J6E2ZA', N'd9bd14cb-ace7-4b8f-a861-64f5b5f27284', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0b3f5782-8a8e-4ddc-a839-ba5c5b63409b', N'Neme78', N'LasName78', N'user78Basic', N'USER78BASIC', N'userBasic78@mail.com', N'USERBASIC78@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEOT9OnHdbtW2pIfVRTk1dYjHtII7eZlHOxu0MM7K+YtrEjFxGDcuNERHHqRdDJDC8A==', N'3Q5GCLBZKBLPVLFQK4NLAF7YZH6WRDED', N'7f502f2a-1c7b-4d25-8f6c-f67e09558cde', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0b5d6ca6-7a42-465b-b218-bc9bdec4a66f', N'Neme87', N'LasName87', N'user87Basic', N'USER87BASIC', N'userBasic87@mail.com', N'USERBASIC87@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEBOfK3PBjB8zx+bTMOWo65Ml8JrYFQtc2RCgDrwbmfmmxXbU+LwL26MtCGJD84tkiQ==', N'J4YJVWVX43OYZOP3D4LK36LXY63N6FRW', N'b3ec30f0-e5c1-4841-9187-1a648a16e7a5', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0b863d8f-cb83-4031-9922-ae2fe5f6a82b', N'Neme17', N'LasName17', N'user17Basic', N'USER17BASIC', N'userBasic17@mail.com', N'USERBASIC17@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEH22o1iIjO5CCg1qF0+H1W+AQZvdu1NVH7BdvzpWG6zvgDchimq0ZvQU6fewqi7NYQ==', N'STOZOGRJCJIF6T62WHHPOHPTELLMTQBT', N'9e54ed22-aad3-48e3-a924-6baad92543ef', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1062efb4-bcc0-40ad-8132-de20261f7d0c', N'Neme93', N'LasName93', N'user93Basic', N'USER93BASIC', N'userBasic93@mail.com', N'USERBASIC93@MAIL.COM', 1, N'AQAAAAEAACcQAAAAELSFVdMeqEjJxpn8815sjOZ4l5+00I6g46fgGIHzvtRYM7mrcTdey3HoN0XkRrLT+w==', N'ZY2IFXXDTOKJH2XXY2TGJCGBJDFN4ID7', N'74cd5a5d-1e3d-4bc5-8737-fe300e269478', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1065bf3d-5cca-4293-a7b5-3fc5f4c40495', N'Neme35', N'LasName35', N'user35Basic', N'USER35BASIC', N'userBasic35@mail.com', N'USERBASIC35@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEG4WbCdJhsmEUxlEpJr3TkGkUs5ePzxlVkT5x0H67bK8NigDNjpxkAKbbEyFfQBCKA==', N'GKNS5GXSZPFHTAOE3DK44YLT73JKAMHL', N'fb695579-3eb8-494e-a12d-1a840a937b34', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1340d664-b21b-47d9-afdf-89460b6e6508', N'Neme52', N'LasName52', N'user52Basic', N'USER52BASIC', N'userBasic52@mail.com', N'USERBASIC52@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEO13Uc2cY/axVM4GLwT0TFdygz1/QnIit4pUCjbJa7xnZrq0zBJIMfoR411ESddmXA==', N'KM45S5H65LKTKNGDYUDW5AZC7FMGPW6C', N'23828f32-fd65-4371-995d-23874da763d9', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'177ef63d-84d3-4dfd-aa29-0474b7583c1f', N'Neme79', N'LasName79', N'user79Basic', N'USER79BASIC', N'userBasic79@mail.com', N'USERBASIC79@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEGN9tV/M40GT2V41mF8xuNjddgEy0YsuSlvd6Qmt7HuGJ02tElQBg9KupYSjIlc6EA==', N'NYG3FV2ZKSLDXHUQ5P4HDAGSWPOI3IFA', N'e37ac15d-e1cb-4a5a-8334-3caf204f86de', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1fe59772-172c-4e4c-ba6a-b9a78eb71080', N'Neme59', N'LasName59', N'user59Basic', N'USER59BASIC', N'userBasic59@mail.com', N'USERBASIC59@MAIL.COM', 1, N'AQAAAAEAACcQAAAAELPWCAElSGrPpu6hmP60Dqy/QomKosHCF8eOn9D3Fb/Wpm0NX9cqRVpMqYRfewNRPg==', N'LILLFH6DQCBQB67NJE2G3YKN4FLYI23B', N'aa48eeb6-049f-439c-abe9-00126b4b0fe5', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'23698d71-9444-4dd5-9312-29780cfa69c7', N'Neme12', N'LasName12', N'user12Basic', N'USER12BASIC', N'userBasic12@mail.com', N'USERBASIC12@MAIL.COM', 1, N'AQAAAAEAACcQAAAAENXsvF3Fiwz244tfD87MiFDUEvyObCuJlRw6oBNtYd0zcJ0Q2wwmr7ZhoPJHDrTGXA==', N'MWMIABIBFLTC43GJ6573AKDWJC25MIFO', N'88a38419-3ae8-40cf-9133-57c5b2b7eefd', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'24cc351d-fcad-446a-ad77-f48b61795da9', N'Neme88', N'LasName88', N'user88Basic', N'USER88BASIC', N'userBasic88@mail.com', N'USERBASIC88@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEMAIjxGGL8oHA+NvC39kShGMRQFY4n9IR5JJXEmhWKhxKixdP4Lpku4NQaPK2Lt3LA==', N'6IOULDSW7E5WYO6EV43EMPHHHF2VBDR2', N'8367ce84-f961-4693-a4bd-510d77c3cff9', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'29797d98-6694-47b4-8f20-668921f564d8', N'Neme29', N'LasName29', N'user29Basic', N'USER29BASIC', N'userBasic29@mail.com', N'USERBASIC29@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEKvZwdOYOZHxdN0kQMyYY8Y5fQfJbKGqp60+WzvZZ7Gtu/OBcv7pyjqOTuWKgsKQEg==', N'QHKAESBWD53ASXWOEOK6ZKWXVQTZD7EA', N'5bedb581-095e-425b-b65d-00cd71fe3404', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2db617da-0280-4b03-af30-240bcd5b1b75', N'Neme28', N'LasName28', N'user28Basic', N'USER28BASIC', N'userBasic28@mail.com', N'USERBASIC28@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEHNacRbDhXOD2XiDKs1SRsUpf2eVpg1pHBfP+5suVByvnhOwAo1Tm1QCEjDoB46OZQ==', N'WC5CLGHBPFUYI2EV5DNI7K3NLT4HZBUZ', N'a16aa3ee-0f1d-4d01-81f7-f000b61ddd8b', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'338f2c0b-4e9b-4003-8e29-8d83411e46d0', N'Neme81', N'LasName81', N'user81Basic', N'USER81BASIC', N'userBasic81@mail.com', N'USERBASIC81@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEO1qPRFVnhdT20gHs0OEJ4zQEa7S9dC0Dgn+cf7rwvkVp8Owzqc45F4B+igSQORXDQ==', N'PFPTRPASG2YJ6DADNTYDZYC43AWYVD2E', N'ba26469e-8f1d-4b36-8850-c157c008e05f', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'35c498ed-5e20-48ec-a2a5-ff01b42e2cdf', N'Neme18', N'LasName18', N'user18Basic', N'USER18BASIC', N'userBasic18@mail.com', N'USERBASIC18@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEEr0kVPCKBVVHjCFMT96+NYCJys4mtjCWnT2fPoxngYHS1g4ZtiMyAza4MoEnjlJhw==', N'V4U3PJPLO7UCQXT4TJN63RAVXDDO4S6C', N'016aa09b-4fa8-4561-a1aa-e5dcb685cd47', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'36dc2e07-47ca-4d9f-8e0a-c47ca852c878', N'Neme95', N'LasName95', N'user95Basic', N'USER95BASIC', N'userBasic95@mail.com', N'USERBASIC95@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEPOYqG1gZh5D/SRhx+EMmSw3zk4cYQ21ln+2DdPMDhzxt96/PPMFQwDaPgjmFAsTtQ==', N'7I3E5SLJHUHCYELIGNX2IIQSGLIVMB46', N'56eb6f9c-928b-4da8-a734-af294b6feaf3', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'385a5cf4-e69e-47cb-b7cf-a6c3c385bce4', N'Neme92', N'LasName92', N'user92Basic', N'USER92BASIC', N'userBasic92@mail.com', N'USERBASIC92@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEMLi0vJDcNivmejIWlEzuVM5jjVeBxB4cQFj9c4S/Atz2zw2jEsGW0idioy9W0tZsg==', N'EXZTA75Z7JHKQZGVE54KVRPQT7ZZXRBI', N'a20678c0-8d54-4875-a807-a8bea35be2e2', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'38b4a2ec-6e1d-4147-9c40-8ada7a8e4473', N'Neme16', N'LasName16', N'user16Basic', N'USER16BASIC', N'userBasic16@mail.com', N'USERBASIC16@MAIL.COM', 1, N'AQAAAAEAACcQAAAAENne8rfJ4OHeuEgomSm1PCVPm/yeqQ1eXKFYWkTgb89FRRE7HwwoKi8nxNAq6b8h1A==', N'BQ6WFAWWXOPIALM7JJVJDMBH5DX23IXS', N'1c44d3f9-01f0-42bc-86f5-72e51bd266cf', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'38b709b0-0343-46ce-970b-e0e50a68b204', N'Neme25', N'LasName25', N'user25Basic', N'USER25BASIC', N'userBasic25@mail.com', N'USERBASIC25@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEG5vMPOddHeixLzX2z2QUvKIXMJ8g7UTvGQngCR0IvXSz0GTiIYt5SKQH9AeuwW04Q==', N'XBTW3UX2KN2EAO7ATBRWSQMRDN2FW5X3', N'0abed299-f134-4218-87ed-6e7f18f2a301', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3ace2048-84cb-432d-843a-842abbc38ae5', N'Neme14', N'LasName14', N'user14Basic', N'USER14BASIC', N'userBasic14@mail.com', N'USERBASIC14@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEFDNo7c4Bw9ZfedgbU6EU+OEJWNHJ7GKlJn6PCfGV4H5QSQgU6qwGA3uAZ6Lx9ZLVg==', N'HZOPHLZDTRXSALWZZ65IEUOI3HO3SOY2', N'1c361abb-1827-437b-b87b-cf414d0286fd', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3ebda5dc-8fc3-4a12-91b1-11fbc5c326b4', N'Neme56', N'LasName56', N'user56Basic', N'USER56BASIC', N'userBasic56@mail.com', N'USERBASIC56@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEPgHVy+DHttquFYxjd6eNe5YNerEjdYzoeFpi8pWE0nqe7U5SrgZ2TssZEwaquPdGQ==', N'EM4DTRGWQP23MW4RWKSOIET4CAUVSP5S', N'21fe6707-e089-45f1-9d52-a51f37b1a82b', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3edefb25-8430-4fe2-b927-0622e9b1432e', N'Neme0', N'LasName0', N'user0Basic', N'USER0BASIC', N'userBasic0@mail.com', N'USERBASIC0@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEM9F9slmZTTszyrkCs0cWzWYWnwAcXsmXZoY0Dgz6gOlxq7G7SpkmZ0C8ItboJVGXA==', N'F27FL54TN7KAWIKD4TSAZOPU2RGMMDV3', N'b09173fd-fd9c-4545-8058-fd99e6e1511d', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'40fb4b0f-f3b0-42ed-ad00-0f7edc4ce1cb', N'Neme27', N'LasName27', N'user27Basic', N'USER27BASIC', N'userBasic27@mail.com', N'USERBASIC27@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEB2bNX/801xofE1XfVPwUEmksCxWlxPvn6tODBWovvtfbhDagGGqElCBsdEQOISzOg==', N'AKMIYTQQBHDML6K2RAVHDKZD4KBLCMF2', N'4672c81b-2f45-4fc7-bb95-3db67b4e4a87', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'42aac612-df35-4a37-b10d-310a115809dc', N'Neme65', N'LasName65', N'user65Basic', N'USER65BASIC', N'userBasic65@mail.com', N'USERBASIC65@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEOwvvJO2aSVD7P2RafiKfXJVvMXbeNt1AfCWrtdo14xZ0OlqM6n9x4tbP+yRZ7ydlw==', N'FGVAG3MFMLR2GLWNKBDQRZZQDUYWCBIV', N'2aa23e4d-b4ee-4856-9bb7-f8f380377ee7', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'47cdd02f-8782-4bb2-9c37-bfd76cbb9cbb', N'Neme85', N'LasName85', N'user85Basic', N'USER85BASIC', N'userBasic85@mail.com', N'USERBASIC85@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEIO9hy7Irka/isiHkwbHzMVH94b6e9xIt7vLa4NbYV1LW2ETRZDpOpyhHzoQthO7iA==', N'UHYGGNYPBW3TO5HR4LPVQZ75F2FOWUAF', N'e909e0b3-dc4c-42cc-b752-49151d638df2', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'488cfd6b-2f3d-4a61-8811-7f7bfb2d8e23', N'Neme39', N'LasName39', N'user39Basic', N'USER39BASIC', N'userBasic39@mail.com', N'USERBASIC39@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEPqrQROOGqlEjyZ9QSgWNW8ihPiptqQ7+CEngAOLBKgMiVSxTvVloiLAZokfOqe0HQ==', N'YPCGTCEMR6ZADTEL27PLUEH2OGT2QKOH', N'b04f8e41-1658-4887-bba0-bfb542c3bcd6', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4987422d-9d74-49d2-ae79-894d8d8b2d64', N'Neme67', N'LasName67', N'user67Basic', N'USER67BASIC', N'userBasic67@mail.com', N'USERBASIC67@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEG1R6tGZp9YI2Dwt4fxi6lHsE2bvVwJYQaYIdvgmac8KxXOzfseT1ekOPap3NIzWKg==', N'DEWBFCXXFCMC6V42JZWI6ABTCEJWQVEV', N'e45b98fa-d572-442d-a7c1-3b972f28db0c', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4b17621a-643e-47e2-96f5-b1ad33c5efef', N'Neme34', N'LasName34', N'user34Basic', N'USER34BASIC', N'userBasic34@mail.com', N'USERBASIC34@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEGVqVMabZU1QK281WbNhrbuWRvrzxelelcvUVTajMzI0EoHRJWif2UCnDk5RLyibzw==', N'PZIWPPLRCPENJJUJ7JR5NXNLDSYSOUDK', N'8c86f394-0410-4eaf-9777-f019d31cbcb1', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4d776a1e-ed42-4716-8cbd-5cccb24de01c', N'Neme48', N'LasName48', N'user48Basic', N'USER48BASIC', N'userBasic48@mail.com', N'USERBASIC48@MAIL.COM', 1, N'AQAAAAEAACcQAAAAED6MAqjMdItnz3N8mm8aAHqYOP5hQC3LqA0twf4o8DLnaHiTAdnz3+axfKgotdT7SQ==', N'ZSXEPSUNPXDHXI2BW3XURITX4AYUTNQ4', N'85437d9a-348c-42cc-b148-155d763ed20c', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4e6124f6-d2ab-4bf7-8910-f41eba374c22', N'Neme45', N'LasName45', N'user45Basic', N'USER45BASIC', N'userBasic45@mail.com', N'USERBASIC45@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEHfRBLX5XuEQDEyeVeMZgxLt+T/0Dnfl7mxtes8m1uRnBEyH/m+Ip1L5JmuhGPbp0w==', N'7QUMPFJJFPC7NCQIJOZ7RT3OTWI7EUZD', N'f63c3028-f6e8-4c27-a07c-67ce9d040b0f', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'57c4a28a-c95a-40a2-aefa-fe8bf59a6c1d', N'Neme40', N'LasName40', N'user40Basic', N'USER40BASIC', N'userBasic40@mail.com', N'USERBASIC40@MAIL.COM', 1, N'AQAAAAEAACcQAAAAECWWvsRRIQAbmCMEj1wxghaVP0H2A1IkhyEgEwfYJcFrGK7SHRZLMzpXY0VA6aS1MA==', N'D6N4JER5ZKXZUAH6HDKAOMGSPLURDSYJ', N'2d3c650e-9f83-4671-811c-eeb46d1c4c4c', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'59b262cd-7c34-4c14-99bc-509a726abccd', N'Neme7', N'LasName7', N'user7Basic', N'USER7BASIC', N'userBasic7@mail.com', N'USERBASIC7@MAIL.COM', 1, N'AQAAAAEAACcQAAAAECjM719wPJzFJLvXOO2J4fU76gdkKZg9o21pgb8hUhnP8tw/PiXCWVRUF9N3Z++qOQ==', N'RY2RZLKSMIWFIFLYQGRTW5F4HCZ2XWOB', N'56b66de4-d278-43ce-90e7-6b2bb95022c3', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'62e516ba-fee8-44c2-9a5c-29b66e889d8f', N'Neme5', N'LasName5', N'user5Basic', N'USER5BASIC', N'userBasic5@mail.com', N'USERBASIC5@MAIL.COM', 1, N'AQAAAAEAACcQAAAAECPZEzutyE9LpU9fdT41mGiBUsnnHf8OVaVX6GMwuq/4w4oAmX9aStNjPtqVpMAHTw==', N'RUNCFPBSF7Y6YVTCVYG6OTUYWOJDNBLF', N'aab42dd8-ac3b-4204-be3c-9a8ee0c31821', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'635be531-bf21-4079-8732-5e502dbaec8b', N'Neme60', N'LasName60', N'user60Basic', N'USER60BASIC', N'userBasic60@mail.com', N'USERBASIC60@MAIL.COM', 1, N'AQAAAAEAACcQAAAAENCOMu6hFIfBXwMuV977aufeZudK7sA7CGPktlzeMXu0JcFM0NMgd5q/wdhvULkaSg==', N'2FJRVB5BJ46PHLNOYBH5VYBRQNJZKDG6', N'84f5f035-dbd3-46fd-960b-b8bf326cb866', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6628e9b6-fe06-47b1-a5e4-99bfdbad94aa', N'Neme33', N'LasName33', N'user33Basic', N'USER33BASIC', N'userBasic33@mail.com', N'USERBASIC33@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEI1R3gEFpSJrjTSqBS85gbgo4dqjxSGgci8w8RdIGxLnW4OU8yYPMFpx71E8zVq0AQ==', N'77XVP3ARGFXFPSU7K3TF4NASDWGOWKYT', N'bde4bf04-c59d-42fc-b696-670d10ad8d0e', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'66c86bd5-c475-43f3-b19f-5165d9ebcf30', N'Neme70', N'LasName70', N'user70Basic', N'USER70BASIC', N'userBasic70@mail.com', N'USERBASIC70@MAIL.COM', 1, N'AQAAAAEAACcQAAAAECTpvGcMFyAm0FAo2Ro56MSxHGDXhU7KIbI4x0skLSfalpvqYDH+2DoAsTDbLTb9Tw==', N'TJE5K2724QNE74GNCDEBSOALL77FJA3Z', N'b3576605-2f38-4045-af9f-8f7e9cc7b494', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'68468c12-6c81-4215-b9dc-d3bac204b176', N'Neme9', N'LasName9', N'user9Basic', N'USER9BASIC', N'userBasic9@mail.com', N'USERBASIC9@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEKVLiQD1N90U5DZ1n5JmPn6xhLhLr8bLBuWQsAQNWOWcvJTRNwqHKu+jsjXQYwjRjg==', N'SJQBJMJVWJQXFA2SEQKGE7PNOKQB3PHJ', N'8e4f7bee-2970-4780-b427-8568ae372bfa', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'68572e22-5d1c-49d8-9077-66b43a58bee3', N'Neme90', N'LasName90', N'user90Basic', N'USER90BASIC', N'userBasic90@mail.com', N'USERBASIC90@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEM3I7PAVSSZJfduxO1UifNPLJ9zlFGgJN5XWf86EZ4ODp4+Z2iLE3xGl3yMIvbN+HQ==', N'7ZCOVNDUADVYLRMJD6II6HF2PSX5FWHA', N'b89bed3e-feca-4f5a-bb04-b477b3d87250', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6c039b31-10e5-4621-a258-018fb74954b8', N'Neme57', N'LasName57', N'user57Basic', N'USER57BASIC', N'userBasic57@mail.com', N'USERBASIC57@MAIL.COM', 1, N'AQAAAAEAACcQAAAAENX7Dl1zn8A3AV14jCZnybAHOr3/AFRlIz0DUd79pSiXB97CnozbSrBYrIO0bfkCgQ==', N'MZZPEZAJP4DR32NDLVDJEAFP7SMW7XZI', N'05f85eb6-8480-4986-96bf-361c98909f67', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6e4a5974-c5b6-4214-a539-cf4867cc83e4', N'Neme83', N'LasName83', N'user83Basic', N'USER83BASIC', N'userBasic83@mail.com', N'USERBASIC83@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEBbSvAa2arAt7+kdFhFpqIEggGXiYz1NNEY4x9GbkwHpncmVfSLQUIoEhjH/3yQ9wg==', N'SQP4VKIBQ4T7AKS2WIU4OQYSQJXRVGAV', N'd2e4a0c7-bb05-425e-ab4c-9cd8f253dbed', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6f6423e5-08ff-4d37-9e3d-02fea6837df4', N'Neme49', N'LasName49', N'user49Basic', N'USER49BASIC', N'userBasic49@mail.com', N'USERBASIC49@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEBurt1LW1gqpBZXzlXE2LxHqNL7mE9iIIB/6OAdUGq7WWL137tD9qhq1fYxAS7eDAQ==', N'F7U4I75DNZCPE7W3FHJY33XTE3K2Y64P', N'0cdb48d6-cdaf-4565-8e4e-1844d40bea64', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7431988c-c41a-4162-a054-5c6e7d6d11f2', N'Neme44', N'LasName44', N'user44Basic', N'USER44BASIC', N'userBasic44@mail.com', N'USERBASIC44@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEJEO2P/WrDsn1RPQPXKQM61xPpLFdNLKYlWqQaPx1o+p88SZKjXbV0C7UFyTtHxXEw==', N'B24GJF36NYKSPQP7WMNJIO7VSOH3JFTV', N'04533e29-bc08-44bb-95e1-562868342bce', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'74850911-cbf2-4b3a-bca3-b3b95f533d7b', N'Neme6', N'LasName6', N'user6Basic', N'USER6BASIC', N'userBasic6@mail.com', N'USERBASIC6@MAIL.COM', 1, N'AQAAAAEAACcQAAAAECBTXkHrlr14K505mIJ51nBJT5hnJzGL35AIvqEZ7b2y7IPjf7UosolUmmOV7hFqCw==', N'TZ34RYW3BENJ5OJNFI3PC3BCYIMIHFJD', N'ec184964-ed01-4cc4-8502-e6f11f58896e', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'770ce925-bebb-4ae2-8f0e-020b088f6099', N'Neme99', N'LasName99', N'user99Basic', N'USER99BASIC', N'userBasic99@mail.com', N'USERBASIC99@MAIL.COM', 1, N'AQAAAAEAACcQAAAAELNRKHFxHy8eKFr3uL1gogtgZd5p/mNWv2onqzNVyuxjvWZ51tpe2DXTHiEhSS5xsg==', N'TOUPVAWB3PCHRT6266WA6BD6LDQYWWEN', N'b3c46c63-2b99-4eed-9a71-b8bc6994afd5', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'778cc6e2-99e3-457a-9ad7-bde6a1c8e8cb', N'Neme89', N'LasName89', N'user89Basic', N'USER89BASIC', N'userBasic89@mail.com', N'USERBASIC89@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEEZNnbWGScO0vul5WbIjbbcZFfIbO9CtC8ikoDcI+PCoy2xSnLuMMO1hC9QUxC6bxg==', N'KP2FFPF5GIMDEW3CYDUNUOKYZ2VRBWYE', N'326b4ef8-98c5-4d84-86c0-f82fabb24570', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'797fa8fc-f38d-46ba-9478-7dfd9eaba608', N'Neme3', N'LasName3', N'user3Basic', N'USER3BASIC', N'userBasic3@mail.com', N'USERBASIC3@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEDgNT1y+tch4npz7NK6yJk7nJiugp/yhkf1uNOYR4aC3NYauj2MwHRd+J0cuSwxMYQ==', N'MVBXHJKCCMLGBGXHFZTRVNTLIFSFOLPV', N'6e2a2dde-5530-4d29-941b-ca26f5c10942', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7f91ac89-e869-40bf-ad03-46c6f5b6f291', N'Neme55', N'LasName55', N'user55Basic', N'USER55BASIC', N'userBasic55@mail.com', N'USERBASIC55@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEKAmORoblZRe08B2j1pGdwoMVugDDxRe81axQbcZkIG1JPreGjS/Jw7u93sYDaIXoA==', N'5YLNVWZKDOCMTXO2TVOOONKUIAHZXLJO', N'597f3d38-9db8-485a-88af-f92c4f71a0c4', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'80c6934b-0ab5-435e-86a8-ff5082138ee7', N'Neme26', N'LasName26', N'user26Basic', N'USER26BASIC', N'userBasic26@mail.com', N'USERBASIC26@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEKEn2gFO9G5oqEs0ftauhqou/EiMykd9RZK8wFGC7gJDTXs3Fz1DrW5ow8pfkkZq5A==', N'SNDBMEU7WT54V5NFUOY3HAAPCPSCQKN7', N'd90a483f-a488-468f-aa23-8c5027429d36', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'829d2cfb-6fa7-46a3-a2b7-bcb06ee4f964', N'Neme58', N'LasName58', N'user58Basic', N'USER58BASIC', N'userBasic58@mail.com', N'USERBASIC58@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEDqCaJCEIyDFO2fY+WrGEN7RCZqEPlG87gY7Y7EVARtm+piKvoQAyqQ9gSnLiDFMlg==', N'ZN5HQLXZQLZQ6LP2LF7ECZRWVB3XVOFR', N'5ba64c14-38b2-4e25-9fab-104b67b60aba', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'830a1d2c-a007-4649-9376-7bc57f3d3169', N'Neme63', N'LasName63', N'user63Basic', N'USER63BASIC', N'userBasic63@mail.com', N'USERBASIC63@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEADtRR2a7QRhqCCXku2vOkxJCEgEyBOd/V9QMrwH6gFF5cQDTOn3gyrLslJGKH/v0g==', N'5FOQEQPYGB3QBFDKFOUF6OQ722QTTMSK', N'1a76b8c3-02cc-421a-b5b9-f851d4944877', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'83d89dec-a789-4772-a2a0-5567bbab7334', N'Neme19', N'LasName19', N'user19Basic', N'USER19BASIC', N'userBasic19@mail.com', N'USERBASIC19@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEGxkIGfJmqCS5TTpOmV+EFLNvvQX8uwMJljto3r5LshNA22X9Tevbh8lgeumJXmJMw==', N'7G47UE4KXFQ4T6PML6TTDN57DZRSWUHK', N'3fe2f6e8-47f6-4d7f-b9fe-17c53afdc63d', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'84aec093-44d7-41aa-9134-b683b6e20c16', N'Neme43', N'LasName43', N'user43Basic', N'USER43BASIC', N'userBasic43@mail.com', N'USERBASIC43@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEHIn+tTh5XhToYhVzBU2wUZ98pjAwbvih3yvWQ56/rWWmbkVdpBXwzYyhjecbJb5qA==', N'XMPN3M54RM47ZXU5YQZNLM5VZUMRPONS', N'52364694-c49f-41a5-843e-eef365196067', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'872c3199-0b34-48a5-9fad-801fde1b9938', N'Neme98', N'LasName98', N'user98Basic', N'USER98BASIC', N'userBasic98@mail.com', N'USERBASIC98@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEMLXzzGXiAWoTcXMcQMUhDjsh9PHmJK2s2vpgfV8+E46EO8wF2e35ZUWpntALKjuMA==', N'55WCKU6KW74QCCABMATL56ZKYG66GTGM', N'260e7442-61df-45a1-b510-bb5a92f90e6e', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'878088da-dec0-438c-92cb-856ba33fe427', N'Neme64', N'LasName64', N'user64Basic', N'USER64BASIC', N'userBasic64@mail.com', N'USERBASIC64@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEA8w8/oFTpzuNBgI4vgSpAhY4QCYaU08kJkAPFrln4f7gXb7uSl3COj2JJs/pt/WqQ==', N'QPW3NKRYS54MRE6R5EL24NFP5GG62NVE', N'30865bf4-706e-4835-be93-5a8502983d18', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'898045a8-745f-4d3d-8d3b-2d58608b5f4e', N'FirstName', N'LastName', N'userAdmin', N'USERADMIN', N'userAdmin@mail.com', N'USERADMIN@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEJvsQJOlSLez+Zffab59uY205VAfbVjGivAQkraHhs6Q2kRWrphE9jFPwqw4l3YIHQ==', N'HC54BDEYVTGJQV4P2GPM43EWFRYVL23E', N'04c14980-a25e-43c1-9964-4479c907df42', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8a1ae01c-8359-4a87-a721-bdc80e7d6936', N'Neme38', N'LasName38', N'user38Basic', N'USER38BASIC', N'userBasic38@mail.com', N'USERBASIC38@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEJVZrp1Xh6htQj0dA8g8qm2h2MV0mrIG43nH+IqdAv1UMEjCwA2XjFdvkj/grNcg5A==', N'CJU522KJ2YSP5P7ZEZILPYPMLBC2CFLQ', N'6d1a57c8-8ee7-4385-ac6a-2e8859ed117f', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8b8dc9e1-6750-4012-9e11-869b3041a2e7', N'Neme24', N'LasName24', N'user24Basic', N'USER24BASIC', N'userBasic24@mail.com', N'USERBASIC24@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEKnFzn7wpmZ2jC0W90kcgYrUS7It9rX65MvYmLwP93ipOns/J9BgbXXR8ZLt3LsJGg==', N'6NW4DIV47SKRRMSJ4JVIEHLJKDUSXUGP', N'8d477617-75f2-4b49-98a1-570350764b42', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8bdcdb08-7c9f-49e2-a672-941afe38f628', N'Neme15', N'LasName15', N'user15Basic', N'USER15BASIC', N'userBasic15@mail.com', N'USERBASIC15@MAIL.COM', 1, N'AQAAAAEAACcQAAAAELw+9+bWeF1XSFSs/jugEk2P1W83dOZYgAsfDfrw1yxIGLb4JXOFkApcal9ZyLfpgw==', N'IYVEV46ZXYKEMRFSQMISFQFLCKLYWI6E', N'e35e2e0d-aff5-46c1-b045-72bfed4e7c53', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8f0109d7-66e7-4857-b4de-7f05e9108f78', N'Neme37', N'LasName37', N'user37Basic', N'USER37BASIC', N'userBasic37@mail.com', N'USERBASIC37@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEPG4CFqfIWTrtLdid8Fe5FzCDz2itYqriqQ5LEt3rXYcs3iUjh4i2qyNpup8muUnZw==', N'KQUHSB2GWJTZPPUQSVQF5RNAG3VM75IV', N'37e6bf90-eddf-4ec7-b818-db0afd54dc5c', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8f54dad6-65ec-4392-8994-a2f2616002c4', N'Neme46', N'LasName46', N'user46Basic', N'USER46BASIC', N'userBasic46@mail.com', N'USERBASIC46@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEC+liXJJHuDEcaEAA3M0awzMCFJcgZZS3Jem7CLf8fWucIilJPb4GWnh2b5e1iMO2w==', N'DE34YGUTNYTV3NJH7CC367PEK5AROAQM', N'0ebc75f7-78e9-4c74-b372-bd970c2f3a82', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'92d36f82-99f7-4cae-a069-5479c4cbf1f5', N'Neme21', N'LasName21', N'user21Basic', N'USER21BASIC', N'userBasic21@mail.com', N'USERBASIC21@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEO0P4S/8LnZV27RQvmfxrEkHsjhi0MVlz/O5uk9Q7ybS/11xyKK6AeYCeJEqsoKcZg==', N'EAHMXPK42UHA5XR2QGQVP32SADFUW6SL', N'568e3be2-deb8-4c00-891d-fbb366cfdde0', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9840bf08-d6f7-49ff-b3ad-9d7326c4413f', N'Neme20', N'LasName20', N'user20Basic', N'USER20BASIC', N'userBasic20@mail.com', N'USERBASIC20@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEEe1NtX6quPFqHkWSaQKyCsijQU7lv8MP/Qq97/e2AYurWoVR2fjPAyxr0gUGkDJ4Q==', N'635N6YAUMWNUFCTXGBMYIBVQFMPEDCLV', N'187f06e9-dd21-4556-bfb2-0e456a03fe10', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9c0e1309-7e57-4d5a-9fb1-903ae5509fd9', N'Neme66', N'LasName66', N'user66Basic', N'USER66BASIC', N'userBasic66@mail.com', N'USERBASIC66@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEJn9ELCS6HsIu0KsrWBGijFP3bF3pmS6E/q4qq8Ixw3V6X7nqlh6EvZsR2JeY+atcQ==', N'GNVPZ7WP5T5JJ54Y7DDRMV6DN3WNQ6GV', N'365ad66c-1068-4e29-81dc-4f92b943502e', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a725b0de-3db1-4c51-b6ba-6eb66b31ae7b', N'Neme23', N'LasName23', N'user23Basic', N'USER23BASIC', N'userBasic23@mail.com', N'USERBASIC23@MAIL.COM', 1, N'AQAAAAEAACcQAAAAENC/nc4i3ljUldaqOlgcB/ddVK47UupSs69gM30pvgXUtVQ87UV7SVvZgMpye47F8Q==', N'OAZJBOKBGMYFZ4GV7V4PHS6DB7O73QGJ', N'f7860be1-5d10-4a46-a296-6f6ca1e2a2e2', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a72ae0ca-1707-4249-9df7-2f0666633b64', N'Neme96', N'LasName96', N'user96Basic', N'USER96BASIC', N'userBasic96@mail.com', N'USERBASIC96@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEJbQnDSoJclwbLJsU7//P2PcBIv+HBbdTMxM5CgOVlngpGTgQIaXmwUEUGACsGuzEA==', N'3N6VN55RSVXOI3BMMOGYBRDHU33JR2WE', N'65095d11-87db-41d2-ab61-91487bd57055', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a8d2bbba-99e4-4aa5-9e46-1693f12208c2', N'Neme73', N'LasName73', N'user73Basic', N'USER73BASIC', N'userBasic73@mail.com', N'USERBASIC73@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEOB70YRNhD+b/y/+MUFCjdMP0dvhk43CIx8U3aBEETy2mYSdzzWKvT8UIw0V+Ad3Wg==', N'O3KI7A5EBN4FAHEFDLGWQGNUOSFKN45K', N'a6567f83-71eb-4a3c-941a-1d515b1783b5', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ac27ce54-b258-467b-89f6-9394d3a5a66c', N'Neme74', N'LasName74', N'user74Basic', N'USER74BASIC', N'userBasic74@mail.com', N'USERBASIC74@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEMfK2mSFEj6K6525Wz4w2mgdsSKFDXvLVg/pjaYFywLzE44BEHQoGChJlL0+GNJQXw==', N'24FMQCDUL2Y2DNTJT5FGNIJVE5WV327A', N'8323e303-ad81-41e2-bd2d-ace5b8798cdf', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ae1db9b6-9afe-4dcd-9b6b-651b419a42d1', N'Neme13', N'LasName13', N'user13Basic', N'USER13BASIC', N'userBasic13@mail.com', N'USERBASIC13@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEDDChuwBWGDoXkefr4WP2J20A5QbN7xq0NmnyJSNbVLOi0G5C6t073x4bxPrrf44uA==', N'25SZWMMRHIO5Y6WEEOTZNOPNUUPT6J6U', N'a1f4b4d0-7efc-45ee-baf2-e151639aa378', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'af7073c9-6505-48d1-b304-96e12bc12b66', N'Neme76', N'LasName76', N'user76Basic', N'USER76BASIC', N'userBasic76@mail.com', N'USERBASIC76@MAIL.COM', 1, N'AQAAAAEAACcQAAAAECn/ZTCF50wIF56cL373wD2UR9GfD39uiEA6s3wnC4kea0qx5BJcGE8YiTBunNIZDQ==', N'XZNIP54MCMV3WPIGOVQLYDEQVC5Y7CRY', N'70d01926-0aa6-4b02-993b-b5479d13755c', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'afd05063-34bb-4e46-b9f5-b4fd267e6dd0', N'Neme62', N'LasName62', N'user62Basic', N'USER62BASIC', N'userBasic62@mail.com', N'USERBASIC62@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEO9hFPviBCPtHThgGlj4TGCNVVUQq1VuUX19GMLjIs3LbZyYhMtxJqDUuUigTmXw9g==', N'L3KO7Z2FK5HWDA2OMK4VHMJ47CU763RH', N'a9157b92-ed5e-40af-a5dc-d7309289dc08', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b06c5a20-06c8-4067-abb8-295995182bff', N'Neme51', N'LasName51', N'user51Basic', N'USER51BASIC', N'userBasic51@mail.com', N'USERBASIC51@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEASFhHbkv+LDKdRi18GVGHkTG8zm/8respfaGHjAphdop3mKOFQcCyxzJ+Dlh7h4rQ==', N'XE62E2FGJYHY6MBYRGVBZM35T347KJXV', N'f66a625a-802c-4a52-861d-a24245af92cf', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b2a6681f-8f7e-4fc7-a0a3-7a334e7c2941', N'Neme8', N'LasName8', N'user8Basic', N'USER8BASIC', N'userBasic8@mail.com', N'USERBASIC8@MAIL.COM', 1, N'AQAAAAEAACcQAAAAENFa2yXpmxlmbIzVOomeo12n7gRn+JCetlUhVk+XD9l5Mp9gGJSahZrtlfuEjvTPKQ==', N'UDWPTLLDXK4OIKGQALPEY4XXDAVUIVVW', N'a3af1067-8307-4caf-bf54-33f50a5a19fe', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b97c2c41-b48a-495d-bed3-99953e8a456d', N'Neme53', N'LasName53', N'user53Basic', N'USER53BASIC', N'userBasic53@mail.com', N'USERBASIC53@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEInuN5Wl5MePTi+cd2OtfIoDZ4m2gILfLtiYRtEJJAByck1culbOI851YcCpfAEASQ==', N'FE7MWV2RIVZHLRFJP6D2CRB3XPKEPKYW', N'cc45ad05-9849-404b-be7c-de0ef89b8171', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'babfc9f3-ee59-4361-88cc-b9dfcc413bbd', N'Neme61', N'LasName61', N'user61Basic', N'USER61BASIC', N'userBasic61@mail.com', N'USERBASIC61@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEGbwlazzns/0cUP6AERmx0T+0J9Bbx7jgidhVw7IwUcd6WfmK2giV38Q30FMdHMexQ==', N'625RVEUU2KC6NV6RLMDJ6QPPYGFBWXWP', N'9f5b9e36-370e-4f7b-a7a7-537cb5e0b229', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bbbb7d23-7cf3-4fbb-af6b-e29008db8ea3', N'Neme71', N'LasName71', N'user71Basic', N'USER71BASIC', N'userBasic71@mail.com', N'USERBASIC71@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEAZO+sdy1s+oRTVdJ+wiAwFYsn9+RtlwEiY03+IaslxH6HThUpof/UH57bNkQqiiqw==', N'GU37IQ2UBQXUVIH7NL7S6GYSR7QUWHYJ', N'5201de9b-581d-40ae-98b5-511da32347bb', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c4574c25-0c28-4397-bffb-c95239568d47', N'Neme41', N'LasName41', N'user41Basic', N'USER41BASIC', N'userBasic41@mail.com', N'USERBASIC41@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEGzrqJEYJl7Feo3Iuc0pytV4rjkduRRd+UYo4p/cEIxXH9EkKQM06EhC7ecYEaIz0g==', N'PAPZ34SRICO72VUJYKJB7VRGZN2QDVA7', N'5e35935f-4616-49bd-904c-8e4061f706ca', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c4ac37e9-4e92-409e-a3fb-faab6f80af12', N'Neme42', N'LasName42', N'user42Basic', N'USER42BASIC', N'userBasic42@mail.com', N'USERBASIC42@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEKXBrMz6rf79JcB3/YpUW6XBh6VmCNqB9pJq2NBY9saS9WtcLqOjL/f2BKZI2WOnkA==', N'QFLR65W23RXUHSOXASBRAYEWWPG3BAOO', N'76982554-e9bb-4367-80bc-5d319b5df022', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c5b39949-e550-4e89-b13c-432928e7519b', N'Neme11', N'LasName11', N'user11Basic', N'USER11BASIC', N'userBasic11@mail.com', N'USERBASIC11@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEOS2NfHACJB1kgNO+U1GJKOlZuK6MCz0wD1Ex+7gjt7GABuyfUiNiyozaWPSDvGeaA==', N'LQ7JLDGD6ZKHHMBU32YDOPYTB6D4DQFM', N'd370f81f-5a6e-4656-852f-a48e3fec7daa', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c7e52e77-21f9-41f5-b773-3678677401be', N'Neme32', N'LasName32', N'user32Basic', N'USER32BASIC', N'userBasic32@mail.com', N'USERBASIC32@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEELj2FjhZNhzzRyUxD6bP5AKysyph6waIsvr3/4XxID/2GOtmePDpCojjUD/BfmOrw==', N'M6YPHVPLOGWYS3CXNGDEH5ZMU2V5RS5Q', N'5b1d52d3-537c-4f88-b0aa-af2f38a4bcdd', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cfec291e-1222-4fe4-a46f-c6f57a21d9b8', N'Neme2', N'LasName2', N'user2Basic', N'USER2BASIC', N'userBasic2@mail.com', N'USERBASIC2@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEMquiiTtquXuEhpaZDcSYiLrIPgtYBSf57ZMHvDukbce+BV6ZIra/p4c8RMQjXnnfA==', N'7K2MUZKFW76I7W4L52Y63CPMGJJ5IF2C', N'0fc7487d-7da7-4e77-b6c3-7344b67227ed', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cff169c1-ec8a-4937-8889-39151966cebb', N'Neme50', N'LasName50', N'user50Basic', N'USER50BASIC', N'userBasic50@mail.com', N'USERBASIC50@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEBaSFQFWKjYIJucix54CQvhb4seoIQlydWBK3/AvffprX9B28H262YEgzdeT2HajZQ==', N'FUJ2TNSPYZK2GUR3NK7GNS3CT74UODBQ', N'125a963e-8591-4645-b64f-0a0f1c645fe6', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cff81601-b00b-4c66-80f5-7aca9d9cf9a6', N'Neme77', N'LasName77', N'user77Basic', N'USER77BASIC', N'userBasic77@mail.com', N'USERBASIC77@MAIL.COM', 1, N'AQAAAAEAACcQAAAAECeFq9D5jj+JahgCO7gI9H4Nhvm4bFz3kp7OlXqOmDGSOu1mE7KPfc9fZtrypCHCVg==', N'4OTCKW4K2KMKBNWVFTYXEBNEAWZ4653Z', N'5b007edd-78b9-4dfb-9076-faed3ce8d393', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd12d7b37-b068-4427-b4f3-e8ecfe0980f8', N'Neme69', N'LasName69', N'user69Basic', N'USER69BASIC', N'userBasic69@mail.com', N'USERBASIC69@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEMFWn769tB7fyLbznTJWXERWHCRhYRMMhc68Nui0dlD+uqUaZI2i4D11ULDyO8DE0w==', N'RCD5CVRHZB32WQWKUCX3DOF5GRAJU6HI', N'f76ec81a-71ea-4c81-8bdb-b3d9fb769ba1', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd700ebb2-fc35-4017-82ef-5edaf215bfb7', N'Neme80', N'LasName80', N'user80Basic', N'USER80BASIC', N'userBasic80@mail.com', N'USERBASIC80@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEOOidyXLmDEH/HL9kbXaKYUmKmcRHRKPrr7JXEMp7dSnqjpJTIEz4aFBy8GWhzlf0g==', N'ELPZ5R5OTLLI5BCXIE7PBK3IBIZCZMB7', N'e741dc9d-36d4-4857-a8af-d364a2fc48e3', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd72cd539-050d-4076-b577-b2238082321f', N'Neme97', N'LasName97', N'user97Basic', N'USER97BASIC', N'userBasic97@mail.com', N'USERBASIC97@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEOujJtb2BciRLeSN5TDUqMzyy52tcXMmg24NuQ9KjWtzzvgtE9o1f9wGKzwHXxHHRg==', N'XZ5WJGFBY5LFHP5Z44JNUS2NAL4E6RCS', N'18aae95b-6517-4e20-a335-3d1646d1239c', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd76d8a3e-0854-435b-9276-cc9f4380f69a', N'Neme75', N'LasName75', N'user75Basic', N'USER75BASIC', N'userBasic75@mail.com', N'USERBASIC75@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEINYw+vM9Ve7NitM2Wi6XJY/ooLtCnM5bcSXJeawxN7Ml1ApSAVvLFDvw2cky8umCg==', N'PES5FEVOY33M2AHP3M4XA4H5PB7OA4QK', N'129d7e51-7620-4a67-8e85-96a0993e82e4', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd77346b7-e107-43ff-bfe0-8ea9fc720c46', N'Neme86', N'LasName86', N'user86Basic', N'USER86BASIC', N'userBasic86@mail.com', N'USERBASIC86@MAIL.COM', 1, N'AQAAAAEAACcQAAAAELcvQOoXIWijst5fOcmq5WYbkU+bkNSDXtj7rtBfZzYPlajCWmH6b5h5emyupAXJ9w==', N'VHODSLDOQUQCJ45J4UIKG5NIEKI5FIHT', N'6a104f2b-d396-4be8-bb2e-c3dcb8300618', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e3eddc21-7571-4088-ac2a-4a993f5631a7', N'Neme4', N'LasName4', N'user4Basic', N'USER4BASIC', N'userBasic4@mail.com', N'USERBASIC4@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEBCpKLY8pIE1m2uHEFTC5om4K/SHlbV0poLRKzrN5ZCLdJQ9Xwdk2dFNkK/pi60O+w==', N'UOFAG6MPVKO67DYYMNMNAJGZYW67A7AM', N'7863d544-78b8-48a9-b217-a8b24a63e9c2', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e901c0fd-9843-4a33-94f6-f42a27524bb0', N'Neme30', N'LasName30', N'user30Basic', N'USER30BASIC', N'userBasic30@mail.com', N'USERBASIC30@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEEWxG/xW12huP0sMrJeuVgsb6rE4DSIn7DCL3lWv3dtgDAWJaz5af4etkcYJSJ7coA==', N'5YKRAJKAULUZRMGMTDDAQL2BDE2FPVEH', N'bddff6f8-3078-4272-ac5b-76ce5d50e3f7', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ea393e37-9e6e-46f7-8e52-c2a07eca31f3', N'Neme10', N'LasName10', N'user10Basic', N'USER10BASIC', N'userBasic10@mail.com', N'USERBASIC10@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEMHDn8/zfyImvgHwrefWyPo5dwz43v3JG9nzFDIDVHF3/Rj/BMpgccPlrvfugePYQQ==', N'KRO4KMQA2D5LNGM6XAXPK4E7AOW2SO5F', N'906cfc18-3932-4370-8e7b-1e1eedcc19aa', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ec5fbb8c-993f-4ea2-af89-b7a3a98fafbc', N'Neme82', N'LasName82', N'user82Basic', N'USER82BASIC', N'userBasic82@mail.com', N'USERBASIC82@MAIL.COM', 1, N'AQAAAAEAACcQAAAAENmMTEhy6fLwCSVPQyfrzyE8lzKzKqieFERTCm3C2YCUFPK0XZMc6762/W1ndxNNhw==', N'LBFXQIB4IDQL56Z5HCSBDE2O5BD52BPM', N'78309076-6f76-46c3-9931-595bc15ae3da', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f0482c85-8ad5-4a3e-b3fe-ef2726256c27', N'Neme1', N'LasName1', N'user1Basic', N'USER1BASIC', N'userBasic1@mail.com', N'USERBASIC1@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEB7Os9H2Co9QkMXvuTsawQr5bmDHp3wBLT+ifXLetT2mxAwv4oOW/Sg2DG2TaK1KRA==', N'PB6G3U3RHHKT2NNYHFHN2RE3VIIG7X6W', N'494c9475-cf1c-4114-813d-4b6575598021', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f33770ed-9ae1-49eb-9501-615492321da2', N'Neme91', N'LasName91', N'user91Basic', N'USER91BASIC', N'userBasic91@mail.com', N'USERBASIC91@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEHdYpjIrW8JNKRmVYKaV2ReoMsdzu3/12DYtEiQL7A8u4wcPgbW3mBVBhtZoZgAKdQ==', N'BNOPGVILRKS3ESCWZTGKZ7FOI56Y6RU5', N'ef02bf95-32b7-4d38-88f3-8d72d780ea4b', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fa0f7d40-d4b5-49de-adb1-be2f57f3fbbd', N'Neme68', N'LasName68', N'user68Basic', N'USER68BASIC', N'userBasic68@mail.com', N'USERBASIC68@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEI49HMABKN2ufjjUqaacSo5IUrc5HmPNTBdXASwaiMH+muf2WXSMcxahltCIvQu5eA==', N'PFAELS7Q7UFPYUORJI4SPODRF5JS7K4X', N'c05dabd9-2794-436c-b452-9e03ffa58b45', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fe6f6756-0fcf-4e7f-b0dc-078cf8f481d8', N'Neme84', N'LasName84', N'user84Basic', N'USER84BASIC', N'userBasic84@mail.com', N'USERBASIC84@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEHVWjRIrZJAiZQ6nPdCXrgwlIKbflpk6EuNC9P5Zbc4o66lRohVsJBHyI4P0x0IY7Q==', N'OE57FDD7P3YZVOBMQNPPJ4PNJGI6HIBR', N'c822af85-f026-4d3b-9702-b5404d5c41e6', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ff1526d7-f90a-4f88-b04c-2a2658cf73c5', N'Neme72', N'LasName72', N'user72Basic', N'USER72BASIC', N'userBasic72@mail.com', N'USERBASIC72@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEOdL2i3lMbsOWKKOPNwaAxksVd4wS4s2neQN9dmoOZIObTAmg/eZdK5vRcPDaw7Bbg==', N'DPGSWYZ3QOEPKWTNQQ55EPTHRGCF66CT', N'7b479398-2b27-4eed-b5c4-1bb05a028457', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ff17e92f-35e0-4e49-b651-00a2fd77bf22', N'Neme54', N'LasName54', N'user54Basic', N'USER54BASIC', N'userBasic54@mail.com', N'USERBASIC54@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEP7S2tv/4GWHdzK4n7U8h5OJmwZw0wyhWavDgBaBFQcojDgA2x0am01NR7SXSy66kQ==', N'S54ABKDPB6AHJUO74TJIPWOOCM2EDMCX', N'ea8ec3d8-d31c-4575-8b47-eaa32a8cc917', NULL, 1, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ffca6d7b-7fcb-4713-8fda-7ec06ec69d1d', N'Neme47', N'LasName47', N'user47Basic', N'USER47BASIC', N'userBasic47@mail.com', N'USERBASIC47@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEDWAsgckcdt/4BpkJ7GOhaOJltjUnKXx6P0jXHjNsbta1jWIAtzTByazk1yyON4Ffg==', N'3TFCPEJ26CUWFX72JAF5LBRK5FD3LW6Z', N'395de260-3aba-4a47-9ff6-bd8a5ec44b9f', NULL, 1, 0, NULL, 1, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 13/02/2024 02:39:17 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 13/02/2024 02:39:17 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 13/02/2024 02:39:17 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 13/02/2024 02:39:17 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 13/02/2024 02:39:17 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 13/02/2024 02:39:17 p. m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 13/02/2024 02:39:17 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [TestEGDB] SET  READ_WRITE 
GO
