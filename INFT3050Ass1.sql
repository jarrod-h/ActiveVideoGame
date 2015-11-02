USE [master]
GO
/****** Object:  Database [INFT3050Ass1]    Script Date: 11/2/2015 2:37:11 PM ******/
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
/****** Object:  View [dbo].[Denormalized Data]    Script Date: 11/2/2015 2:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Denormalized Data]
AS
SELECT        dbo.tbl_user.Str_PK_username, dbo.tbl_user.Str_password, dbo.tbl_user.Str_email, dbo.tbl_user.Bool_anonymous, dbo.tbl_exerciseLog.Int_PK_exerciseID, dbo.tbl_exerciseLog.Str_exerciseType, 
                         dbo.tbl_exerciseLog.Int_exerciseDuration, dbo.tbl_exerciseLog.Dtm_dateTimeStarted, dbo.tbl_exerciseLog.Int_caloriesBurnt, dbo.tbl_character.Str_PK_characterName, dbo.tbl_elementalClass.Str_elementType, 
                         dbo.tbl_experienceSteps.Int_level, dbo.tbl_experienceSteps.Int_step, dbo.tbl_experienceSteps.Int_experience, dbo.tbl_hallOfFame.Int_PK_hofID, dbo.tbl_battle.Int_PK_battleID, 
                         dbo.tbl_battle.Str_FK_defenderCharName, dbo.tbl_battle.Str_FK_challengerCharName, dbo.tbl_battle.Str_FK_Winner, dbo.tbl_battle.Int_xpPoints, dbo.tbl_battle.Dtm_dateTime
FROM            dbo.tbl_user INNER JOIN
                         dbo.tbl_exerciseLog ON dbo.tbl_user.Str_PK_username = dbo.tbl_exerciseLog.Str_FK_username INNER JOIN
                         dbo.tbl_character ON dbo.tbl_user.Str_PK_username = dbo.tbl_character.Str_FK_username INNER JOIN
                         dbo.tbl_elementalClass ON dbo.tbl_character.Int_FK_elementalID = dbo.tbl_elementalClass.Int_PK_elementalID INNER JOIN
                         dbo.tbl_experienceSteps ON dbo.tbl_character.Int_FK_experienceID = dbo.tbl_experienceSteps.Int_PK_experienceID LEFT OUTER JOIN
                         dbo.tbl_battle ON dbo.tbl_character.Str_PK_characterName = dbo.tbl_battle.Str_FK_defenderCharName LEFT OUTER JOIN
                         dbo.tbl_hallOfFame ON dbo.tbl_character.Str_PK_characterName = dbo.tbl_hallOfFame.Str_FK_characterName



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
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[9] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_users"
            Begin Extent = 
               Top = 92
               Left = 32
               Bottom = 222
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_exerciseLog"
            Begin Extent = 
               Top = 0
               Left = 244
               Bottom = 191
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_character"
            Begin Extent = 
               Top = 74
               Left = 644
               Bottom = 232
               Right = 852
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_elementalClass"
            Begin Extent = 
               Top = 109
               Left = 1184
               Bottom = 205
               Right = 1374
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_hallOfFame"
            Begin Extent = 
               Top = 0
               Left = 1184
               Bottom = 96
               Right = 1391
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_battle"
            Begin Extent = 
               Top = 218
               Left = 377
               Bottom = 391
               Right = 615
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_experienceSteps"
            Begin Extent = 
               Top = 208
               Left = 1184
               Bottom = 338
               Right = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Denormalized Data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1965
         Width = 1500
         Width = 1500
         Width = 2715
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3060
         Alias = 900
         Table = 2805
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Denormalized Data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Denormalized Data'
GO
USE [master]
GO
ALTER DATABASE [INFT3050Ass1] SET  READ_WRITE 
GO
