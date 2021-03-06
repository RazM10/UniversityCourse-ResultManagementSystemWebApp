USE [master]
GO
/****** Object:  Database [UniversityManagementSystemDB]    Script Date: 12/21/2018 3:11:49 PM ******/
CREATE DATABASE [UniversityManagementSystemDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniversityManagementSystemDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\UniversityManagementSystemDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UniversityManagementSystemDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\UniversityManagementSystemDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UniversityManagementSystemDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversityManagementSystemDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversityManagementSystemDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityManagementSystemDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityManagementSystemDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [UniversityManagementSystemDB]
GO
/****** Object:  Table [dbo].[ClassRoom]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassRoom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NULL,
	[CourseId] [int] NULL,
	[RoomId] [int] NULL,
	[DayId] [int] NULL,
	[TimeFrom] [varchar](50) NULL,
	[TimeTo] [varchar](50) NULL,
	[Flag] [int] NULL,
 CONSTRAINT [PK_ClassRoom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Credit] [decimal](3, 2) NULL,
	[Description] [varchar](100) NULL,
	[DepartmentId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CourseAssign]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseAssign](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NULL,
	[TeacherId] [int] NULL,
	[CourseId] [int] NULL,
	[CreditTaken] [decimal](10, 2) NULL,
	[Flag] [int] NULL,
 CONSTRAINT [PK_CourseAssign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Day]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Day](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Day] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResultSave]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultSave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[CourseId] [int] NULL,
	[GradeId] [int] NULL,
 CONSTRAINT [PK_ResultSave] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Room]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semester](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationId] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Date] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentEnroll]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentEnroll](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[CourseId] [int] NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_StudentEnroll] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Email] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[CreditTaken] [decimal](10, 2) NULL,
	[RemainingCredit] [decimal](18, 2) NULL,
	[DesignationId] [int] NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[CourseView]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CourseView] AS
SELECT c.Code AS Code,c.Name AS Title,t.Name AS Assigned 
FROM Course C,Department d,Teacher t WHERE c.DepartmentId=1 AND t.DepartmentId=1



GO
/****** Object:  View [dbo].[StudentTotal]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StudentTotal] AS
SELECT DepartmentId, COUNT(*) as Total FROM Student GROUP BY DepartmentId



GO
/****** Object:  View [dbo].[ViewCourse]    Script Date: 12/21/2018 3:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewCourse] AS
SELECT c.Code AS Code,c.Name AS Name,s.Name AS Semester,t.Name AS Assaign
FROM Course c, Semester s, Teacher t
WHERE c.DepartmentId=1 AND t.DepartmentId=1 AND c.SemesterId=1 AND s.Id=1;




GO
SET IDENTITY_INSERT [dbo].[ClassRoom] ON 

INSERT [dbo].[ClassRoom] ([Id], [DepartmentId], [CourseId], [RoomId], [DayId], [TimeFrom], [TimeTo], [Flag]) VALUES (1, 1, 1, 1, 1, N'11:00', N'12:00', 1)
INSERT [dbo].[ClassRoom] ([Id], [DepartmentId], [CourseId], [RoomId], [DayId], [TimeFrom], [TimeTo], [Flag]) VALUES (2, 1, 2, 2, 1, N'11:00', N'12:00', 1)
INSERT [dbo].[ClassRoom] ([Id], [DepartmentId], [CourseId], [RoomId], [DayId], [TimeFrom], [TimeTo], [Flag]) VALUES (3, 1, 1, 1, 1, N'12:00', N'13:00', 1)
INSERT [dbo].[ClassRoom] ([Id], [DepartmentId], [CourseId], [RoomId], [DayId], [TimeFrom], [TimeTo], [Flag]) VALUES (4, 1, 2, 1, 2, N'08:00', N'09:00', 1)
SET IDENTITY_INSERT [dbo].[ClassRoom] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (1, N'CSE-101', N'Computer Fundamental', CAST(3.00 AS Decimal(3, 2)), N'Fundamental', 1, 1)
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (2, N'CSE-102', N'Computer Programming', CAST(4.00 AS Decimal(3, 2)), N'C Programming', 1, 1)
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (3, N'CSE-103', N'OOP', CAST(4.00 AS Decimal(3, 2)), N'C++', 1, 1)
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId]) VALUES (4, N'CSE-4801', N'Machine Learning', CAST(4.00 AS Decimal(3, 2)), N'Artificial Inteligence', 1, 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[CourseAssign] ON 

INSERT [dbo].[CourseAssign] ([Id], [DepartmentId], [TeacherId], [CourseId], [CreditTaken], [Flag]) VALUES (4, 1, 1, 1, CAST(3.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[CourseAssign] ([Id], [DepartmentId], [TeacherId], [CourseId], [CreditTaken], [Flag]) VALUES (5, 1, 1, 2, CAST(4.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[CourseAssign] ([Id], [DepartmentId], [TeacherId], [CourseId], [CreditTaken], [Flag]) VALUES (8, 1, 2, 1, CAST(3.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[CourseAssign] ([Id], [DepartmentId], [TeacherId], [CourseId], [CreditTaken], [Flag]) VALUES (9, 1, 2, 4, CAST(4.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[CourseAssign] ([Id], [DepartmentId], [TeacherId], [CourseId], [CreditTaken], [Flag]) VALUES (10, 1, 3, 1, CAST(3.00 AS Decimal(10, 2)), 0)
SET IDENTITY_INSERT [dbo].[CourseAssign] OFF
SET IDENTITY_INSERT [dbo].[Day] ON 

INSERT [dbo].[Day] ([Id], [Name]) VALUES (1, N'Sunday')
INSERT [dbo].[Day] ([Id], [Name]) VALUES (2, N'Monday')
SET IDENTITY_INSERT [dbo].[Day] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id], [Code], [Name]) VALUES (1, N'CSE', N'Computer Science & Engineering')
INSERT [dbo].[Department] ([Id], [Code], [Name]) VALUES (2, N'EEE', N'Electronics & Engineering')
INSERT [dbo].[Department] ([Id], [Code], [Name]) VALUES (3, N'ETE', N'Electronics & Telecomunication Engineering')
INSERT [dbo].[Department] ([Id], [Code], [Name]) VALUES (4, N'DBA', N'Business & Administration')
INSERT [dbo].[Department] ([Id], [Code], [Name]) VALUES (5, N'EB', N'Economics And Banking')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([Id], [Name]) VALUES (1, N'Lecturer')
INSERT [dbo].[Designation] ([Id], [Name]) VALUES (2, N'Professor')
INSERT [dbo].[Designation] ([Id], [Name]) VALUES (3, N'Assist. Professor')
INSERT [dbo].[Designation] ([Id], [Name]) VALUES (4, N'Dr.')
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([Id], [Name]) VALUES (1, N'A+')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (2, N'A')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (3, N'A-')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (4, N'B+')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (5, N'B')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (6, N'B-')
SET IDENTITY_INSERT [dbo].[Grade] OFF
SET IDENTITY_INSERT [dbo].[ResultSave] ON 

INSERT [dbo].[ResultSave] ([Id], [StudentId], [CourseId], [GradeId]) VALUES (1, 1, 1, 1)
INSERT [dbo].[ResultSave] ([Id], [StudentId], [CourseId], [GradeId]) VALUES (2, 11, 2, 1)
SET IDENTITY_INSERT [dbo].[ResultSave] OFF
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Id], [Name]) VALUES (1, N'S-101')
INSERT [dbo].[Room] ([Id], [Name]) VALUES (2, N'S-102')
SET IDENTITY_INSERT [dbo].[Room] OFF
SET IDENTITY_INSERT [dbo].[Semester] ON 

INSERT [dbo].[Semester] ([Id], [Name]) VALUES (1, N'1st')
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (2, N'2nd')
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (3, N'3rd')
SET IDENTITY_INSERT [dbo].[Semester] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [RegistrationId], [Name], [Email], [ContactNo], [Address], [Date], [DepartmentId]) VALUES (1, N'CSE-2018-001', N'asv', N'asv@gmail.com', N'01777777777', N'214/a', N'2018-05-06', 1)
INSERT [dbo].[Student] ([Id], [RegistrationId], [Name], [Email], [ContactNo], [Address], [Date], [DepartmentId]) VALUES (2, N'CSE-2018-002', N'asc', N'asc@gmail.com', N'01677777777', N'215/a', N'2018-06-07', 1)
INSERT [dbo].[Student] ([Id], [RegistrationId], [Name], [Email], [ContactNo], [Address], [Date], [DepartmentId]) VALUES (3, N'EEE-2018-003', N'avb', N'avn@gmail.com', N'01777777777', N'254/', N'2018-06-07', 2)
INSERT [dbo].[Student] ([Id], [RegistrationId], [Name], [Email], [ContactNo], [Address], [Date], [DepartmentId]) VALUES (6, N'CSE-2018-004', N'S.M Sifat Haider Jamali', N'aligetorking@gmail.com', N'01914331415', N'15/1-D, Tigerpass Railway Colony,Chittagong', N'2018-12-12', 1)
INSERT [dbo].[Student] ([Id], [RegistrationId], [Name], [Email], [ContactNo], [Address], [Date], [DepartmentId]) VALUES (7, N'CSE-2018-005', N'kool', N'kool@gmail.com', N'0417777777', N'214/s', N'2018-12-10', 1)
INSERT [dbo].[Student] ([Id], [RegistrationId], [Name], [Email], [ContactNo], [Address], [Date], [DepartmentId]) VALUES (8, N'EEE-2018-003', N'bool', N'bool@gmail.com', N'0199999999', N'214/s', N'2018-12-16', 2)
INSERT [dbo].[Student] ([Id], [RegistrationId], [Name], [Email], [ContactNo], [Address], [Date], [DepartmentId]) VALUES (9, N'EEE-2018-004', N'Fan', N'fan@gmail.com', N'143245', N'12/0', N'2018-12-14', 2)
INSERT [dbo].[Student] ([Id], [RegistrationId], [Name], [Email], [ContactNo], [Address], [Date], [DepartmentId]) VALUES (10, N'CSE-2019-001', N'Rakib', N'r@gmail.com', N'01992332', N'12/0', N'2019-01-02', 1)
INSERT [dbo].[Student] ([Id], [RegistrationId], [Name], [Email], [ContactNo], [Address], [Date], [DepartmentId]) VALUES (11, N'CSE-2018-005', N'jumman', N'eer@gmail.com', N'12345678912', N'254/4', N'2018-12-21', 1)
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[StudentEnroll] ON 

INSERT [dbo].[StudentEnroll] ([Id], [StudentId], [CourseId], [Date]) VALUES (1, 1, 1, N'2018-12-20')
INSERT [dbo].[StudentEnroll] ([Id], [StudentId], [CourseId], [Date]) VALUES (2, 1, 2, N'2018-12-20')
INSERT [dbo].[StudentEnroll] ([Id], [StudentId], [CourseId], [Date]) VALUES (3, 11, 2, N'2018-12-21')
SET IDENTITY_INSERT [dbo].[StudentEnroll] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (1, N'FBA', N'254/a', N'fba@gmail.com', N'01777777777', CAST(24.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (2, N'MMH', N'214/b', N'mmh@gmail.com', N'01888888888', CAST(22.00 AS Decimal(10, 2)), CAST(13.00 AS Decimal(18, 2)), 3, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (3, N'YA', N'224/a', N'ya@gmail.com', N'01999999999', CAST(26.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (7, N'MMU', N'255/z', N'mmu@gmail.com', N'01666666666', CAST(24.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (8, N'MMU', N'255/z', N'mmu@gmail.com', N'01666666666', CAST(24.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (9, N'MMU', N'255/z', N'mmu@gmail.com', N'01666666666', CAST(24.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (10, N'Sharif', N'100/a', N's@gmail.com', N'017217721', CAST(12.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (11, N'MMU', N'255/z', N'mmu@gmail.com', N'01666666666', CAST(22.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (13, N'Mj', N'214/s', N'ms@Gmail.com', N'01472583691', CAST(24.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [CreditTaken], [RemainingCredit], [DesignationId], [DepartmentId]) VALUES (14, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Course]
GO
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Day] FOREIGN KEY([DayId])
REFERENCES [dbo].[Day] ([Id])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Day]
GO
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Department]
GO
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Room]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Semester]
GO
ALTER TABLE [dbo].[CourseAssign]  WITH CHECK ADD  CONSTRAINT [FK_CourseAssign_Course] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[CourseAssign] CHECK CONSTRAINT [FK_CourseAssign_Course]
GO
ALTER TABLE [dbo].[CourseAssign]  WITH CHECK ADD  CONSTRAINT [FK_CourseAssign_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[CourseAssign] CHECK CONSTRAINT [FK_CourseAssign_Teacher]
GO
ALTER TABLE [dbo].[ResultSave]  WITH CHECK ADD  CONSTRAINT [FK_ResultSave_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[ResultSave] CHECK CONSTRAINT [FK_ResultSave_Course]
GO
ALTER TABLE [dbo].[ResultSave]  WITH CHECK ADD  CONSTRAINT [FK_ResultSave_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([Id])
GO
ALTER TABLE [dbo].[ResultSave] CHECK CONSTRAINT [FK_ResultSave_Grade]
GO
ALTER TABLE [dbo].[ResultSave]  WITH CHECK ADD  CONSTRAINT [FK_ResultSave_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[ResultSave] CHECK CONSTRAINT [FK_ResultSave_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
ALTER TABLE [dbo].[StudentEnroll]  WITH CHECK ADD  CONSTRAINT [FK_StudentEnroll_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[StudentEnroll] CHECK CONSTRAINT [FK_StudentEnroll_Course]
GO
ALTER TABLE [dbo].[StudentEnroll]  WITH CHECK ADD  CONSTRAINT [FK_StudentEnroll_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentEnroll] CHECK CONSTRAINT [FK_StudentEnroll_Student]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Department]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Designation] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designation] ([Id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Designation]
GO
USE [master]
GO
ALTER DATABASE [UniversityManagementSystemDB] SET  READ_WRITE 
GO
