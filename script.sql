USE [master]
GO
/****** Object:  Database [VehicleProjectDb]    Script Date: 5.09.2022 13:27:15 ******/
CREATE DATABASE [VehicleProjectDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VehicleProjectDb', FILENAME = N'C:\Users\umurg\VehicleProjectDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VehicleProjectDb_log', FILENAME = N'C:\Users\umurg\VehicleProjectDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [VehicleProjectDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VehicleProjectDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VehicleProjectDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [VehicleProjectDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VehicleProjectDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VehicleProjectDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VehicleProjectDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VehicleProjectDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [VehicleProjectDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VehicleProjectDb] SET  MULTI_USER 
GO
ALTER DATABASE [VehicleProjectDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VehicleProjectDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VehicleProjectDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VehicleProjectDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VehicleProjectDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VehicleProjectDb] SET QUERY_STORE = OFF
GO
USE [VehicleProjectDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [VehicleProjectDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5.09.2022 13:27:15 ******/
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
/****** Object:  Table [dbo].[Boats]    Script Date: 5.09.2022 13:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Boats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buses]    Script Date: 5.09.2022 13:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Buses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 5.09.2022 13:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfWheels] [int] NOT NULL,
	[HeadlightStatus] [bit] NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5.09.2022 13:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220903173605_initialCreate', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220903175102_initialCreate', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220905092008_userTableAdded', N'6.0.8')
GO
SET IDENTITY_INSERT [dbo].[Boats] ON 

INSERT [dbo].[Boats] ([Id], [Color]) VALUES (1, N'RED')
INSERT [dbo].[Boats] ([Id], [Color]) VALUES (2, N'BLUE')
INSERT [dbo].[Boats] ([Id], [Color]) VALUES (3, N'BLACK')
INSERT [dbo].[Boats] ([Id], [Color]) VALUES (4, N'WHITE')
SET IDENTITY_INSERT [dbo].[Boats] OFF
GO
SET IDENTITY_INSERT [dbo].[Buses] ON 

INSERT [dbo].[Buses] ([Id], [Color]) VALUES (1, N'RED')
INSERT [dbo].[Buses] ([Id], [Color]) VALUES (2, N'BLUE')
INSERT [dbo].[Buses] ([Id], [Color]) VALUES (3, N'BLACK')
INSERT [dbo].[Buses] ([Id], [Color]) VALUES (4, N'WHITE')
SET IDENTITY_INSERT [dbo].[Buses] OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([Id], [NumberOfWheels], [HeadlightStatus], [Color]) VALUES (1, 4, 0, N'RED')
INSERT [dbo].[Cars] ([Id], [NumberOfWheels], [HeadlightStatus], [Color]) VALUES (2, 4, 0, N'BLUE')
INSERT [dbo].[Cars] ([Id], [NumberOfWheels], [HeadlightStatus], [Color]) VALUES (3, 4, 0, N'BLACK')
INSERT [dbo].[Cars] ([Id], [NumberOfWheels], [HeadlightStatus], [Color]) VALUES (4, 4, 0, N'WHITE')
INSERT [dbo].[Cars] ([Id], [NumberOfWheels], [HeadlightStatus], [Color]) VALUES (5, 4, 0, N'RED')
INSERT [dbo].[Cars] ([Id], [NumberOfWheels], [HeadlightStatus], [Color]) VALUES (6, 4, 0, N'BLUE')
INSERT [dbo].[Cars] ([Id], [NumberOfWheels], [HeadlightStatus], [Color]) VALUES (7, 4, 0, N'BLACK')
INSERT [dbo].[Cars] ([Id], [NumberOfWheels], [HeadlightStatus], [Color]) VALUES (8, 4, 0, N'WHITE')
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [PasswordHash], [PasswordSalt]) VALUES (1, N'deneme1', 0x7FF646B316E5B0FF2C7DDF4242C6397827C84AB18248E50BF13EE5510706210472492F393AA46FA231640461BBB6B34E10EAED77102E7937D3CA1A9E7F0B7A14, 0x905042704417FC513D784AF9899CC0B962D06FFE5088978061EFEEC797E0A3F85133D8FF56C120F81CCF9821CD3882E22C1A810DD70456875733C3D8C3E6A10AAA2AF3A4D056571AD1CA4EF9E0E7AF935362B6D6243DADD89A7050C1C91DA97E1CABDCBC34E14D378FFD37FC086625006B9AF31E5615068B766AA659A6A1A9C9)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [VehicleProjectDb] SET  READ_WRITE 
GO
