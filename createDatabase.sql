USE [master]
GO
/****** Object:  Database [INFT3050Ass1]    Script Date: 6/11/2015 12:48:28 PM ******/
CREATE DATABASE [INFT3050Ass1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'INFT3050Ass1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.DEVENVIRONMENT\MSSQL\DATA\INFT3050Ass1.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'INFT3050Ass1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.DEVENVIRONMENT\MSSQL\DATA\INFT3050Ass1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [INFT3050Ass1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [INFT3050Ass1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [INFT3050Ass1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET ARITHABORT OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [INFT3050Ass1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [INFT3050Ass1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [INFT3050Ass1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [INFT3050Ass1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [INFT3050Ass1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET RECOVERY FULL 
GO
ALTER DATABASE [INFT3050Ass1] SET  MULTI_USER 
GO
ALTER DATABASE [INFT3050Ass1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [INFT3050Ass1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [INFT3050Ass1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [INFT3050Ass1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'INFT3050Ass1', N'ON'
GO
USE [INFT3050Ass1]
GO
/****** Object:  StoredProcedure [dbo].[Insert_User]    Script Date: 6/11/2015 12:48:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_User]
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@Username NVARCHAR(50),
	@Email NVARCHAR(50),
	@ParentEmail NVARCHAR(50),
	@Password NVARCHAR(25)
AS
BEGIN
	SET NOCOUNT ON;
	IF EXISTS(SELECT Username FROM Users WHERE Username = @Username)
	BEGIN
		SELECT -1 -- Username exists.
	END
	ELSE IF EXISTS(SELECT Username FROM Users WHERE Email = @Email)
	BEGIN
		SELECT -2 -- Email exists.
	END
	ELSE
	BEGIN
		INSERT INTO [Users]
			   ([FirstName]
			   ,[LastName]
			   ,[Username]
			   ,[Email]
			   ,[ParentEmail]
			   ,[Password])
		VALUES
			   (@FirstName
			   ,@LastName
			   ,@Username
			   ,@Email
			   ,@ParentEmail
			   ,@Password)
			   SELECT SCOPE_IDENTITY() -- UserId			   
     END
END



GO
/****** Object:  Table [dbo].[Battles]    Script Date: 6/11/2015 12:48:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Battles](
	[BattleId] [int] IDENTITY(1,1) NOT NULL,
	[DefenderId] [int] NOT NULL,
	[ChallengerId] [int] NOT NULL,
	[WinnerId] [int] NOT NULL,
	[ExperiencePointsEarned] [int] NOT NULL,
	[DateTime] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tbl_battle] PRIMARY KEY CLUSTERED 
(
	[BattleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Elements]    Script Date: 6/11/2015 12:48:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elements](
	[ElementId] [int] IDENTITY(1,1) NOT NULL,
	[ElementType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_elementalClass] PRIMARY KEY CLUSTERED 
(
	[ElementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExerciseLogs]    Script Date: 6/11/2015 12:48:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExerciseLogs](
	[ExerciseId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[ExerciseValue] [int] NULL,
	[DateTimeUploaded] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tbl_exerciseLog] PRIMARY KEY CLUSTERED 
(
	[ExerciseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HallOfFame]    Script Date: 6/11/2015 12:48:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HallOfFame](
	[HofId] [int] IDENTITY(1,1) NOT NULL,
	[MonsterId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_hallOfFame_1] PRIMARY KEY CLUSTERED 
(
	[HofId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Monsters]    Script Date: 6/11/2015 12:48:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monsters](
	[MonsterId] [int] IDENTITY(1,1) NOT NULL,
	[MonsterName] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[ElementId] [int] NOT NULL,
	[ExperiencePoints] [int] NULL,
	[Retired] [bit] NOT NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[MonsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/11/2015 12:48:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[ParentEmail] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
	[NameIsPublic] [bit] NOT NULL,
	[AccountEnabled] [bit] NOT NULL,
	[UnallocatedPoints] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Elements] ON 

INSERT [dbo].[Elements] ([ElementId], [ElementType]) VALUES (1, N'Air')
INSERT [dbo].[Elements] ([ElementId], [ElementType]) VALUES (2, N'Earth')
INSERT [dbo].[Elements] ([ElementId], [ElementType]) VALUES (3, N'Fire')
INSERT [dbo].[Elements] ([ElementId], [ElementType]) VALUES (4, N'Water')
SET IDENTITY_INSERT [dbo].[Elements] OFF
SET IDENTITY_INSERT [dbo].[Monsters] ON 

INSERT [dbo].[Monsters] ([MonsterId], [MonsterName], [Username], [ElementId], [ExperiencePoints], [Retired]) VALUES (1, N'alicejr', N'alice', 1, 20, 0)
INSERT [dbo].[Monsters] ([MonsterId], [MonsterName], [Username], [ElementId], [ExperiencePoints], [Retired]) VALUES (2, N'bobjr', N'bob', 2, 40, 0)
INSERT [dbo].[Monsters] ([MonsterId], [MonsterName], [Username], [ElementId], [ExperiencePoints], [Retired]) VALUES (3, N'caroljr', N'carol', 3, 60, 0)
INSERT [dbo].[Monsters] ([MonsterId], [MonsterName], [Username], [ElementId], [ExperiencePoints], [Retired]) VALUES (4, N'davejr', N'dave', 4, 80, 0)
SET IDENTITY_INSERT [dbo].[Monsters] OFF
INSERT [dbo].[Users] ([Username], [FirstName], [LastName], [Email], [ParentEmail], [Password], [NameIsPublic], [AccountEnabled], [UnallocatedPoints]) VALUES (N'alice', N'alice', N'alice', N'alice@example.com', N'mum@example.com', N'@', 0, 1, 0)
INSERT [dbo].[Users] ([Username], [FirstName], [LastName], [Email], [ParentEmail], [Password], [NameIsPublic], [AccountEnabled], [UnallocatedPoints]) VALUES (N'bob', N'bob', N'bob', N'bob@example.com', N'mum@example.com', N'@', 0, 1, 0)
INSERT [dbo].[Users] ([Username], [FirstName], [LastName], [Email], [ParentEmail], [Password], [NameIsPublic], [AccountEnabled], [UnallocatedPoints]) VALUES (N'carol', N'carol', N'carol', N'carol@example.com', N'mum@example.com', N'@', 0, 1, 0)
INSERT [dbo].[Users] ([Username], [FirstName], [LastName], [Email], [ParentEmail], [Password], [NameIsPublic], [AccountEnabled], [UnallocatedPoints]) VALUES (N'dave', N'dave', N'dave', N'dave@example.com', N'mum@example.com', N'@', 0, 1, 0)
INSERT [dbo].[Users] ([Username], [FirstName], [LastName], [Email], [ParentEmail], [Password], [NameIsPublic], [AccountEnabled], [UnallocatedPoints]) VALUES (N'eve', N'eve', N'eve', N'eve@example.com', N'mum@example.com', N'@', 0, 1, 0)
ALTER TABLE [dbo].[Monsters] ADD  CONSTRAINT [DF_Characters_Retired]  DEFAULT ((0)) FOR [Retired]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_NamePublic]  DEFAULT ((0)) FOR [NameIsPublic]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_AccountEnabled]  DEFAULT ((1)) FOR [AccountEnabled]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UnallocatedPoints]  DEFAULT ((0)) FOR [UnallocatedPoints]
GO
ALTER TABLE [dbo].[Battles]  WITH CHECK ADD  CONSTRAINT [FK_Battles_Monsters] FOREIGN KEY([DefenderId])
REFERENCES [dbo].[Monsters] ([MonsterId])
GO
ALTER TABLE [dbo].[Battles] CHECK CONSTRAINT [FK_Battles_Monsters]
GO
ALTER TABLE [dbo].[Battles]  WITH CHECK ADD  CONSTRAINT [FK_Battles_Monsters1] FOREIGN KEY([ChallengerId])
REFERENCES [dbo].[Monsters] ([MonsterId])
GO
ALTER TABLE [dbo].[Battles] CHECK CONSTRAINT [FK_Battles_Monsters1]
GO
ALTER TABLE [dbo].[Battles]  WITH CHECK ADD  CONSTRAINT [FK_Battles_Monsters2] FOREIGN KEY([WinnerId])
REFERENCES [dbo].[Monsters] ([MonsterId])
GO
ALTER TABLE [dbo].[Battles] CHECK CONSTRAINT [FK_Battles_Monsters2]
GO
ALTER TABLE [dbo].[ExerciseLogs]  WITH CHECK ADD  CONSTRAINT [FK_ExerciseLogs_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[ExerciseLogs] CHECK CONSTRAINT [FK_ExerciseLogs_Users]
GO
ALTER TABLE [dbo].[HallOfFame]  WITH CHECK ADD  CONSTRAINT [FK_HallOfFame_Monsters] FOREIGN KEY([MonsterId])
REFERENCES [dbo].[Monsters] ([MonsterId])
GO
ALTER TABLE [dbo].[HallOfFame] CHECK CONSTRAINT [FK_HallOfFame_Monsters]
GO
ALTER TABLE [dbo].[Monsters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Elements] FOREIGN KEY([ElementId])
REFERENCES [dbo].[Elements] ([ElementId])
GO
ALTER TABLE [dbo].[Monsters] CHECK CONSTRAINT [FK_Characters_Elements]
GO
ALTER TABLE [dbo].[Monsters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Monsters] CHECK CONSTRAINT [FK_Characters_Users]
GO
USE [master]
GO
ALTER DATABASE [INFT3050Ass1] SET  READ_WRITE 
GO
