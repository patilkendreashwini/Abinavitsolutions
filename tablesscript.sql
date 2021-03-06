USE [DB_A2A837_talentnewDB]
GO
/****** Object:  Table [dbo].[drdateavailable]    Script Date: 05-06-2022 16:35:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drdateavailable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[drdate] [varchar](50) NULL,
	[patientdate] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalForm]    Script Date: 05-06-2022 16:35:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalForm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MEMBERID] [varchar](50) NOT NULL,
	[NAME] [varchar](50) NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[MOBILENO] [varchar](50) NOT NULL,
	[AGE] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[BLOODGROUP] [varchar](50) NULL,
	[ADDRESS] [varchar](500) NULL,
	[DATEOFAPPOINTMENT] [datetime] NULL,
	[PATIENTDOC] [varchar](50) NULL
) ON [PRIMARY]
GO
