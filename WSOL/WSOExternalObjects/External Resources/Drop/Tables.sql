﻿-----------------------------------------------------------------------------------------------------------------
--DROP THE EXTERNAL TABLES
--these have to be done first
-----------------------------------------------------------------------------------------------------------------
/****** Object:  Table [dbo].[YZ_TB_IMPORTS_STUBHUB_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='YZ_TB_IMPORTS_STUBHUB_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[YZ_TB_IMPORTS_STUBHUB_INVOICING]
END
GO

/****** Object:  Table [dbo].[YZ_TB_IMPORTS_DATALOT_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='YZ_TB_IMPORTS_DATALOT_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[YZ_TB_IMPORTS_DATALOT_INVOICING]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_WV_INCONTACT_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_WV_INCONTACT_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_WV_INCONTACT_INVOICING]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_SABRE_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_SABRE_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_SABRE_INVOICING]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING_NEW]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_MONAT_INVOICING_NEW')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING_NEW]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_MONAT_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_MONAT_IC_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_MONAT_IC_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_IC_INVOICING]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_HUMACH_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_HUMACH_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_HUMACH_INVOICING]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_GAR_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_GAR_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_GAR_INVOICING]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_EGENCIA_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_EGENCIA_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_EGENCIA_INVOICING]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING]
END
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_APFM_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
IF EXISTS(SELECT top(1)* FROM sys.external_tables WHERE name='WSOL_TB_IMPORTS_APFM_INVOICING')
BEGIN
	DROP EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_APFM_INVOICING]
END
GO