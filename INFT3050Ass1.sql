USE [master]
GO
/****** Object:  Database [test]    Script Date: 11/2/2015 2:37:11 PM ******/
CREATE DATABASE [test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'INFT3050Ass1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.DEVENVIRONMENT\MSSQL\DATA\test.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'INFT3050Ass1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.DEVENVIRONMENT\MSSQL\DATA\test_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [test] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test] SET ARITHABORT OFF 
GO
ALTER DATABASE [test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test] SET RECOVERY FULL 
GO
ALTER DATABASE [test] SET  MULTI_USER 
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'INFT3050Ass1', N'ON'
GO
USE [test]
GO
/****** Object:  StoredProcedure [dbo].[Insert_User]    Script Date: 11/2/2015 2:37:11 PM ******/
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
/****** Object:  Table [dbo].[Battles]    Script Date: 11/2/2015 2:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Battles](
	[BattleId] [int] IDENTITY(1,1) NOT NULL,
	[DefenderName] [nvarchar](50) NOT NULL,
	[ChallengerName] [nvarchar](50) NOT NULL,
	[Winner] [nvarchar](50) NOT NULL,
	[ExperiencePointsEarned] [int] NOT NULL,
	[DateTime] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tbl_battle] PRIMARY KEY CLUSTERED 
(
	[BattleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Characters]    Script Date: 11/2/2015 2:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characters](
	[CharacterName] [nvarchar](50) NOT NULL,
	[UserId] [int] NULL,
	[ElementalId] [int] NOT NULL,
	[ExperiencePoints] [int] NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[CharacterName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Elements]    Script Date: 11/2/2015 2:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elements](
	[ElementId] [int] IDENTITY(1,1) NOT NULL,
	[ElementType] [nchar](15) NOT NULL,
 CONSTRAINT [PK_tbl_elementalClass] PRIMARY KEY CLUSTERED 
(
	[ElementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExerciseLogs]    Script Date: 11/2/2015 2:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExerciseLogs](
	[ExerciseId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ExerciseValue] [int] NULL,
	[DateTimeUploaded] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tbl_exerciseLog] PRIMARY KEY CLUSTERED 
(
	[ExerciseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HallOfFame]    Script Date: 11/2/2015 2:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HallOfFame](
	[HofId] [int] IDENTITY(1,1) NOT NULL,
	[CharacterName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_hallOfFame_1] PRIMARY KEY CLUSTERED 
(
	[HofId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/2/2015 2:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[ParentEmail] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
	[NameIsPublic] [bit] NOT NULL,
	[AccountEnabled] [bit] NOT NULL,
	[UnallocatedPoints] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_NamePublic]  DEFAULT ((0)) FOR [NameIsPublic]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_AccountEnabled]  DEFAULT ((1)) FOR [AccountEnabled]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UnallocatedPoints]  DEFAULT ((0)) FOR [UnallocatedPoints]
GO
ALTER TABLE [dbo].[Battles]  WITH CHECK ADD  CONSTRAINT [FK_Battles_Characters] FOREIGN KEY([DefenderName])
REFERENCES [dbo].[Characters] ([CharacterName])
GO
ALTER TABLE [dbo].[Battles] CHECK CONSTRAINT [FK_Battles_Characters]
GO
ALTER TABLE [dbo].[Battles]  WITH CHECK ADD  CONSTRAINT [FK_Battles_Characters1] FOREIGN KEY([ChallengerName])
REFERENCES [dbo].[Characters] ([CharacterName])
GO
ALTER TABLE [dbo].[Battles] CHECK CONSTRAINT [FK_Battles_Characters1]
GO
ALTER TABLE [dbo].[Battles]  WITH CHECK ADD  CONSTRAINT [FK_Battles_Characters2] FOREIGN KEY([DefenderName])
REFERENCES [dbo].[Characters] ([CharacterName])
GO
ALTER TABLE [dbo].[Battles] CHECK CONSTRAINT [FK_Battles_Characters2]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Elements] FOREIGN KEY([ElementalId])
REFERENCES [dbo].[Elements] ([ElementId])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Elements]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Users]
GO
ALTER TABLE [dbo].[ExerciseLogs]  WITH CHECK ADD  CONSTRAINT [FK_ExerciseLogs_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[ExerciseLogs] CHECK CONSTRAINT [FK_ExerciseLogs_Users]
GO
ALTER TABLE [dbo].[HallOfFame]  WITH CHECK ADD  CONSTRAINT [FK_HallOfFame_Characters] FOREIGN KEY([CharacterName])
REFERENCES [dbo].[Characters] ([CharacterName])
GO
ALTER TABLE [dbo].[HallOfFame] CHECK CONSTRAINT [FK_HallOfFame_Characters]
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
