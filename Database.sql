USE [master]
GO
/****** Object:  Database [SRSS]    Script Date: 29-01-2023 13:09:47 ******/
CREATE DATABASE [SRSS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SRSS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SRSS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SRSS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SRSS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SRSS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SRSS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SRSS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SRSS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SRSS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SRSS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SRSS] SET ARITHABORT OFF 
GO
ALTER DATABASE [SRSS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SRSS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SRSS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SRSS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SRSS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SRSS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SRSS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SRSS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SRSS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SRSS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SRSS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SRSS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SRSS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SRSS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SRSS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SRSS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SRSS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SRSS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SRSS] SET  MULTI_USER 
GO
ALTER DATABASE [SRSS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SRSS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SRSS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SRSS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SRSS] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SRSS]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Application](
	[Company_ID] [int] NOT NULL,
	[Job_Title] [varchar](50) NULL,
	[Student_ID] [int] NOT NULL,
	[College_Name] [varchar](50) NULL,
	[created_at] [varchar](50) NULL,
	[created_by] [int] NULL,
	[updated_at] [varchar](50) NULL,
	[updated_by] [int] NULL,
	[deleted_at] [varchar](50) NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Applied_Students]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Applied_Students](
	[HR_ID] [int] NOT NULL,
	[Student_ID] [int] NOT NULL,
	[Job_Tittle] [varchar](50) NOT NULL,
	[Apply_Date] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[College_Table]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[College_Table](
	[College_ID] [int] IDENTITY(1,1) NOT NULL,
	[College_Name] [varchar](50) NOT NULL,
	[NAAC_Rating] [int] NOT NULL,
	[Teacher_ID] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_College_Table] PRIMARY KEY CLUSTERED 
(
	[College_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Company_ID] [int] NOT NULL,
	[HR_ID] [int] NOT NULL,
	[Company_Name] [varchar](50) NOT NULL,
	[CMMI_Level] [int] NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_dbo.Company] PRIMARY KEY CLUSTERED 
(
	[HR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR](
	[HR_ID] [int] NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Email_ID] [varchar](50) NULL,
	[Phone_Number] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Job_Description] [varchar](200) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_HR] PRIMARY KEY CLUSTERED 
(
	[HR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HR_Experience]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HR_Experience](
	[HR_ID] [int] NOT NULL,
	[Company_Name] [varchar](50) NULL,
	[Job_Title] [varchar](50) NULL,
	[Job_Description] [varchar](50) NULL,
	[From_Year] [datetime] NULL,
	[To_Year] [datetime] NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job_Post]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job_Post](
	[HR_ID] [int] NOT NULL,
	[Job_ID] [int] NOT NULL,
	[Job_Title] [varchar](50) NOT NULL,
	[Skills_Required] [varchar](50) NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[Job_Description] [varchar](50) NULL,
	[Package] [varchar](50) NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_Job_Post] PRIMARY KEY CLUSTERED 
(
	[Job_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students_education]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students_education](
	[Student_Id] [int] NOT NULL,
	[College_Name] [varchar](50) NULL,
	[Education] [varchar](50) NULL,
	[From_Year] [datetime] NULL,
	[To_Year] [datetime] NULL,
	[Certificate] [varchar](50) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[Teacher_ID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Teacher_Name] [varchar](50) NOT NULL,
	[Teacher_Department] [varchar](50) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Teacher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 29-01-2023 13:09:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Gender] [int] NULL,
	[RoleType] [tinyint] NULL,
	[Email] [varchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[Phone] [varchar](10) NULL,
	[CollegeName] [varchar](50) NULL,
	[University] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [SRSS] SET  READ_WRITE 
GO
