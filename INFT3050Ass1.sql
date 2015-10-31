USE [master]
GO
/****** Object:  Database [INFT3050Ass1]    Script Date: 21/08/2015 1:51:29 PM ******/
CREATE DATABASE [INFT3050Ass1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'INFT3050Ass1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DCIT_VDI_SQL\MSSQL\DATA\INFT3050Ass1.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'INFT3050Ass1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DCIT_VDI_SQL\MSSQL\DATA\INFT3050Ass1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [INFT3050Ass1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'INFT3050Ass1', N'ON'
GO
USE [INFT3050Ass1]
GO
/****** Object:  Table [dbo].[tbl_battle]    Script Date: 21/08/2015 1:51:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_battle](
	[Int_PK_battleID] [int] IDENTITY(1,1) NOT NULL,
	[Str_FK_defenderCharName] [nvarchar](50) NOT NULL,
	[Str_FK_challengerCharName] [nvarchar](50) NOT NULL,
	[Str_FK_Winner] [nvarchar](50) NOT NULL,
	[Int_xpPoints] [int] NOT NULL,
	[Dtm_dateTime] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tbl_battle] PRIMARY KEY CLUSTERED 
(
	[Int_PK_battleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 21/08/2015 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[Str_PK_characterName] [nvarchar](50) NOT NULL,
	[Str_FK_username] [nvarchar](50) NOT NULL,
	[Int_FK_elementalID] [int] NOT NULL,
	[Int_FK_experienceID] [int] NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[Str_PK_characterName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_elementalClass]    Script Date: 21/08/2015 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_elementalClass](
	[Int_PK_elementalID] [int] IDENTITY(1,1) NOT NULL,
	[Str_elementType] [nchar](15) NOT NULL,
 CONSTRAINT [PK_tbl_elementalClass] PRIMARY KEY CLUSTERED 
(
	[Int_PK_elementalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_exerciseLog]    Script Date: 21/08/2015 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_exerciseLog](
	[Int_PK_exerciseID] [int] IDENTITY(1,1) NOT NULL,
	[Str_FK_username] [nvarchar](50) NOT NULL,
	[Str_exerciseType] [nvarchar](20) NOT NULL,
	[Int_exerciseDuration] [int] NOT NULL,
	[Dtm_dateTimeStarted] [smalldatetime] NOT NULL,
	[Int_caloriesBurnt] [int] NOT NULL,
 CONSTRAINT [PK_tbl_exerciseLog] PRIMARY KEY CLUSTERED 
(
	[Int_PK_exerciseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_experienceSteps]    Script Date: 21/08/2015 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_experienceSteps](
	[Int_PK_experienceID] [int] IDENTITY(1,1) NOT NULL,
	[Int_level] [int] NOT NULL,
	[Int_step] [int] NOT NULL,
	[Int_experience] [int] NOT NULL,
 CONSTRAINT [PK_tbl_experienceSteps] PRIMARY KEY CLUSTERED 
(
	[Int_PK_experienceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_hallOfFame]    Script Date: 21/08/2015 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_hallOfFame](
	[Int_PK_hofID] [int] IDENTITY(1,1) NOT NULL,
	[Str_FK_characterName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_hallOfFame_1] PRIMARY KEY CLUSTERED 
(
	[Int_PK_hofID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 21/08/2015 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[Str_PK_username] [nvarchar](50) NOT NULL,
	[Str_password] [nvarchar](50) NOT NULL,
	[Str_email] [nvarchar](50) NOT NULL,
	[Bool_anonymous] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_users] PRIMARY KEY CLUSTERED 
(
	[Str_PK_username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Denormalized Data]    Script Date: 21/08/2015 1:51:33 PM ******/
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
SET IDENTITY_INSERT [dbo].[tbl_battle] ON 

INSERT [dbo].[tbl_battle] ([Int_PK_battleID], [Str_FK_defenderCharName], [Str_FK_challengerCharName], [Str_FK_Winner], [Int_xpPoints], [Dtm_dateTime]) VALUES (1, N'CaptainCrunchJnr', N'Jupiter', N'CaptainCrunchJnr', 20, CAST(N'2015-08-18 00:00:00' AS SmallDateTime))
INSERT [dbo].[tbl_battle] ([Int_PK_battleID], [Str_FK_defenderCharName], [Str_FK_challengerCharName], [Str_FK_Winner], [Int_xpPoints], [Dtm_dateTime]) VALUES (2, N'Jupiter', N'Rocky', N'Jupiter', 20, CAST(N'2015-07-16 12:51:00' AS SmallDateTime))
INSERT [dbo].[tbl_battle] ([Int_PK_battleID], [Str_FK_defenderCharName], [Str_FK_challengerCharName], [Str_FK_Winner], [Int_xpPoints], [Dtm_dateTime]) VALUES (3, N'CaptainCrunchJnr', N'TheTerminator', N'CaptainCrunchJnr', 10, CAST(N'2015-08-20 00:05:00' AS SmallDateTime))
INSERT [dbo].[tbl_battle] ([Int_PK_battleID], [Str_FK_defenderCharName], [Str_FK_challengerCharName], [Str_FK_Winner], [Int_xpPoints], [Dtm_dateTime]) VALUES (4, N'Jupiter', N'Rocky', N'Rocky', 0, CAST(N'2014-09-20 15:13:00' AS SmallDateTime))
INSERT [dbo].[tbl_battle] ([Int_PK_battleID], [Str_FK_defenderCharName], [Str_FK_challengerCharName], [Str_FK_Winner], [Int_xpPoints], [Dtm_dateTime]) VALUES (6, N'TheDuke', N'TheTerminator', N'TheDuke', 10, CAST(N'2014-12-25 00:00:00' AS SmallDateTime))
INSERT [dbo].[tbl_battle] ([Int_PK_battleID], [Str_FK_defenderCharName], [Str_FK_challengerCharName], [Str_FK_Winner], [Int_xpPoints], [Dtm_dateTime]) VALUES (7, N'TheTerminator', N'Rocky', N'TheTerminator', 20, CAST(N'2015-01-25 12:15:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tbl_battle] OFF
INSERT [dbo].[tbl_character] ([Str_PK_characterName], [Str_FK_username], [Int_FK_elementalID], [Int_FK_experienceID]) VALUES (N'CaptainCrunchJnr', N'CaptainCrunch', 3, 1)
INSERT [dbo].[tbl_character] ([Str_PK_characterName], [Str_FK_username], [Int_FK_elementalID], [Int_FK_experienceID]) VALUES (N'Jupiter', N'MegaMan', 2, 4)
INSERT [dbo].[tbl_character] ([Str_PK_characterName], [Str_FK_username], [Int_FK_elementalID], [Int_FK_experienceID]) VALUES (N'Rocky', N'George', 1, 3)
INSERT [dbo].[tbl_character] ([Str_PK_characterName], [Str_FK_username], [Int_FK_elementalID], [Int_FK_experienceID]) VALUES (N'TheDuke', N'DonkeyKong', 2, 2)
INSERT [dbo].[tbl_character] ([Str_PK_characterName], [Str_FK_username], [Int_FK_elementalID], [Int_FK_experienceID]) VALUES (N'TheTerminator', N'PrincessPeach', 3, 5)
SET IDENTITY_INSERT [dbo].[tbl_elementalClass] ON 

INSERT [dbo].[tbl_elementalClass] ([Int_PK_elementalID], [Str_elementType]) VALUES (1, N'Air            ')
INSERT [dbo].[tbl_elementalClass] ([Int_PK_elementalID], [Str_elementType]) VALUES (2, N'Earth          ')
INSERT [dbo].[tbl_elementalClass] ([Int_PK_elementalID], [Str_elementType]) VALUES (3, N'Fire           ')
INSERT [dbo].[tbl_elementalClass] ([Int_PK_elementalID], [Str_elementType]) VALUES (4, N'Water          ')
SET IDENTITY_INSERT [dbo].[tbl_elementalClass] OFF
SET IDENTITY_INSERT [dbo].[tbl_exerciseLog] ON 

INSERT [dbo].[tbl_exerciseLog] ([Int_PK_exerciseID], [Str_FK_username], [Str_exerciseType], [Int_exerciseDuration], [Dtm_dateTimeStarted], [Int_caloriesBurnt]) VALUES (2, N'CaptainCrunch', N'Running', 20, CAST(N'2015-08-12 09:34:00' AS SmallDateTime), 50)
INSERT [dbo].[tbl_exerciseLog] ([Int_PK_exerciseID], [Str_FK_username], [Str_exerciseType], [Int_exerciseDuration], [Dtm_dateTimeStarted], [Int_caloriesBurnt]) VALUES (3, N'CaptainCrunch', N'Swimming', 40, CAST(N'2015-08-12 10:30:00' AS SmallDateTime), 100)
INSERT [dbo].[tbl_exerciseLog] ([Int_PK_exerciseID], [Str_FK_username], [Str_exerciseType], [Int_exerciseDuration], [Dtm_dateTimeStarted], [Int_caloriesBurnt]) VALUES (4, N'DonkeyKong', N'MarioKart', 120, CAST(N'2015-08-10 10:00:00' AS SmallDateTime), 800)
INSERT [dbo].[tbl_exerciseLog] ([Int_PK_exerciseID], [Str_FK_username], [Str_exerciseType], [Int_exerciseDuration], [Dtm_dateTimeStarted], [Int_caloriesBurnt]) VALUES (5, N'DonkeyKong', N'Walking', 240, CAST(N'2015-07-24 00:00:00' AS SmallDateTime), 500)
INSERT [dbo].[tbl_exerciseLog] ([Int_PK_exerciseID], [Str_FK_username], [Str_exerciseType], [Int_exerciseDuration], [Dtm_dateTimeStarted], [Int_caloriesBurnt]) VALUES (6, N'George', N'Running', 480, CAST(N'2015-07-24 00:00:00' AS SmallDateTime), 200)
INSERT [dbo].[tbl_exerciseLog] ([Int_PK_exerciseID], [Str_FK_username], [Str_exerciseType], [Int_exerciseDuration], [Dtm_dateTimeStarted], [Int_caloriesBurnt]) VALUES (7, N'MegaMan', N'Swimming', 540, CAST(N'2015-08-20 00:00:00' AS SmallDateTime), 150)
INSERT [dbo].[tbl_exerciseLog] ([Int_PK_exerciseID], [Str_FK_username], [Str_exerciseType], [Int_exerciseDuration], [Dtm_dateTimeStarted], [Int_caloriesBurnt]) VALUES (9, N'PrincessPeach', N'Surfing', 200, CAST(N'2015-07-18 12:15:00' AS SmallDateTime), 300)
SET IDENTITY_INSERT [dbo].[tbl_exerciseLog] OFF
SET IDENTITY_INSERT [dbo].[tbl_experienceSteps] ON 

INSERT [dbo].[tbl_experienceSteps] ([Int_PK_experienceID], [Int_level], [Int_step], [Int_experience]) VALUES (1, 4, 2, 200)
INSERT [dbo].[tbl_experienceSteps] ([Int_PK_experienceID], [Int_level], [Int_step], [Int_experience]) VALUES (2, 3, 1, 100)
INSERT [dbo].[tbl_experienceSteps] ([Int_PK_experienceID], [Int_level], [Int_step], [Int_experience]) VALUES (3, 1, 0, 0)
INSERT [dbo].[tbl_experienceSteps] ([Int_PK_experienceID], [Int_level], [Int_step], [Int_experience]) VALUES (4, 2, 2, 400)
INSERT [dbo].[tbl_experienceSteps] ([Int_PK_experienceID], [Int_level], [Int_step], [Int_experience]) VALUES (5, 4, 4, 200)
SET IDENTITY_INSERT [dbo].[tbl_experienceSteps] OFF
SET IDENTITY_INSERT [dbo].[tbl_hallOfFame] ON 

INSERT [dbo].[tbl_hallOfFame] ([Int_PK_hofID], [Str_FK_characterName]) VALUES (1, N'Jupiter')
INSERT [dbo].[tbl_hallOfFame] ([Int_PK_hofID], [Str_FK_characterName]) VALUES (2, N'Rocky')
INSERT [dbo].[tbl_hallOfFame] ([Int_PK_hofID], [Str_FK_characterName]) VALUES (3, N'TheDuke')
INSERT [dbo].[tbl_hallOfFame] ([Int_PK_hofID], [Str_FK_characterName]) VALUES (4, N'CaptainCrunchJnr')
SET IDENTITY_INSERT [dbo].[tbl_hallOfFame] OFF
INSERT [dbo].[tbl_user] ([Str_PK_username], [Str_password], [Str_email], [Bool_anonymous]) VALUES (N'CaptainCrunch', N'password123', N'thecaptain@hotmail.com', 0)
INSERT [dbo].[tbl_user] ([Str_PK_username], [Str_password], [Str_email], [Bool_anonymous]) VALUES (N'DonkeyKong', N'bananas', N'donkey.kong@live.com', 0)
INSERT [dbo].[tbl_user] ([Str_PK_username], [Str_password], [Str_email], [Bool_anonymous]) VALUES (N'George', N'iamcuriousgeorge', N'therealcuriousgeorge@hotmail.com', 0)
INSERT [dbo].[tbl_user] ([Str_PK_username], [Str_password], [Str_email], [Bool_anonymous]) VALUES (N'MegaMan', N'powerpuff42', N'megaman@megaman.com', 0)
INSERT [dbo].[tbl_user] ([Str_PK_username], [Str_password], [Str_email], [Bool_anonymous]) VALUES (N'PrincessPeach', N'peaches42', N'pinkglitter@gmail.com', 1)
ALTER TABLE [dbo].[tbl_battle]  WITH CHECK ADD  CONSTRAINT [FK_tbl_battle_tbl_character] FOREIGN KEY([Str_FK_defenderCharName])
REFERENCES [dbo].[tbl_character] ([Str_PK_characterName])
GO
ALTER TABLE [dbo].[tbl_battle] CHECK CONSTRAINT [FK_tbl_battle_tbl_character]
GO
ALTER TABLE [dbo].[tbl_character]  WITH CHECK ADD  CONSTRAINT [FK_tbl_character_tbl_elementalClass] FOREIGN KEY([Int_FK_elementalID])
REFERENCES [dbo].[tbl_elementalClass] ([Int_PK_elementalID])
GO
ALTER TABLE [dbo].[tbl_character] CHECK CONSTRAINT [FK_tbl_character_tbl_elementalClass]
GO
ALTER TABLE [dbo].[tbl_character]  WITH CHECK ADD  CONSTRAINT [FK_tbl_character_tbl_experienceSteps] FOREIGN KEY([Int_FK_experienceID])
REFERENCES [dbo].[tbl_experienceSteps] ([Int_PK_experienceID])
GO
ALTER TABLE [dbo].[tbl_character] CHECK CONSTRAINT [FK_tbl_character_tbl_experienceSteps]
GO
ALTER TABLE [dbo].[tbl_character]  WITH CHECK ADD  CONSTRAINT [FK_tbl_character_tbl_users] FOREIGN KEY([Str_FK_username])
REFERENCES [dbo].[tbl_user] ([Str_PK_username])
GO
ALTER TABLE [dbo].[tbl_character] CHECK CONSTRAINT [FK_tbl_character_tbl_users]
GO
ALTER TABLE [dbo].[tbl_exerciseLog]  WITH CHECK ADD  CONSTRAINT [FK_tbl_exerciseLog_tbl_users] FOREIGN KEY([Str_FK_username])
REFERENCES [dbo].[tbl_user] ([Str_PK_username])
GO
ALTER TABLE [dbo].[tbl_exerciseLog] CHECK CONSTRAINT [FK_tbl_exerciseLog_tbl_users]
GO
ALTER TABLE [dbo].[tbl_hallOfFame]  WITH CHECK ADD  CONSTRAINT [FK_tbl_hallOfFame_tbl_character] FOREIGN KEY([Str_FK_characterName])
REFERENCES [dbo].[tbl_character] ([Str_PK_characterName])
GO
ALTER TABLE [dbo].[tbl_hallOfFame] CHECK CONSTRAINT [FK_tbl_hallOfFame_tbl_character]
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
