-----------------------------------------------------------------------------------------------------------------
--
--DWL: 2-20-17
--this file contains the external Datasources used by the WSOL DB.

--the script first removes any tables 
--then it removes the external datasource and credentials and 
--then rebuilds it all

-----------------------------------------------------------------------------------------------------------------
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

-----------------------------------------------------------------------------------------------------------------
--DROP THE VIEWS
--these have to be done first
-----------------------------------------------------------------------------------------------------------------
/****** Object:  View [dbo].[WSOL_VW_SCHEDULE_DETAIL]    Script Date: 2/20/2018 10:53:17 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='WSOL_VW_SCHEDULE_DETAIL')
BEGIN
	DROP VIEW [dbo].[WSOL_VW_SCHEDULE_DETAIL]
END
GO

/****** Object:  View [dbo].[WSOL_VW_PBI_TEST_SCHEDULE_DETAIL]    Script Date: 2/20/2018 10:53:17 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='WSOL_VW_PBI_TEST_SCHEDULE_DETAIL')
BEGIN
	DROP VIEW [dbo].[WSOL_VW_PBI_TEST_SCHEDULE_DETAIL]
END
GO

/****** Object:  View [dbo].[WSOL_VW_PBI_EDUCATION_ROSTER_DETAIL]    Script Date: 2/20/2018 10:53:17 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='WSOL_VW_PBI_EDUCATION_ROSTER_DETAIL')
BEGIN
	DROP VIEW [dbo].[WSOL_VW_PBI_EDUCATION_ROSTER_DETAIL]
END
GO

/****** Object:  View [dbo].[WSOL_VW_PBI_ALL_CATS_STATUSES]    Script Date: 2/20/2018 10:53:17 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='WSOL_VW_PBI_ALL_CATS_STATUSES')
BEGIN
	DROP VIEW [dbo].[WSOL_VW_PBI_ALL_CATS_STATUSES]
END
GO

/****** Object:  View [dbo].[WSOL_VW_IMPORTS_VYNE_PATS_ACCESS_IMPIGER]    Script Date: 2/20/2018 10:53:17 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='WSOL_VW_IMPORTS_VYNE_PATS_ACCESS_IMPIGER')
BEGIN
	DROP VIEW [dbo].[WSOL_VW_IMPORTS_VYNE_PATS_ACCESS_IMPIGER]
END
GO

/****** Object:  View [dbo].[WSOL_VW_IMPORTS_VYNE_PATS_ACCESS]    Script Date: 2/20/2018 10:53:17 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='WSOL_VW_IMPORTS_VYNE_PATS_ACCESS')
BEGIN
	DROP VIEW [dbo].[WSOL_VW_IMPORTS_VYNE_PATS_ACCESS]
END
GO

/****** Object:  View [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM_IG]    Script Date: 2/20/2018 10:53:17 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM_IG')
BEGIN
	DROP VIEW [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM_IG]
END
GO

/****** Object:  View [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM]    Script Date: 2/20/2018 10:53:17 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM')
BEGIN
	DROP VIEW [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM]
END
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------------
--DROP FUNCTIONS
-----------------------------------------------------------------------------------------------------------------
/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_WORK_DATA_BY_INTERVALS]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_WORK_DATA_BY_INTERVALS')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_WORK_DATA_BY_INTERVALS]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_SCHEDULE_TYPE_DATA_BY_INTERVALS]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_SCHEDULE_TYPE_DATA_BY_INTERVALS')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_SCHEDULE_TYPE_DATA_BY_INTERVALS]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS_WITH_DATE_SCHEDULED]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS_WITH_DATE_SCHEDULED')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS_WITH_DATE_SCHEDULED]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_MANUAL_MAP_DATA]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_MANUAL_MAP_DATA')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_MANUAL_MAP_DATA]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_MANUAL_MAP_DATA]    Script Date: 2/20/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------------------------------------------------------------------
--DROP THE EXTERNAL DATA SOURCE
--DWL: 2-20-17
-----------------------------------------------------------------------------------------------------------------

--this has to be done after all the tables have been dropped because SQL will error if there are
--objects tied to the Datasource
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
IF EXISTS(select * from sys.external_data_sources where name='GEN_GIM_REMOTE_DATA')
BEGIN
	DROP EXTERNAL DATA SOURCE [GEN_GIM_REMOTE_DATA] 
END

IF EXISTS(select * from sys.database_scoped_credentials where name='GENGIM')
BEGIN
	DROP DATABASE SCOPED CREDENTIAL [GENGIM]
END

GO

-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_APFM_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_APFM_INVOICING]
(
	[FF_DATE] [varchar](50) NULL,
	[FF_HOUR] [varchar](50) NULL,
	[FF_SKILL_AVAILABILITY] [varchar](500) NOT NULL,
	[FF_AGENT_NAME] [varchar](100) NOT NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[EMPLOYEE_ID] [varchar](50) NULL,
	[STD_TENANT_START_TIME] [datetime] NULL,
	[BILLABLE_SKILL_Y_N] [char](1) NULL,
	[LOGGED_IN_DUR] [decimal](10, 2) NULL,
	[READY_DUR] [decimal](10, 2) NULL,
	[RING_DUR] [decimal](10, 2) NULL,
	[ON_CALL_DUR] [decimal](10, 2) NULL,
	[ON_CALL_SILENT_DUR] [decimal](10, 2) NULL,
	[ACW_DUR] [decimal](10, 2) NULL,
	[ON_PARK_DUR] [decimal](10, 2) NULL,
	[ON_VOICEMAIL_DUR] [decimal](10, 2) NULL,
	[ON_PREVIEW_DUR] [decimal](10, 2) NULL,
	[NRD_ACW_DUR] [decimal](10, 2) NULL,
	[NRD_TASK_COMP_DUR] [decimal](10, 2) NULL,
	[NRD_SYSTEM_OBC_DUR] [decimal](10, 2) NULL,
	[ON_HOLD_DUR] [decimal](10, 2) NULL,
	[NRD_TRAINING_DUR] [decimal](10, 2) NULL,
	[NRD_MEETING_DUR] [decimal](10, 2) NULL,
	[NRD_MANDATORY_REPORTING_DUR] [decimal](10, 2) NULL,
	[NRD_MANUAL_OBC_DUR] [decimal](10, 2) NULL,
	[NRD_ACW_AGENT_DUR] [decimal](10, 2) NULL,
	[NRD_OFFLINE_VENDOR_UNPAID_DUR] [decimal](10, 2) NULL,
	[NRD_REASON_4_DUR] [decimal](10, 2) NULL,
	[NOT_READY_BILLABLE] [decimal](10, 2) NULL,
	[NOT_READY_NON_BILLABLE] [decimal](10, 2) NULL,
	[NON_BILLABLE_SKILL_DUR] [decimal](10, 2) NULL,
	[NON_BILLABLE_STATE_REASON_DUR] [decimal](10, 2) NULL,
	[BILLABLE_CLIENT] [decimal](10, 2) NULL,
	[TOTAL_TALK] [decimal](10, 2) NULL,
	[TOTAL_ACW] [decimal](10, 2) NULL,
	[AUTHORIZED] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NOT NULL,
	[SCHEDULER_ACL_NAME] [varchar](100) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NOT NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_RATE] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](50) NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING]
(
	[FF_LOGIN_ID] [varchar](50) NULL,
	[FF_AGENT_FIRST_NAME] [varchar](50) NULL,
	[FF_AGENT_LAST_NAME] [varchar](50) NULL,
	[FF_TEAM] [varchar](50) NULL,
	[EVENT_DURATION_IN_INTERVAL_SECS] [float] NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[EMPLOYEE_ID] [varchar](50) NULL,
	[STD_TENANT_START_TIME] [datetime] NULL,
	[LOGGED_IN_TIME] [decimal](10, 2) NULL,
	[READY_TIME] [decimal](10, 2) NULL,
	[INBOUND_VOICE_TIME] [decimal](10, 2) NULL,
	[OUTBOUND_VOICE_TIME] [decimal](10, 2) NULL,
	[ACW_VOICE_TIME] [decimal](10, 2) NULL,
	[NOT_READY_TIME] [decimal](10, 2) NULL,
	[NOT_READY_BREAK_TIME] [decimal](10, 2) NULL,
	[NOT_READY_NO_ANSWER_TIME] [decimal](10, 2) NULL,
	[UNKNOWN_TIME] [decimal](10, 2) NULL,
	[TOTAL_TALK_TIME] [decimal](10, 2) NULL,
	[TOTAL_NOT_READY_TIME] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MINIMUM_GUARANTEE] [decimal](10, 2) NULL,
	[AUTHORIZED] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NULL,
	[SCHEDULER_ACL_NAME] [varchar](100) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_MINUTES] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](500) NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_EGENCIA_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_EGENCIA_INVOICING]
(
	[FF_LOGIN_ID] [varchar](200) NOT NULL,
	[FF_HOUR] [varchar](50) NULL,
	[FF_STAFFED_TIME] [varchar](50) NULL,
	[FF_AVAIL_TIME] [varchar](50) NULL,
	[FF_ACD_TIME] [varchar](50) NULL,
	[FF_OTHER_TIME] [varchar](50) NULL,
	[FF_ACW_TIME] [varchar](50) NULL,
	[FF_AGENT_RING_TIME] [varchar](50) NULL,
	[FF_AUX_TIME] [varchar](50) NULL,
	[FF_AUX_0_DEFAULT] [varchar](50) NULL,
	[FF_AUX_1_BREAK] [varchar](50) NULL,
	[FF_AUX_2_COACHING] [varchar](50) NULL,
	[FF_AUX_3_MEETING] [varchar](50) NULL,
	[FF_AUX_4_PROJECT] [varchar](50) NULL,
	[FF_AUX_5_EGE_TRAINING] [varchar](50) NULL,
	[FF_AUX_6_OUTBOUND] [varchar](50) NULL,
	[FF_AUX_7_EMAIL] [varchar](50) NULL,
	[FF_AUX_8_QUEUE_WORK] [varchar](50) NULL,
	[FF_AUX_9_SYSTEM_DOWN] [varchar](50) NULL,
	[FF_AUX_10_EXCHANGE] [varchar](50) NULL,
	[FF_AUX_11_PERSONAL] [varchar](50) NULL,
	[FF_TI_AUXTIME_12] [varchar](50) NULL,
	[FF_TI_AUXTIME_13] [varchar](50) NULL,
	[FF_TI_AUXTIME_14] [varchar](50) NULL,
	[FF_TI_AUXTIME_15] [varchar](50) NULL,
	[FF_TI_AUXTIME_16] [varchar](50) NULL,
	[FF_TI_AUXTIME_17] [varchar](50) NULL,
	[FF_TI_AUXTIME_18] [varchar](50) NULL,
	[FF_TI_AUXTIME_19] [varchar](50) NULL,
	[FF_TI_AUXTIME_20] [varchar](50) NULL,
	[FF_TI_AUXTIME_21] [varchar](50) NULL,
	[FF_TI_AUXTIME_22] [varchar](50) NULL,
	[FF_TI_AUXTIME_23] [varchar](50) NULL,
	[FF_TI_AUXTIME_24] [varchar](50) NULL,
	[FF_TI_AUXTIME_25] [varchar](50) NULL,
	[FF_TI_AUXTIME_26] [varchar](50) NULL,
	[FF_TI_AUXTIME_27] [varchar](50) NULL,
	[FF_TI_AUXTIME_28] [varchar](50) NULL,
	[FF_TI_AUXTIME_29] [varchar](50) NULL,
	[FF_TI_AUXTIME_30] [varchar](50) NULL,
	[FF_TI_AUXTIME_31] [varchar](50) NULL,
	[FF_TI_AUXTIME_32] [varchar](50) NULL,
	[FF_TI_AUXTIME_33] [varchar](50) NULL,
	[FF_TI_AUXTIME_34] [varchar](50) NULL,
	[FF_TI_AUXTIME_35] [varchar](50) NULL,
	[FF_TI_AUXTIME_36] [varchar](50) NULL,
	[FF_TI_AUXTIME_37] [varchar](50) NULL,
	[FF_TI_AUXTIME_38] [varchar](50) NULL,
	[FF_TI_AUXTIME_39] [varchar](50) NULL,
	[FF_TI_AUXTIME_40] [varchar](50) NULL,
	[FF_TI_AUXTIME_41] [varchar](50) NULL,
	[FF_TI_AUXTIME_42] [varchar](50) NULL,
	[FF_TI_AUXTIME_43] [varchar](50) NULL,
	[FF_TI_AUXTIME_44] [varchar](50) NULL,
	[FF_TI_AUXTIME_45] [varchar](50) NULL,
	[FF_TI_AUXTIME_46] [varchar](50) NULL,
	[FF_TI_AUXTIME_47] [varchar](50) NULL,
	[FF_TI_AUXTIME_48] [varchar](50) NULL,
	[FF_TI_AUXTIME_49] [varchar](50) NULL,
	[FF_TI_AUXTIME_50] [varchar](50) NULL,
	[FF_TI_AUXTIME_51] [varchar](50) NULL,
	[FF_TI_AUXTIME_52] [varchar](50) NULL,
	[FF_TI_AUXTIME_53] [varchar](50) NULL,
	[FF_TI_AUXTIME_54] [varchar](50) NULL,
	[FF_TI_AUXTIME_55] [varchar](50) NULL,
	[FF_TI_AUXTIME_56] [varchar](50) NULL,
	[FF_TI_AUXTIME_57] [varchar](50) NULL,
	[FF_TI_AUXTIME_58] [varchar](50) NULL,
	[FF_TI_AUXTIME_59] [varchar](50) NULL,
	[FF_TI_AUXTIME_60] [varchar](50) NULL,
	[FF_TI_AUXTIME_61] [varchar](50) NULL,
	[FF_TI_AUXTIME_62] [varchar](50) NULL,
	[FF_TI_AUXTIME_63] [varchar](50) NULL,
	[FF_TI_AUXTIME_64] [varchar](50) NULL,
	[FF_TI_AUXTIME_65] [varchar](50) NULL,
	[FF_TI_AUXTIME_66] [varchar](50) NULL,
	[FF_TI_AUXTIME_67] [varchar](50) NULL,
	[FF_TI_AUXTIME_68] [varchar](50) NULL,
	[FF_TI_AUXTIME_69] [varchar](50) NULL,
	[FF_TI_AUXTIME_70] [varchar](50) NULL,
	[FF_TI_AUXTIME_71] [varchar](50) NULL,
	[FF_TI_AUXTIME_72] [varchar](50) NULL,
	[FF_TI_AUXTIME_73] [varchar](50) NULL,
	[FF_TI_AUXTIME_74] [varchar](50) NULL,
	[FF_TI_AUXTIME_75] [varchar](50) NULL,
	[FF_TI_AUXTIME_76] [varchar](50) NULL,
	[FF_TI_AUXTIME_77] [varchar](50) NULL,
	[FF_TI_AUXTIME_78] [varchar](50) NULL,
	[FF_TI_AUXTIME_79] [varchar](50) NULL,
	[FF_TI_AUXTIME_80] [varchar](50) NULL,
	[FF_TI_AUXTIME_81] [varchar](50) NULL,
	[FF_TI_AUXTIME_82] [varchar](50) NULL,
	[FF_TI_AUXTIME_83] [varchar](50) NULL,
	[FF_TI_AUXTIME_84] [varchar](50) NULL,
	[FF_TI_AUXTIME_85] [varchar](50) NULL,
	[FF_TI_AUXTIME_86] [varchar](50) NULL,
	[FF_TI_AUXTIME_87] [varchar](50) NULL,
	[FF_TI_AUXTIME_88] [varchar](50) NULL,
	[FF_TI_AUXTIME_89] [varchar](50) NULL,
	[FF_TI_AUXTIME_90] [varchar](50) NULL,
	[FF_TI_AUXTIME_91] [varchar](50) NULL,
	[FF_TI_AUXTIME_92] [varchar](50) NULL,
	[FF_TI_AUXTIME_93] [varchar](50) NULL,
	[FF_TI_AUXTIME_94] [varchar](50) NULL,
	[FF_TI_AUXTIME_95] [varchar](50) NULL,
	[FF_TI_AUXTIME_96] [varchar](50) NULL,
	[FF_TI_AUXTIME_97] [varchar](50) NULL,
	[FF_TI_AUXTIME_98] [varchar](50) NULL,
	[FF_TI_AUXTIME_99] [varchar](50) NULL,
	[CMS_GROUP] [varchar](100) NULL,
	[DATA_DATE] [varchar](50) NULL,
	[DATETIME_CT] [datetime] NULL,
	[DATETIME_PT] [datetime] NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[STAFFED_SECS] [decimal](10, 2) NULL,
	[AVAILABLE_SECS] [decimal](10, 2) NULL,
	[ACD_SECS] [decimal](10, 2) NULL,
	[OTHER_SECS] [decimal](10, 2) NULL,
	[ACW_SECS] [decimal](10, 2) NULL,
	[RING_SECS] [decimal](10, 2) NULL,
	[AUX_0_DEFAULT_SECS] [decimal](10, 2) NULL,
	[AUX_1_BREAK_SECS] [decimal](10, 2) NULL,
	[AUX_2_COACHING_SECS] [decimal](10, 2) NULL,
	[AUX_3_MEETING_SECS] [decimal](10, 2) NULL,
	[AUX_4_PROJECT_SECS] [decimal](10, 2) NULL,
	[AUX_5_EGE_TRAINING_SECS] [decimal](10, 2) NULL,
	[AUX_6_OUTBOUND_SECS] [decimal](10, 2) NULL,
	[AUX_7_EMAIL_SECS] [decimal](10, 2) NULL,
	[AUX_8_QUEUE_WORK_SECS] [decimal](10, 2) NULL,
	[AUX_9_SYSTEM_DOWN_SECS] [decimal](10, 2) NULL,
	[AUX_10_EXCHANGE_SECS] [decimal](10, 2) NULL,
	[AUX_11_PERSONAL_SECS] [decimal](10, 2) NULL,
	[AUX_34_SECS] [decimal](10, 2) NULL,
	[AUX_35_SECS] [decimal](10, 2) NULL,
	[AUX_37_SECS] [decimal](10, 2) NULL,
	[AUX_40_SECS] [decimal](10, 2) NULL,
	[OUTBOUND_SECS] [decimal](10, 2) NULL,
	[EMAIL_SECS] [decimal](10, 2) NULL,
	[PROJECT_SECS] [decimal](10, 2) NULL,
	[MEETING_SECS] [decimal](10, 2) NULL,
	[TOTAL_AUX_SECS] [decimal](10, 2) NULL,
	[PROD_BILLING_SECS] [decimal](10, 2) NULL,
	[AUTHORIZED_CSAT_SAT_KEY_SECS] [decimal](10, 2) NULL,
	[AUTHORIZED_RESOURCE_SECS] [decimal](10, 2) NULL,
	[LINE_OF_BUSINESS] [varchar](100) NULL,
	[WEEKEND] [char](1) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MINIMUM_GUARANTEE] [decimal](10, 2) NULL,
	[AUTHORIZED_MINUTES] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NOT NULL,
	[SCHEDULER_ACL_NAME] [varchar](50) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NOT NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_MINUTES] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](50) NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NOT NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_GAR_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_GAR_INVOICING]
(
	[FF_DATE] [varchar](50) NULL,
	[FF_INTERVAL_30_MINUTES] [varchar](50) NULL,
	[FF_AGENT_NAME] [varchar](100) NOT NULL,
	[FF_SKILL_NAME] [varchar](50) NULL,
	[FF_TEAM_NAME] [varchar](50) NOT NULL,
	[FF_LOGIN_TIME] [varchar](50) NULL,
	[FF_AVAILABLE_TIME] [varchar](50) NULL,
	[FF_UNAVAILABLE_TIME_MINUS_ACW] [varchar](50) NULL,
	[FF_TALK_TIME] [varchar](50) NULL,
	[FF_HOLD_TIME] [varchar](50) NULL,
	[FF_ACW_TIME] [varchar](50) NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NOT NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[AGENT_NAME] [varchar](50) NULL,
	[SKILL_NAME] [varchar](50) NULL,
	[TEAM_NAME] [varchar](50) NULL,
	[LOGIN_TIME] [decimal](10, 2) NULL,
	[AVAILABLE_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_TIME_MINUS_ACW] [decimal](10, 2) NULL,
	[TALK_TIME] [decimal](10, 2) NULL,
	[HOLD_TIME] [decimal](10, 2) NULL,
	[ACW_TIME] [decimal](10, 2) NULL,
	[TRUE_OUTBOUND_TALK_TIME] [decimal](10, 2) NULL,
	[TOTAL_TALK] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MING] [decimal](10, 2) NULL,
	[AUT2] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NOT NULL,
	[SCHEDULER_ACL_NAME] [varchar](50) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NOT NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_RATE] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](50) NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[AIRITKDUR] [int] NULL,
	[AIRIACDUR] [int] NULL,
	[PAY_GROUP] [int] NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_HUMACH_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_HUMACH_INVOICING]
(
	[FF_AGENT_FIRST_NAME] [varchar](100) NULL,
	[FF_AGENT_LAST_NAME] [varchar](100) NULL,
	[FF_AGENT_ID] [varchar](50) NOT NULL,
	[FF_CUSTOMER_NAME] [varchar](100) NULL,
	[FF_CUSTOMER_ID] [varchar](50) NOT NULL,
	[FF_INTERVAL] [varchar](50) NULL,
	[FF_AGENT_PERFORMANCE_INTERVAL_ID] [varchar](50) NULL,
	[FF_INTERVAL_START_TS] [datetime] NULL,
	[FF_AGENT_LOGIN_START_TS] [datetime] NULL,
	[FF_STATE_LOGGED_IN_SECS] [decimal](10, 2) NULL,
	[FF_STATE_READY_SECS] [decimal](10, 2) NULL,
	[FF_STATE_ASSIGNED_SECS] [decimal](10, 2) NULL,
	[FF_STATE_BUSY_SECS] [decimal](10, 2) NULL,
	[FF_STATE_NR_SECS] [decimal](10, 2) NULL,
	[FF_STATE_NR_01_SECS] [decimal](10, 2) NULL,
	[FF_STATE_NR_02_SECS] [decimal](10, 2) NULL,
	[FF_STATE_NR_03_SECS] [decimal](10, 2) NULL,
	[FF_STATE_NR_04_SECS] [decimal](10, 2) NULL,
	[FF_STATE_NR_05_SECS] [decimal](10, 2) NULL,
	[FF_STATE_NR_06_SECS] [decimal](10, 2) NULL,
	[FF_STATE_NR_07_SECS] [decimal](10, 2) NULL,
	[FF_STATE_DIAL_PENDING_SECS] [decimal](10, 2) NULL,
	[FF_STATE_UNKNOWN_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_IN_AGT_ASSIGNED_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_IN_AGT_ASSIGNED_FAILED_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_IN_AGT_ANS_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_AGT_CALLS_TRANS_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_IN_AGT_COMPLETED_CALL_TALK_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_IN_AGT_COMPLETED_CALL_TIME_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_AGT_CALLS_HOLD_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_IN_AGT_COMPLETED_CALL_CONNECTED_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_IN_AGT_CALLS_HANDLE_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_TALK_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_TIME_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_CONNECTED_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_IN_AGT_ASSIGNED_CT] [int] NULL,
	[FF_Q_IN_CALLS_IN_AGT_ASSIGNED_FAILED_CT] [int] NULL,
	[FF_Q_IN_CALLS_IN_AGT_ANS_CT] [int] NULL,
	[FF_Q_IN_CALLS_AGT_CALLS_HOLD_CT] [int] NULL,
	[FF_Q_IN_CALLS_AGT_CALLS_ON_HOLD_CT] [int] NULL,
	[FF_Q_IN_CALLS_AGT_CALLS_TRANS_CT] [int] NULL,
	[FF_Q_IN_CALLS_IN_AGT_CALLS_HANDLE_CT] [int] NULL,
	[FF_Q_IN_CALLS_IN_AGT_COMPLETED_CT] [int] NULL,
	[FF_NON_Q_CALLS_OUT_AGT_CALL_ANS_CT] [int] NULL,
	[FF_NON_Q_CALLS_OUT_AGT_CALL_ATTEMPT_CT] [int] NULL,
	[FF_Q_IN_CALLS_OUT_AGT_CALL_OTHER_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_OUT_AGT_CALL_ANS_CALL_TALK_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_OUT_AGT_CALL_ANS_CALL_TIME_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_OUT_AGT_CALL_RNA_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_OUT_AGT_CALLS_HANDLE_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_OUT_AGT_CALL_BUSY_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_OUT_DIALED_DELAY_SECS] [decimal](10, 2) NULL,
	[FF_Q_IN_CALLS_OUT_AGT_CALL_ANS_CALL_CONNECTED_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_AGT_CALLS_HOLD_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_AGT_CALLS_TRANS_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_OUT_AGT_CALL_ANS_CALL_CONNECTED_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_OUT_AGT_CALL_BUSY_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_OUT_AGT_CALL_RNA_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_OUT_AGT_CALL_ANS_CALL_TALK_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_OUT_AGT_CALL_ANS_CALL_TIME_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_OUT_AGT_CALL_OTHER_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_OUT_AGT_CALLS_HANDLE_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_OUT_DIALED_DELAY_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_IN_AGT_COMPLETED_CALL_TIME_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_IN_AGT_COMPLETED_CALL_TALK_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_IN_AGT_ASSIGNED_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_IN_AGT_COMPLETED_CALL_CONNECTED_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_IN_AGT_CALLS_HANDLE_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_IN_AGT_ANS_SECS] [decimal](10, 2) NULL,
	[FF_Q_OUT_CALLS_IN_AGT_ASSIGNED_FAILED_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_AGT_CALLS_HOLD_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_AGT_CALLS_TRANS_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_OUT_AGT_CALL_BUSY_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_OUT_AGT_CALL_OTHER_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_OUT_AGT_CALL_RNA_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_IN_AGT_COMPLETED_CALL_TIME_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_IN_AGT_ANS_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_IN_AGT_ATTEMPT_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_IN_AGT_COMPLETED_CALL_TALK_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_IN_AGT_ATTEMPT_FAILED_SECS] [decimal](10, 2) NULL,
	[FF_NON_Q_CALLS_IN_AGT_COMPLETED_CALL_CONNECTED_SECS] [decimal](10, 2) NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NOT NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[LOGGED_IN_SECS] [decimal](10, 2) NULL,
	[READY_SECS] [decimal](10, 2) NULL,
	[ASSIGNED_SECS] [decimal](10, 2) NULL,
	[BUSY_SECS] [decimal](10, 2) NULL,
	[NOT_READY_SECS] [decimal](10, 2) NULL,
	[AGENT_UNRESPONSIVE_SECS] [decimal](10, 2) NULL,
	[POST_LOGIN_SECS] [decimal](10, 2) NULL,
	[BREAK_SECS] [decimal](10, 2) NULL,
	[WRAP_SECS] [decimal](10, 2) NULL,
	[NR_05_SECS] [decimal](10, 2) NULL,
	[NR_06_SECS] [decimal](10, 2) NULL,
	[NR_07_SECS] [decimal](10, 2) NULL,
	[DIAL_PENDING_SECS] [decimal](10, 2) NULL,
	[STATE_UNKNOWN_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_ASSIGNED_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_ASSIGNED_FAILED_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_ANS_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_AGT_CALLS_TRANS_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_COMPLETED_CALL_TALK_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_COMPLETED_CALL_TIME_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_AGT_CALLS_HOLD_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_COMPLETED_CALL_CONNECTED_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_CALLS_HANDLE_SECS] [decimal](10, 2) NULL,
	[NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_TALK_SECS] [decimal](10, 2) NULL,
	[NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_TIME_SECS] [decimal](10, 2) NULL,
	[NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_CONNECTED_SECS] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_ASSIGNED_CT] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_ASSIGNED_FAILED_CT] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_ANS_CT] [decimal](10, 2) NULL,
	[Q_IN_CALLS_AGT_CALLS_HOLD_CT] [decimal](10, 2) NULL,
	[Q_IN_CALLS_AGT_CALLS_ON_HOLD_CT] [decimal](10, 2) NULL,
	[Q_IN_CALLS_AGT_CALLS_TRANS_CT] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_CALLS_HANDLE_CT] [decimal](10, 2) NULL,
	[Q_IN_CALLS_IN_AGT_COMPLETED_CT] [decimal](10, 2) NULL,
	[NON_Q_CALLS_OUT_AGT_CALL_ANS_CT] [decimal](10, 2) NULL,
	[NON_Q_CALLS_OUT_AGT_CALL_ATTEMPT_CT] [decimal](10, 2) NULL,
	[TOTAL_CALLS] [decimal](10, 2) NULL,
	[AUTHORIZED_WRAP] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MINIMUM_GUARANTEE] [decimal](10, 2) NULL,
	[AUTHORIZED_MINUTES] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NOT NULL,
	[SCHEDULER_ACL_NAME] [varchar](50) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NOT NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_MINUTES] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](50) NOT NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_MONAT_IC_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_IC_INVOICING]
(
	[FF_DATE] [varchar](50) NULL,
	[FF_INTERVAL_30_MINUTES] [varchar](50) NULL,
	[FF_AGENT_NAME] [varchar](100) NULL,
	[FF_UNAVAILABLE_CODE] [varchar](100) NULL,
	[FF_SKILL_NAME] [varchar](50) NULL,
	[FF_TEAM_NAME] [varchar](50) NOT NULL,
	[FF_LOGIN_TIME] [decimal](10, 2) NULL,
	[FF_AVAILABLE_TIME] [decimal](10, 2) NULL,
	[FF_UNAVAILABLE_TIME_MINUS_ACW] [decimal](10, 2) NULL,
	[FF_TALK_TIME] [decimal](10, 2) NULL,
	[FF_HOLD_TIME] [decimal](10, 2) NULL,
	[FF_ACW_TIME] [decimal](10, 2) NULL,
	[FF_HELD_PARTY_ABANDONS] [decimal](10, 2) NULL,
	[FF_INBOUND_HANDLED] [decimal](10, 2) NULL,
	[FF_OUTBOUND_HANDLED] [decimal](10, 2) NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NOT NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[AGENT_NAME] [varchar](50) NULL,
	[UNAVAILABLE_CODE] [varchar](100) NULL,
	[SKILL_NAME] [varchar](50) NULL,
	[TEAM_NAME] [varchar](50) NULL,
	[INBOUND_HANDLED_COUNT] [decimal](10, 2) NULL,
	[OUTBOUND_HANDLED_COUNT] [decimal](10, 2) NULL,
	[HELD_PARTY_ABANDON_COUNT] [decimal](10, 2) NULL,
	[LOGIN_TIME] [decimal](10, 2) NULL,
	[AVAILABLE_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_EMAIL_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_FLOOR_SUPPORT_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_SPECIAL_PROJECT_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_HELD_PARTY_ABANDONED_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_IT_SYS_ISSUE_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_IDLE_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_REFUSED_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_SYSTEM_PENDING_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_OUTBOUND_CALL_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_TIME_MINUS_ACW] [decimal](10, 2) NULL,
	[TALK_TIME] [decimal](10, 2) NULL,
	[HOLD_TIME] [decimal](10, 2) NULL,
	[ACW_TIME] [decimal](10, 2) NULL,
	[TRUE_OUTBOUND_TALK_TIME] [decimal](10, 2) NULL,
	[TOTAL_TALK] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MINIMUM_GUARANTEE] [decimal](10, 2) NULL,
	[AUTHORIZED_TO_INVOICE] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NULL,
	[SCHEDULER_ACL_NAME] [varchar](100) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_MINUTES] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](100) NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[AIRITKDUR] [int] NULL,
	[AIRIACDUR] [int] NULL,
	[PAY_GROUP] [int] NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING]
(
	[FF_AGENT_NAME] [varchar](200) NULL,
	[FF_DATE] [varchar](50) NULL,
	[FF_TIME] [varchar](50) NULL,
	[FF_BUSINESS_UNIT] [varchar](100) NULL,
	[FF_TEAM] [varchar](100) NULL,
	[FF_GROUPS] [varchar](50) NULL,
	[FF_ANSWERED_SESSIONS] [varchar](50) NULL,
	[FF_RONAS] [varchar](50) NULL,
	[FF_DIDS] [varchar](50) NULL,
	[FF_DODS] [varchar](50) NULL,
	[FF_STARTED_IMS] [varchar](50) NULL,
	[FF_STARTED_CALLS] [varchar](50) NULL,
	[FF_ESCALATIONS] [varchar](50) NULL,
	[FF_CONSULTS] [varchar](50) NULL,
	[FF_TRANSFERS] [varchar](50) NULL,
	[FF_SUPERVISOR_JOINS] [varchar](50) NULL,
	[FF_AVAILABLE_TIME] [varchar](50) NULL,
	[FF_RINGING_TIME1] [varchar](50) NULL,
	[FF_CONNECT_IM_SESSION_TIME] [varchar](50) NULL,
	[FF_CONNECT_PHONE_CALL_TIME] [varchar](50) NULL,
	[FF_CONNECT_DID_CALL_TIME] [varchar](50) NULL,
	[FF_CONNECT_DOD_CALL_TIME] [varchar](50) NULL,
	[FF_NON_CONNECT_CALL_TIME] [varchar](50) NULL,
	[FF_AFTERCALL_TIME] [varchar](50) NULL,
	[FF_RONA_TIME] [varchar](50) NULL,
	[FF_UNAVAILABLE_TIME] [varchar](50) NULL,
	[FF_OFF_WORK_TIME] [varchar](50) NULL,
	[FF_LOGGED_OUT_TIME] [varchar](50) NULL,
	[FF_ON_PHONE_TIME] [varchar](50) NULL,
	[FF_Q_ON_PHONE_TIME] [varchar](50) NULL,
	[FF_TALK_TIME] [varchar](50) NULL,
	[FF_Q_TALK_TIME] [varchar](50) NULL,
	[FF_HANDLE_TIME] [varchar](50) NULL,
	[FF_Q_HANDLE_TIME] [varchar](50) NULL,
	[FF_OCC_PERCENT] [varchar](50) NULL,
	[FF_Q_OCC_PERCENT] [varchar](50) NULL,
	[FF_TALK_PERCENT] [varchar](50) NULL,
	[FF_Q_TALK_PERCENT] [varchar](50) NULL,
	[FF_ACW_PERCENT] [varchar](50) NULL,
	[FF_IDLE_PERCENT] [varchar](50) NULL,
	[FF_AVG_TALK_TIME_PERCENT] [varchar](50) NULL,
	[FF_AVG_Q_TALK_TIME_PERCENT] [varchar](50) NULL,
	[FF_AVG_ACW_TIME_PERCENT] [varchar](50) NULL,
	[FF_AVG_Q_ACW_TIME_PERCENT] [varchar](50) NULL,
	[FF_AVG_HANDLE_TIME_PERCENT] [varchar](50) NULL,
	[FF_AVG_Q_HANDLE_TIME_PERCENT] [varchar](50) NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NOT NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[AGENT_NAME] [varchar](200) NULL,
	[ANSWERED_SESSIONS] [int] NULL,
	[RONA_CNT] [int] NULL,
	[DID_CNT] [int] NULL,
	[DOD_CNT] [int] NULL,
	[STARTED_IMS] [int] NULL,
	[STARTED_CALLS] [int] NULL,
	[ESCALATIONS] [int] NULL,
	[CONSULTS] [int] NULL,
	[TRANSFERS] [int] NULL,
	[SUPERVISOR_JOINS] [int] NULL,
	[AVAILABLE_TIME] [decimal](10, 2) NULL,
	[RING_TIME] [decimal](10, 2) NULL,
	[CONNECT_IM_SESSION_TIME] [decimal](10, 2) NULL,
	[CONNECT_PHONE_CALL_TIME] [decimal](10, 2) NULL,
	[CONNECT_DID_CALL_TIME] [decimal](10, 2) NULL,
	[CONNECT_DOD_CALL_TIME] [decimal](10, 2) NULL,
	[NON_CONNECT_CALL_TIME] [decimal](10, 2) NULL,
	[ACW_TIME] [decimal](10, 2) NULL,
	[RONA_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_TIME] [decimal](10, 2) NULL,
	[OFF_WORK_TIME] [decimal](10, 2) NULL,
	[LOGGED_OUT_TIME] [decimal](10, 2) NULL,
	[ON_PHONE_TIME] [decimal](10, 2) NULL,
	[Q_ON_PHONE_TIME] [decimal](10, 2) NULL,
	[TALK_TIME] [decimal](10, 2) NULL,
	[Q_TALK_TIME] [decimal](10, 2) NULL,
	[HANDLE_TIME] [decimal](10, 2) NULL,
	[Q_HANDLE_TIME] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MING] [decimal](10, 2) NULL,
	[AUT2] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NULL,
	[SCHEDULER_ACL_NAME] [varchar](100) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_MINUTES] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](100) NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[CATS_ID] [varchar](20) NULL,
	[PAY_GROUP] [int] NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING_NEW]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING_NEW]
(
	[FF_AGENT] [varchar](200) NULL,
	[EVENT_DURATION_IN_INTERVAL_SECS] [float] NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NOT NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[EMPLOYEE_ID] [varchar](50) NULL,
	[STD_TENANT_START_TIME] [datetime] NULL,
	[INBOUND_CALLS] [int] NULL,
	[OUTBOUND_CALLS] [int] NULL,
	[TOTAL_CALLS] [int] NULL,
	[LOGGED_IN_DUR] [decimal](10, 2) NULL,
	[AVAILABLE_DUR] [decimal](10, 2) NULL,
	[BUSY_DUR] [decimal](10, 2) NULL,
	[DIRECT_CALL_DUR] [decimal](10, 2) NULL,
	[DIRECT_OB_DIAL_DUR] [decimal](10, 2) NULL,
	[OFF_WORK_DUR] [decimal](10, 2) NULL,
	[UNKNOWN_DUR] [decimal](10, 2) NULL,
	[RONA_DUR] [decimal](10, 2) NULL,
	[RONA_SPECIAL_PROJECT_DUR] [decimal](10, 2) NULL,
	[RONA_SYSTEM_ISSUES_IT_DUR] [decimal](10, 2) NULL,
	[RONA_IDLE_DUR] [decimal](10, 2) NULL,
	[RONA_CALL_BACK_DUR] [decimal](10, 2) NULL,
	[INCALL_DUR] [decimal](10, 2) NULL,
	[INCALL_IDLE_DUR] [decimal](10, 2) NULL,
	[INCALL_CALL_BACK_DUR] [decimal](10, 2) NULL,
	[INCALL_SPECIAL_PROJECT_DUR] [decimal](10, 2) NULL,
	[INCALL_ON_BREAK_DUR] [decimal](10, 2) NULL,
	[ACW_DUR] [decimal](10, 2) NULL,
	[AUTHORIZED_ACW_DUR] [decimal](10, 2) NULL,
	[ACW_ON_BREAK_DUR] [decimal](10, 2) NULL,
	[ACW_CALL_BACK_DUR] [decimal](10, 2) NULL,
	[ACW_IDLE_DUR] [decimal](10, 2) NULL,
	[ACW_SPECIAL_PROJECT_DUR] [decimal](10, 2) NULL,
	[ACW_FLOOR_SUPPORT_DUR] [decimal](10, 2) NULL,
	[ACW_SYSTEM_ISSUES_IT_DUR] [decimal](10, 2) NULL,
	[RING_DUR] [decimal](10, 2) NULL,
	[RING_BREAK_DUR] [decimal](10, 2) NULL,
	[RING_SPECIAL_PROJECT_DUR] [decimal](10, 2) NULL,
	[RING_IDLE_DUR] [decimal](10, 2) NULL,
	[RING_SYSTEM_ISSUES_IT_DUR] [decimal](10, 2) NULL,
	[RING_CALL_BACK_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_ON_BREAK_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_CALL_BACK_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_IDLE_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_PERSONAL_TIME_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_RR_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_SPECIAL_PROJECT_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_FLOOR_SUPPORT_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_SYSTEM_ISSUES_IT_DUR] [decimal](10, 2) NULL,
	[UNAVAILABLE_EMAIL_DUR] [decimal](10, 2) NULL,
	[TOTAL_AVAILABLE] [decimal](10, 2) NULL,
	[TOTAL_RING] [decimal](10, 2) NULL,
	[TOTAL_TALK] [decimal](10, 2) NULL,
	[TOTAL_ACW] [decimal](10, 2) NULL,
	[TOTAL_UNAVAILABLE] [decimal](10, 2) NULL,
	[TOTAL_RONA] [decimal](10, 2) NULL,
	[HANDLE_TIME] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[AUTHORIZED] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NULL,
	[SCHEDULER_ACL_NAME] [varchar](100) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_MINUTES] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](500) NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_SABRE_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_SABRE_INVOICING]
(
	[FF_DATETIME] [varchar](50) NULL,
	[FF_FULL_NAME] [varchar](100) NULL,
	[FF_CLIENT_USER_ID] [varchar](50) NULL,
	[FF_USERNAME] [varchar](50) NOT NULL,
	[FF_LOGIN_ID] [varchar](50) NULL,
	[FF_ACD_CALLS] [varchar](50) NULL,
	[FF_EXTN_IN_CALLS] [varchar](50) NULL,
	[FF_EXTN_OUT_CALLS] [varchar](50) NULL,
	[FF_STAFFED_TIME] [varchar](50) NULL,
	[FF_AGENT_RING_TIME] [varchar](50) NULL,
	[FF_IACD_TIME] [varchar](50) NULL,
	[FF_IACW_TIME] [varchar](50) NULL,
	[FF_IACW_OUT_TIME] [varchar](50) NULL,
	[FF_EXTN_IN_TIME] [varchar](50) NULL,
	[FF_EXTN_OUT_TIME] [varchar](50) NULL,
	[FF_HOLD_TIME] [varchar](50) NULL,
	[FF_IACD_AUX_OUT_TIME] [varchar](50) NULL,
	[FF_TOTAL_AUX_TIME] [varchar](50) NULL,
	[FF_IAUX_OUT_TIME] [varchar](50) NULL,
	[FF_AVAIL_TIME] [varchar](50) NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NULL,
	[DATETIME] [datetime] NULL,
	[ACD_CALLS] [int] NULL,
	[EXTN_IN_CALLS] [int] NULL,
	[EXTN_OUT_CALLS] [int] NULL,
	[STAFFED_TIME] [decimal](10, 2) NULL,
	[AGENT_RING_TIME] [decimal](10, 2) NULL,
	[IACD_TIME] [decimal](10, 2) NULL,
	[IACW_TIME] [decimal](10, 2) NULL,
	[IACW_OUT_TIME] [decimal](10, 2) NULL,
	[EXTN_IN_TIME] [decimal](10, 2) NULL,
	[EXTN_OUT_TIME] [decimal](10, 2) NULL,
	[HOLD_TIME] [decimal](10, 2) NULL,
	[IACD_AUX_OUT_TIME] [decimal](10, 2) NULL,
	[TOTAL_AUX_TIME] [decimal](10, 2) NULL,
	[IAUX_OUT_TIME] [decimal](10, 2) NULL,
	[AVAIL_TIME] [decimal](10, 2) NULL,
	[HANDLED_CALLS] [int] NULL,
	[ADJUSTED_ACW_TIME] [decimal](10, 2) NULL,
	[AUTHORIZED_ACW_TIME] [decimal](10, 2) NULL,
	[ADJUSTED_HOLD_TIME] [decimal](10, 2) NULL,
	[ADJUSTED_NOT_READY_TIME] [decimal](10, 2) NULL,
	[TOTAL_TALK] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MING] [decimal](10, 2) NULL,
	[AUT2] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NOT NULL,
	[SCHEDULER_ACL_NAME] [varchar](50) NULL,
	[PAY_GROUP] [int] NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NOT NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NOT NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_RATE] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](50) NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[AIRITKDUR] [int] NULL,
	[AIRIACDUR] [int] NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[WSOL_TB_IMPORTS_WV_INCONTACT_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_WV_INCONTACT_INVOICING]
(
	[FF_DATE] [varchar](50) NULL,
	[FF_INTERVAL_30_MINUTES] [varchar](50) NULL,
	[FF_AGENT_NAME] [varchar](100) NOT NULL,
	[FF_UNAVAILABLE_CODE] [varchar](100) NULL,
	[FF_SKILL_NAME] [varchar](50) NULL,
	[FF_TEAM_NAME] [varchar](50) NOT NULL,
	[FF_LOGIN_TIME] [decimal](10, 2) NULL,
	[FF_AVAILABLE_TIME] [decimal](10, 2) NULL,
	[FF_UNAVAILABLE_TIME_MINUS_ACW] [decimal](10, 2) NULL,
	[FF_TALK_TIME] [decimal](10, 2) NULL,
	[FF_HOLD_TIME] [decimal](10, 2) NULL,
	[FF_ACW_TIME] [decimal](10, 2) NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NOT NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[AGENT_NAME] [varchar](50) NULL,
	[UNAVAILABLE_CODE] [varchar](100) NULL,
	[SKILL_NAME] [varchar](50) NULL,
	[TEAM_NAME] [varchar](50) NULL,
	[LOGIN_TIME] [decimal](10, 2) NULL,
	[AVAILABLE_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_EMAIL_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_SUPERVISOR_TIME] [decimal](10, 2) NULL,
	[UNAVAILABLE_TIME_MINUS_ACW] [decimal](10, 2) NULL,
	[TALK_TIME] [decimal](10, 2) NULL,
	[HOLD_TIME] [decimal](10, 2) NULL,
	[ACW_TIME] [decimal](10, 2) NULL,
	[TRUE_OUTBOUND_TALK_TIME] [decimal](10, 2) NULL,
	[TOTAL_TALK] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MING] [decimal](10, 2) NULL,
	[AUT2] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NOT NULL,
	[SCHEDULER_ACL_NAME] [varchar](50) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NOT NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_MINUTES] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](50) NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[AIRITKDUR] [int] NULL,
	[AIRIACDUR] [int] NULL,
	[PAY_GROUP] [int] NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[YZ_TB_IMPORTS_DATALOT_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[YZ_TB_IMPORTS_DATALOT_INVOICING]
(
	[FF_USERNAME] [varchar](50) NULL,
	[FF_AGENT_ID] [varchar](50) NOT NULL,
	[FF_DAY] [varchar](50) NULL,
	[FF_DATE] [varchar](50) NOT NULL,
	[FF_HOUR] [varchar](50) NULL,
	[FF_ONLINE_MINS] [varchar](50) NULL,
	[FF_CONNECTED_MINS] [varchar](50) NULL,
	[FF_WRAP_MINS] [varchar](50) NULL,
	[FF_WAITING_MINS] [varchar](50) NULL,
	[FF_SUCCESSFUL_XFERS] [varchar](50) NULL,
	[FF_INBOUNDS] [varchar](50) NULL,
	[FF_OUTBOUNDS] [varchar](50) NULL,
	[FF_WRAP_ADJUSTMENT] [varchar](50) NULL,
	[FF_TOTAL_XFERS] [varchar](50) NULL,
	[FF_3_MIN_XFERS] [varchar](50) NULL,
	[FF_3_MIN_RETAIL_XFERS] [varchar](50) NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[INBOUND_CALLS] [int] NULL,
	[OUTBOUND_CALLS] [int] NULL,
	[TOTAL_CALLS] [int] NULL,
	[SUCCESSFUL_TRANSFERS] [int] NULL,
	[ONLINE_TIME] [decimal](10, 2) NULL,
	[CONNECTED_TIME] [decimal](10, 2) NULL,
	[WRAP_TIME] [decimal](10, 2) NULL,
	[WAITING_TIME] [decimal](10, 2) NULL,
	[WRAP_ADJ_TIME] [decimal](10, 2) NULL,
	[WRAP_ALLOWED] [decimal](10, 2) NULL,
	[AUTHORIZED_WRAP] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MINIMUM_GUARANTEE] [decimal](10, 2) NULL,
	[AUTHORIZED_MINUTES] [decimal](10, 2) NULL,
	[BILLABLE_TALK] [decimal](10, 2) NULL,
	[BILLABLE_WRAP] [decimal](10, 2) NULL,
	[AUTHORIZED_TRANSFERS] [int] NULL,
	[TOTAL_TRANSFERS] [int] NULL,
	[THREE_MIN_TRANSFERS] [int] NULL,
	[THREE_MIN_RETAIL_TRANSFERS] [int] NULL,
	[BASE_3_MINUTE_TRANSFER] [decimal](10, 2) NULL,
	[3_MINUTE_TRANSFER_BONUS] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NOT NULL,
	[SCHEDULER_ACL_NAME] [varchar](50) NULL,
	[PAY_GROUP] [int] NULL,
	[ASA_NAME] [varchar](100) NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NOT NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_RATE] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_MINUTES] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[WRAP_MINUTE_RATE] [decimal](6, 3) NULL,
	[BASE_3_MINUTE_XFER_RATE] [decimal](6, 3) NULL,
	[3_MINUTE_XFER_BONUS_RATE] [decimal](6, 3) NULL,
	[ELIGIBLE_FOR_XFER_BONUS] [varchar](1) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[TOTAL_AUTHORIZED_PAY] [decimal](6, 3) NULL,
	[TOTAL_AUTHORIZED_XFER_PAY] [decimal](6, 3) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[PAY_RATE_STANDARD] [decimal](6, 3) NULL,
	[PAY_RATE_HOLIDAY] [decimal](6, 3) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](50) NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[XFER_ID_EXT] [varchar](3) NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO

/****** Object:  Table [dbo].[YZ_TB_IMPORTS_STUBHUB_INVOICING]    Script Date: 2/20/2018 10:16:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE EXTERNAL TABLE [dbo].[YZ_TB_IMPORTS_STUBHUB_INVOICING]
(
	[FF_AGENT_NAME] [varchar](100) NULL,
	[FF_USER_NAME] [varchar](50) NOT NULL,
	[FF_HOUR] [varchar](50) NULL,
	[FF_ACTIVE_TIME] [varchar](50) NULL,
	[FF_READY_TIME] [varchar](50) NULL,
	[FF_NOT_READY_TIME] [varchar](50) NULL,
	[FF_ACCEPTED] [varchar](50) NULL,
	[FF_INVITE_TIME] [varchar](50) NULL,
	[FF_ENGAGE_TIME] [varchar](50) NULL,
	[FF_HOLD_TIME] [varchar](50) NULL,
	[FF_WRAP_TIME] [varchar](50) NULL,
	[FF_CONSULT_RECEIVED_TIME] [varchar](50) NULL,
	[FF_TALK_TIME] [varchar](50) NULL,
	[FF_HANDLE_TIME] [varchar](50) NULL,
	[FF_MINIMUM_GUARANTEE] [varchar](50) NULL,
	[FF_AUTHORIZED_TO_INVOICE] [varchar](50) NULL,
	[SEQNO_ADDED_TIME] [datetime] NOT NULL,
	[SEQNO] [int] NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NOT NULL,
	[DATETIME] [datetime] NULL,
	[HOUR_INTERVAL] [int] NULL,
	[LOGGED_IN_TIME] [int] NULL,
	[READY_TIME] [int] NULL,
	[NOT_READY_TIME] [int] NULL,
	[CALLS_ACCEPTED] [int] NULL,
	[RING_TIME] [int] NULL,
	[TALK_TIME] [int] NULL,
	[HOLD_TIME] [int] NULL,
	[WRAP_TIME] [int] NULL,
	[CONSULT_TIME] [int] NULL,
	[TALK_HOLD_CONSULT_TIME] [int] NULL,
	[HANDLE_TIME] [int] NULL,
	[TOTAL_TALK] [decimal](10, 2) NULL,
	[CPROD] [decimal](10, 2) NULL,
	[MING] [decimal](10, 2) NULL,
	[AUT2] [decimal](10, 2) NULL,
	[EMAIL] [varchar](100) NULL,
	[ID_EXT] [varchar](3) NOT NULL,
	[SCHEDULER_ACL_NAME] [varchar](50) NULL,
	[PAY_GROUP] [int] NULL,
	[STD_TENANT_START_DATE_TIME_KEY] [int] NOT NULL,
	[CAL_DATE] [datetime] NULL,
	[TENANT_KEY] [int] NULL,
	[AIR_DAY_TYPE] [varchar](1) NULL,
	[AIR_ACW_FONT_COLOR] [varchar](50) NULL,
	[MIN_GUARANTEE_RATE] [decimal](6, 3) NULL,
	[MIN_GUARANTEE_TYPE] [varchar](50) NULL,
	[AUTHORIZED_TO_INVOICE_TYPE] [varchar](50) NULL,
	[HAS_HOLIDAYS] [varchar](1) NULL,
	[INCLUDE_IN_CAS] [varchar](1) NULL,
	[READY_FOR_XML] [varchar](1) NULL,
	[SHOW_ID_EXTS] [varchar](1) NULL,
	[INVOICE_ID] [varchar](50) NULL,
	[RESOURCE_NAME] [varchar](100) NULL,
	[AIRITKDUR] [int] NULL,
	[AIRIACDUR] [int] NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[WS_ROW_UPDATED_TIME] [datetime] NULL
)
WITH (DATA_SOURCE = [GEN_GIM_REMOTE_DATA])
GO


--------------------------------------------------------------------------------------------------------------------------------
--CREATE THE VIEWS






/****** Object:  View [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM]    Script Date: 2/20/2018 10:53:17 AM ******/
CREATE   VIEW [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM]
AS
with field_map_count_view (agent_id, agent_fld_map_count) as 
(select fml.agent_ID, count(fml.agent_id) 
from SF_FIELD_MAPPING_LIST fml, manualmapfld mmf 
where mmf.idmanualmapfld=fml.idmmf 
and (fml.invoice_map_key is not null and fml.invoice_map_key <> '')
and mmf.status='Active'
group by fml.AGENT_ID)

SELECT distinct    
applicant.agentidentnum as AGENT_ID, applicant.firstname as FIRST_NAME, applicant.middlinit as MIDDLE_NAME,
replace((left(applicant.firstname, 1) + left(applicant.lastname,7)),' ','') as ALIAS, applicant.lastname as LAST_NAME,
CASE WHEN applicant.corporatname = '' THEN NULL ELSE applicant.corporatname END as CORPORATE_NAME, 
agents.email as EMAIL_ADDRESS, 
--agents.pwd,
applicant.phone as WORK_PHONE, 
--applicant.phonealt,
ISNULL(CONVERT(varchar(50),applicant.mobilephone),'') as MOBILE_PHONE,
applicant.mailaddr as STREET_ADDRESS, applicant.city as CITY,
applicant.idstate as STATE_PROVINCE, applicant.zip as ZIP,
applicant.idcountry as COUNTRY,
applicant.firstname + ' ' + left(applicant.lastname,1) + '. - WS Agent Since ' + Convert(char(3), applicant.datecreated, 0) + '. ' +  CAST(Year(applicant.datecreated) as varchar(4))  as NICKNAME,
appstatus.name as CATS_STATUS,
applicant.firstname + ' ' + RTRIM(LTRIM(applicant.middlinit)) + ' ' + applicant.lastname as CATS_PROFILE_NAME,
'Contact' as sObject, 'Agent' as RecordTypeName, 55 as 'SF_A_Client_ID',applicant.DATEUPDATED  as LAST_CHANGED_DATE,
fmcv.agent_fld_map_count as FIELD_MAP_COUNT
FROM
APPLICANT applicant, APPSTATUS appstatus, AGENTS agents, field_map_count_view fmcv

where 
applicant.IDAPPSTATUS = appstatus.IDAPPSTATUS and agents.login = applicant.email 
and agents.id=fmcv.agent_id


--SELECT * FROM APPLICANT
GO

/****** Object:  View [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM_IG]    Script Date: 2/20/2018 10:53:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE   VIEW [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM_IG]
AS

WITH FIELD_MAP_COUNT_VIEW
(
  AGENT_ID
 ,AGENT_FLD_MAP_COUNT
) AS 
(
 SELECT
  FML.AGENT_ID
 ,COUNT(FML.AGENT_ID) 
 FROM
  SF_FIELD_MAPPING_LIST FML
 ,MANUALMAPFLD			MMF
 WHERE MMF.IDMANUALMAPFLD = FML.IDMMF
   AND (FML.INVOICE_MAP_KEY IS NOT NULL AND FML.INVOICE_MAP_KEY <> '')
   AND MMF.[STATUS] = 'Active'
 GROUP BY FML.AGENT_ID
)

SELECT
 DISTINCT APPLICANT.AGENTIDENTNUM						AS AGENT_ID
,APPLICANT.FIRSTNAME									AS FIRST_NAME
,APPLICANT.MIDDLINIT									AS MIDDLE_NAME
,REPLACE((LEFT(APPLICANT.FIRSTNAME, 1) + LEFT(APPLICANT.LASTNAME, 7)),' ','')	AS ALIAS
,APPLICANT.LASTNAME										AS LAST_NAME
,CASE WHEN APPLICANT.CORPORATNAME = '' THEN NULL
	  ELSE APPLICANT.CORPORATNAME END					AS CORPORATE_NAME
,AGENTS.EMAIL											AS EMAIL_ADDRESS 
--,AGENTS.PWD
,APPLICANT.PHONE										AS WORK_PHONE 
--,APPLICANT.PHONEALT
,ISNULL(CONVERT(VARCHAR(50),APPLICANT.MOBILEPHONE),'')	AS MOBILE_PHONE
,APPLICANT.MAILADDR										AS STREET_ADDRESS
,APPLICANT.CITY											AS CITY
,APPLICANT.IDSTATE										AS STATE_PROVINCE
,APPLICANT.ZIP											AS ZIP
,APPLICANT.IDCOUNTRY									AS COUNTRY
,APPLICANT.FIRSTNAME + ' ' + LEFT(APPLICANT.LASTNAME, 1) + '. - WS Agent Since ' + CONVERT(CHAR(3), APPLICANT.DATECREATED, 0) + '. ' + CAST(YEAR(APPLICANT.DATECREATED) AS VARCHAR(4)) AS NICKNAME
,APPSTATUS.[NAME]										AS CATS_STATUS
,APPLICANT.FIRSTNAME + ' ' + RTRIM(LTRIM(APPLICANT.MIDDLINIT)) + ' ' + APPLICANT.LASTNAME	AS CATS_PROFILE_NAME
,'Contact'												AS sObject
,'Agent'												AS RecordTypeName
,55														AS Client_ID
,APPLICANT.DATEUPDATED									AS LAST_CHANGED_DATE
,FMCV.AGENT_FLD_MAP_COUNT								AS FIELD_MAP_COUNT
FROM
 APPLICANT				APPLICANT
,APPSTATUS				APPSTATUS
,AGENTS					AGENTS
,FIELD_MAP_COUNT_VIEW	FMCV
WHERE APPLICANT.IDAPPSTATUS = APPSTATUS.IDAPPSTATUS
  AND AGENTS.[LOGIN]		= APPLICANT.EMAIL
  AND AGENTS.ID				= FMCV.AGENT_ID


--SELECT * FROM APPLICANT
GO

/****** Object:  View [dbo].[WSOL_VW_IMPORTS_VYNE_PATS_ACCESS]    Script Date: 2/20/2018 10:53:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[WSOL_VW_IMPORTS_VYNE_PATS_ACCESS]
AS

SELECT DAT.*
FROM
(
SELECT
 APP.FIRSTNAME + ' ' + APP.LASTNAME										AS AGENT_FULL_NAME
,APP.FIRSTNAME															AS FF_OFFICIAL_ACL_FIRST_NAME
,APP.LASTNAME															AS FF_OFFICIAL_ACL_LAST_NAME
,REPLACE((LEFT(APP.FIRSTNAME,1) + LEFT(APP.LASTNAME,7)),' ','')			AS ALIAS
,APP.CORPORATNAME														AS CORPORATE_NAME
,APP.AGENTID															AS AGENT_ID
,APP.AGENTIDENTNUM														AS ID_NUMBER
,APS.[NAME]																AS CATS_STATUS_CODE
,APP.PHONE																AS PRIMARY_PHONE
,ISNULL(CONVERT(VARCHAR(50), APP.MOBILEPHONE),'')						AS MOBILE_PHONE
,CASE WHEN APP.MOBILETERMS = 'Y' THEN 'Yes'
	  WHEN APP.MOBILETERMS = 'N' THEN 'No'
	  ELSE APP.MOBILETERMS
 END																	AS MOBILE_TERMS
,APP.EMAIL																AS USERNAME
,PRJ.[NAME]																AS [PROGRAM_NAME]
,'Welcome'																AS [GROUP]
,PRD.ROSTERNUMBER														AS PATS_ROSTER_NUMBER
,PRT.[NAME]																AS TYPE_OF_PREP
,TRA.FIRSTNAME + ' ' + TRA.LASTNAME										AS TRAINER_NAME
,PRD.DATESTART															AS [START_DATE]
,PRD.DATESTOP															AS END_DATE
,CASE WHEN PRA.COMPLETION = 'Y' THEN 'Yes'
	  WHEN PRA.COMPLETION = 'N' THEN 'No'
	  WHEN PRA.COMPLETION = 'A' THEN 'DP'
	  WHEN PRA.COMPLETION = 'M' THEN 'MR'
	  ELSE PRA.COMPLETION END											AS COMPLETION_STATUS
,RES.[NAME]																AS REASON_CODE
,CASE WHEN PRD.OPENCLOSESTATUS = 'C' THEN 'Closed'
	  ELSE 'Open' END													AS PATS_ROSTER_STATUS
,APP.MAILADDR															AS STREET_ADDRESS
,APP.CITY																AS CITY
,APP.IDSTATE															AS [STATE_PROVINCE]
,APP.ZIP																AS ZIP
,APP.IDCOUNTRY															AS COUNTRY
,APP.FIRSTNAME + ' ' + RTRIM(LTRIM(APP.MIDDLINIT)) + ' ' + APP.LASTNAME	AS CATS_PROFILE_NAME
,APP.FIRSTNAME + ' '
			   + LEFT(APP.LASTNAME,1)
			   + '. - WS Agent Since '
			   + CONVERT(CHAR(3), PRD.DATESTART,0)
			   + '. '
			   + CAST(YEAR(PRD.DATESTART) AS VARCHAR(4))				AS NICKNAME
,APP.DATEUPDATED														AS LAST_CHANGED_DATE
,CLI.ID																	AS CLIENT_ID
,CLI.[NAME]																AS CLIENT_NAME
FROM PREPARATIONDATA			PRD
LEFT JOIN TYPEOFPREPARATION		PRT ON PRD.IDTYPEOFPREPARATION	= PRT.IDTYPEOFPREPARATION
LEFT JOIN PROJECT				PRJ ON PRD.IDPROJECT			= PRJ.IDPROJECT
LEFT JOIN PREPARATIONAGENT		PRA ON PRD.IDPREPARATIONDATA	= PRA.IDPREPARATIONDATA
LEFT JOIN APPLICANT				APP ON PRA.EMAIL				= APP.EMAIL
LEFT JOIN APPSTATUS				APS ON APP.IDAPPSTATUS			= APS.IDAPPSTATUS
LEFT JOIN PREPARATIONTRAINER	TRA ON PRD.IDPREPARATIONTRAINER	= TRA.IDPREPARATIONTRAINER
LEFT JOIN PREPARATIONREASON		RES ON PRA.IDPREPARATIONREASON	= RES.IDPREPARATIONREASON
LEFT JOIN CLIENT				CLI ON PRJ.IDCLIENT				= CLI.ID
WHERE PRT.IDTYPEOFPREPARATION = 1
  AND PRD.ISDELETED <> 'Y'
) DAT

WHERE DAT.ID_NUMBER IS NOT NULL
GO

/****** Object:  View [dbo].[WSOL_VW_IMPORTS_VYNE_PATS_ACCESS_IMPIGER]    Script Date: 2/20/2018 10:53:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[WSOL_VW_IMPORTS_VYNE_PATS_ACCESS_IMPIGER]
AS

SELECT agents.fname + ' ' + agents.lname as AGENT_FULL_NAME,
applicant.firstname as FF_OFFICIAL_ACL_FIRST_NAME, applicant.lastname as FF_OFFICIAL_ACL_LAST_NAME, REPLACE((LEFT(applicant.firstname,1) + LEFT(applicant.lastname,7)),' ','') as ALIAS,
applicant.corporatname as CORPORATE_NAME, 
applicant.agentid as AGENT_ID, applicant.agentidentnum as ID_NUMBER, appstatus.name as CATS_STATUS_CODE,applicant.phone as PRIMARY_PHONE,
ISNULL(CONVERT(varchar(50),applicant.mobilephone),'') as MOBILE_PHONE,

CASE WHEN applicant.mobileterms = 'Y' Then 'Yes' WHEN applicant.mobileterms = 'N' Then 'No' ELSE applicant.mobileterms END as MOBILE_TERMS, 

applicant.email as USERNAME,

--applicant.[password], 

project.name as PROGRAM_NAME, 'Welcome' as [GROUP] , PreparationData.rosterNumber as PATS_ROSTER_NUMBER,
TypeOfPreparation.name as TYPE_OF_PREP, PreparationTrainer.firstName + ' ' + PreparationTrainer.lastName as TRAINER_NAME,
PreparationData.dateStart as START_DATE, PreparationData.dateStop as END_DATE, 

CASE  WHEN PreparationAgent.completion = 'Y'  THEN 'Yes'
      WHEN PreparationAgent.completion = 'N'  THEN 'No'
      WHEN PreparationAgent.completion = 'A'  THEN 'DP'
	  WHEN PreparationAgent.completion = 'M'  THEN 'MR'
      ELSE PreparationAgent.completion END as COMPLETION_STATUS,

preparationreason.Name as REASON_CODE,

--Applicant.birthdatemmdd, Applicant.ssnlast4digits,

CASE WHEN PreparationData.openCloseStatus = 'C' Then 'Closed' ELSE 'Open' END as PATS_ROSTER_STATUS, applicant.mailaddr as STREET_ADDRESS, applicant.city as CITY,
applicant.idstate as [STATE_PROVINCE], applicant.zip as ZIP, applicant.idcountry as COUNTRY,
applicant.firstname + ' ' + RTRIM(LTRIM(applicant.middlinit)) + ' ' + applicant.lastname as CATS_PROFILE_NAME,
applicant.firstname + ' ' + left(applicant.lastname,1) + '. - WS Agent Since ' + Convert(char(3), PreparationData.dateStart, 0) + '. ' +  CAST(Year(PreparationData.dateStart) as varchar(4))  as NICKNAME,
applicant.DATEUPDATED  as LAST_CHANGED_DATE,

client.id	as CLIENT_ID,
client.name	as CLIENT_NAME

FROM 
APPLICANT applicant, APPSTATUS appstatus, PreparationData preparationdata, TypeOfPreparation typeofpreparation, 
PreparationTrainer preparationtrainer, PreparationAgent preparationagent, PreparationReason preparationreason,
Project project, AGENTS agents, CLIENT client

WHERE 
applicant.IDAPPSTATUS = appstatus.IDAPPSTATUS and 
preparationagent.IDAPPSTATUS = appstatus.IDAPPSTATUS and 
preparationdata.IDPREPARATIONDATA = preparationagent.IDPREPARATIONDATA and
preparationdata.IDPREPARATIONTRAINER = preparationtrainer.IDPREPARATIONTRAINER and 
preparationdata.IDTYPEOFPREPARATION = typeofpreparation.IDTYPEOFPREPARATION and 
preparationdata.idproject = project.idproject and
preparationreason.IDPREPARATIONREASON = preparationagent.IDPREPARATIONREASON  and
applicant.email = preparationagent.email and agents.login = applicant.email and
project.idclient = client.id and
preparationdata.idtypeofpreparation = 1 -- 1 = INITIAL
GO

/****** Object:  View [dbo].[WSOL_VW_PBI_ALL_CATS_STATUSES]    Script Date: 2/20/2018 10:53:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE   VIEW [dbo].[WSOL_VW_PBI_ALL_CATS_STATUSES]
AS

SELECT
 STA.[NAME]
,STA.VISIBLE
FROM APPSTATUS STA
GO

/****** Object:  View [dbo].[WSOL_VW_PBI_EDUCATION_ROSTER_DETAIL]    Script Date: 2/20/2018 10:53:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE   VIEW [dbo].[WSOL_VW_PBI_EDUCATION_ROSTER_DETAIL]
AS

WITH SCHEDULE_ACL (SCHID, IDAGENT, IDPROG, IDCLIENT) AS
(
 SELECT SCH.ID, SCH.IDAGENT, SCH.IDPROG, PRG.IDCLIENT
   FROM SCHACL SCH, PROGRAM PRG
  WHERE SCH.IDPROG = PRG.ID
    AND SCH.IDPROG <> 2508
)

SELECT
 DAT.*
,CASE WHEN DAT.COMPLETION_STATUS <> 'Yes' THEN ''
	  ELSE CASE WHEN ISNULL(DAT.AGENT_ID,'') = '' THEN 'NO EMAIL MATCH'
				WHEN ISNULL(SH.IDAGENT,'')   = '' THEN 'NO'
				ELSE 'YES' END
	  END								AS ACTIVE_AGENT
FROM
(SELECT
 PATS.AGENT_NAME						AS AGENT_NAME
,ISNULL(PATS.ALTERNATE_AGENT_NAME,'')	AS ALTERNATE_AGENT_NAME
,ISNULL(PATS.AGENT_EMAIL,'')			AS AGENT_EMAIL
,ISNULL(PATS.CATS_ID,'')				AS CATS_ID
,  PR.[NAME]							AS PROJECT_NAME
,  CL.[NAME]							AS CLIENT_NAME
,PATS.ROSTER_NUMBER						AS ROSTER_NUMBER
,ISNULL(PATS.SUBHEADING,'')				AS SUBHEADING
,  TY.[NAME]							AS TYPE_OF_PREPARATION
,PATS.PREP_START_DATE					AS PREP_START_DATE
,PATS.PREP_END_DATE						AS PREP_END_DATE
,  ST.[NAME]							AS AGENT_STATUS
,PATS.COMPLETION_STATUS					AS COMPLETION_STATUS
,  RE.[NAME]							AS REASON
,PATS.DAYS_ATTENDED						AS DAYS_ATTENDED
,PATS.TRAINER_NAME						AS TRAINER_NAME
,PATS.COMMENTS							AS COMMENTS
,ISNULL(PATS.AGENT_ID,'')				AS AGENT_ID
,  PR.IDCLIENT							AS IDCLIENT
FROM
(SELECT
 CASE WHEN PA.MIDDLENAME = '' THEN CONCAT(PA.FIRSTNAME,' ',PA.LASTNAME)
	  ELSE CONCAT(PA.FIRSTNAME,' ',PA.MIDDLENAME,' ',PA.LASTNAME) END		AS AGENT_NAME
,CASE WHEN ISNULL(AG.FNAME,'') = '' THEN AG.LNAME
	  WHEN ISNULL(AG.LNAME,'') = '' THEN AG.FNAME
	  ELSE CONCAT(AG.FNAME,' ',AG.LNAME) END								AS ALTERNATE_AGENT_NAME
,AG.EMAIL																	AS AGENT_EMAIL
,AP.AGENTIDENTNUM															AS CATS_ID
,AG.ID																		AS AGENT_ID
,PD.ROSTERNUMBER															AS ROSTER_NUMBER
,PD.SUBHEADING																AS SUBHEADING
,PD.DATESTART																AS PREP_START_DATE
,PD.DATESTOP																AS PREP_END_DATE
,PD.ISDELETED																AS DELETED_FLAG
,CASE WHEN PA.COMPLETION = 'Y' THEN 'Yes'
	  WHEN PA.COMPLETION = 'N' THEN 'No'
	  WHEN PA.COMPLETION = 'A' THEN 'DP'
	  WHEN PA.COMPLETION = 'M' THEN 'MR'
	  ELSE PA.COMPLETION END												AS COMPLETION_STATUS
,PA.DAYSATTENDED															AS DAYS_ATTENDED
,CASE WHEN PT.LASTNAME = '' THEN PT.FIRSTNAME
	  ELSE CONCAT(PT.FIRSTNAME,' ',PT.LASTNAME) END							AS TRAINER_NAME
,ISNULL(PA.COMMENTS,'')														AS COMMENTS 
,PD.IDPROJECT																AS IDPROJECT
,AP.IDAPPSTATUS																AS IDAPPSTATUS
,PA.IDPREPARATIONREASON														AS IDPREPARATIONREASON
,PD.IDTYPEOFPREPARATION														AS IDTYPEOFPREPARATION
FROM PREPARATIONAGENT PA
LEFT JOIN AGENTS				AG ON PA.EMAIL					= AG.EMAIL
LEFT JOIN APPLICANT				AP ON PA.EMAIL					= AP.EMAIL
LEFT JOIN PREPARATIONDATA		PD ON PA.IDPREPARATIONDATA		= PD.IDPREPARATIONDATA
LEFT JOIN PREPARATIONTRAINER	PT ON PD.IDPREPARATIONTRAINER	= PT.IDPREPARATIONTRAINER
WHERE PD.ISDELETED <> 'Y'
  --AND PA.IDPREPARATIONDATA = 4522
) PATS
LEFT JOIN PROJECT			PR ON PATS.IDPROJECT			= PR.IDPROJECT
LEFT JOIN APPSTATUS			ST ON PATS.IDAPPSTATUS			= ST.IDAPPSTATUS
LEFT JOIN PREPARATIONREASON	RE ON PATS.IDPREPARATIONREASON	= RE.IDPREPARATIONREASON
LEFT JOIN CLIENT			CL ON PR.IDCLIENT				= CL.ID
LEFT JOIN TYPEOFPREPARATION	TY ON PATS.IDTYPEOFPREPARATION	= TY.IDTYPEOFPREPARATION
--WHERE PATS.IDPROJECT			= PR.IDPROJECT
--  AND PATS.IDAPPSTATUS			= ST.IDAPPSTATUS
--  AND PATS.IDPREPARATIONREASON	= RE.IDPREPARATIONREASON
--  AND PR.IDCLIENT				= CL.ID
--  AND PATS.IDTYPEOFPREPARATION	= TY.IDTYPEOFPREPARATION
--  AND PATS.DELETED_FLAG <> 'Y'
) DAT
 LEFT JOIN SCHEDULE_ACL SH ON DAT.AGENT_ID = SH.IDAGENT
						  AND DAT.IDCLIENT = SH.IDCLIENT
GROUP BY
 DAT.AGENT_NAME
,DAT.ALTERNATE_AGENT_NAME
,DAT.AGENT_EMAIL
,DAT.CATS_ID
,DAT.PROJECT_NAME
,DAT.CLIENT_NAME
,DAT.ROSTER_NUMBER
,DAT.SUBHEADING
,DAT.TYPE_OF_PREPARATION
,DAT.PREP_START_DATE
,DAT.PREP_END_DATE
,DAT.AGENT_STATUS
,DAT.COMPLETION_STATUS
,DAT.REASON
,DAT.DAYS_ATTENDED
,DAT.TRAINER_NAME
,DAT.COMMENTS
,DAT.AGENT_ID
,DAT.IDCLIENT
,CASE WHEN DAT.COMPLETION_STATUS <> 'Yes' THEN ''
	  ELSE CASE WHEN ISNULL(DAT.AGENT_ID,'') = '' THEN 'NO EMAIL MATCH'
				WHEN ISNULL(SH.IDAGENT,'')   = '' THEN 'NO'
				ELSE 'YES' END
	  END
GO

/****** Object:  View [dbo].[WSOL_VW_PBI_TEST_SCHEDULE_DETAIL]    Script Date: 2/20/2018 10:53:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE   VIEW [dbo].[WSOL_VW_PBI_TEST_SCHEDULE_DETAIL]
AS

SELECT
 DAT.AGENT_FIRST_NAME
,DAT.AGENT_MIDDLE_NAME
,DAT.AGENT_LAST_NAME
,DAT.CORPORATE_NAME
,DAT.CATS_ID
,DAT.EMAIL_ADDRESS
,DAT.SCHEDULE_DATE
,DAT.INTERVAL_START
,DAT.CLIENT_NAME
,DAT.[PROGRAM_NAME]
,DAT.SCHEDULED_TIME
,DAT.CANCELLED_TIME
,DAT.RESOURCE_NAME
FROM
(
SELECT	
	 APP.FIRSTNAME																	AS AGENT_FIRST_NAME
	,APP.MIDDLINIT																	AS AGENT_MIDDLE_NAME
	,APP.LASTNAME																	AS AGENT_LAST_NAME
	,CASE WHEN APP.CORPORATEW9 = 'Y' THEN APP.CORPORATNAME
		  ELSE '' END																AS CORPORATE_NAME
	,APP.AGENTIDENTNUM																AS CATS_ID
	,APP.EMAIL																		AS EMAIL_ADDRESS
	,CAST(SCH.SCHEDULE_DATE AS DATETIME)											AS SCHEDULE_DATE
	,CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN 
					CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
				 ELSE
					CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
			END																		AS INTERVAL_START
	,SCH.CLIENT_NAME																AS CLIENT_NAME
	,SCH.[PROGRAM_NAME]																AS [PROGRAM_NAME]
	,SUM(SCH.SCHEDULED_SECS) / 3600.00												AS SCHEDULED_TIME
	,SUM(SCH.CANCELLED_SECS) / 3600.00												AS CANCELLED_TIME
	,CASE WHEN ISNULL(APP.MIDDLINIT,'') = '' THEN
			CONCAT(APP.FIRSTNAME,' ',APP.LASTNAME)
		  ELSE
			CONCAT(APP.FIRSTNAME,' ',APP.MIDDLINIT,' ',APP.LASTNAME) END			AS RESOURCE_NAME

--  SELECT *
	FROM
	(
		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:00:00' AS DATETIME)	AS INTERVAL_START
		,CASE WHEN SUM(S.F0000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
		,0.00																AS CANCELLED_SECS
		FROM  SCHTIMES_AGENT	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:15:00' AS DATETIME)	AS INTERVAL_START
		,CASE WHEN SUM(S.F0015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
		,0.00																AS CANCELLED_SECS
		FROM  SCHTIMES_AGENT	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:30:00' AS DATETIME)	AS INTERVAL_START
		,CASE WHEN SUM(S.F0030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
		,0.00																AS CANCELLED_SECS
		FROM  SCHTIMES_AGENT	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:45:00' AS DATETIME)	AS INTERVAL_START
		,CASE WHEN SUM(S.F0045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
		,0.00																AS CANCELLED_SECS
		FROM  SCHTIMES_AGENT	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:00:00' AS DATETIME)	AS INTERVAL_START
		,CASE WHEN SUM(S.F0100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
		,0.00																AS CANCELLED_SECS
		FROM  SCHTIMES_AGENT	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:15:00' AS DATETIME)	AS INTERVAL_START
		,CASE WHEN SUM(S.F0115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
		,0.00																AS CANCELLED_SECS
		FROM  SCHTIMES_AGENT	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:30:00' AS DATETIME)	AS INTERVAL_START
		,CASE WHEN SUM(S.F0130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
		,0.00																AS CANCELLED_SECS
		FROM  SCHTIMES_AGENT	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:45:00' AS DATETIME)	AS INTERVAL_START
		,CASE WHEN SUM(S.F0145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
		,0.00																AS CANCELLED_SECS
		FROM  SCHTIMES_AGENT	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0400) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0415) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0430) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0445) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0500) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0515) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0530) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0545) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0600) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0615) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0630) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0645) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0700) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0715) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0730) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0745) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0800) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0815) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0830) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0845) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0900) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0915) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0930) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0945) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1400) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1415) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1430) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1445) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1500) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1515) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1530) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1545) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1600) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1615) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1630) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1645) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1700) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1715) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1730) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1745) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1800) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1815) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1830) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1845) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1900) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1915) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1930) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1945) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
,0.00																AS CANCELLED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]
	
	UNION ALL
																									--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:00:00' AS DATETIME)	AS INTERVAL_START
		,0.00																AS SCHEDULED_SECS
		,CASE WHEN SUM(S.F0000) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
		FROM  SCHTIMES_CANCEL	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:15:00' AS DATETIME)	AS INTERVAL_START
		,0.00																AS SCHEDULED_SECS
		,CASE WHEN SUM(S.F0015) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
		FROM  SCHTIMES_CANCEL	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:30:00' AS DATETIME)	AS INTERVAL_START
		,0.00																AS SCHEDULED_SECS
		,CASE WHEN SUM(S.F0030) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
		FROM  SCHTIMES_CANCEL	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:45:00' AS DATETIME)	AS INTERVAL_START
		,0.00																AS SCHEDULED_SECS
		,CASE WHEN SUM(S.F0045) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
		FROM  SCHTIMES_CANCEL	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:00:00' AS DATETIME)	AS INTERVAL_START
		,0.00																AS SCHEDULED_SECS
		,CASE WHEN SUM(S.F0100) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
		FROM  SCHTIMES_CANCEL	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:15:00' AS DATETIME)	AS INTERVAL_START
		,0.00																AS SCHEDULED_SECS
		,CASE WHEN SUM(S.F0115) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
		FROM  SCHTIMES_CANCEL	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:30:00' AS DATETIME)	AS INTERVAL_START
		,0.00																AS SCHEDULED_SECS
		,CASE WHEN SUM(S.F0130) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
		FROM  SCHTIMES_CANCEL	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

		UNION ALL

		SELECT
		 S.IDAGENT															AS IDAGENT
		,S.DATESCH															AS SCHEDULE_DATE
		,S.IDPROGR															AS IDPROGR
		,C.ID																AS CLIENT_ID
		,C.[NAME]															AS CLIENT_NAME
		,P.[NAME]															AS [PROGRAM_NAME]
		,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:45:00' AS DATETIME)	AS INTERVAL_START
		,0.00																AS SCHEDULED_SECS
		,CASE WHEN SUM(S.F0145) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
		FROM  SCHTIMES_CANCEL	S
		LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
		LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
		WHERE P.ISSHOW = 1
		GROUP BY
		 S.IDAGENT
		,S.DATESCH
		,S.IDPROGR
		,C.ID
		,C.[NAME]
		,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0200) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0215) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0230) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0245) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0300) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0315) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0330) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0345) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0400) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0415) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0430) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0445) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0500) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0515) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0530) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0545) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0600) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0615) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0630) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0645) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0700) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0715) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0730) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0745) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0800) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0815) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0830) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0845) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0900) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0915) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0930) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F0945) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1000) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1015) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1030) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1045) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1100) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1115) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1130) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1145) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1200) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1215) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1230) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1245) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1300) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1315) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1330) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1345) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1400) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1415) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1430) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1445) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1500) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1515) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1530) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1545) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1600) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1615) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1630) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1645) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1700) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1715) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1730) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1745) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1800) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1815) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1830) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1845) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1900) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1915) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1930) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F1945) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2000) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2015) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2030) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2045) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2100) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2115) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2130) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2145) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2200) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2215) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2230) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2245) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:00:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2300) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:15:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2315) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:30:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2330) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT															AS IDAGENT
,S.DATESCH															AS SCHEDULE_DATE
,S.IDPROGR															AS IDPROGR
,C.ID																AS CLIENT_ID
,C.[NAME]															AS CLIENT_NAME
,P.[NAME]															AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:45:00' AS DATETIME)	AS INTERVAL_START
,0.00																AS SCHEDULED_SECS
,CASE WHEN SUM(S.F2345) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
FROM  SCHTIMES_CANCEL	S
LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]
	) SCH
	
	LEFT JOIN	AGENTS					AGT ON SCH.IDAGENT	= AGT.ID
	LEFT JOIN	APPLICANT				APP ON AGT.EMAIL	= APP.EMAIL

	/*WHERE ( CAST(SCH.SCHEDULE_DATE AS DATETIME) >= @DTM_BEG AND CAST(SCH.SCHEDULE_DATE AS DATETIME) <  @DTM_END )
	  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(SCH.CLIENT_ID)  + ',',@CLIENT_ID)	> 0 )
	  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(SCH.IDPROGR)	+ ',',@PROGRAM_ID)	> 0 )
	  */
	GROUP BY
	 APP.FIRSTNAME
	,APP.MIDDLINIT
	,APP.LASTNAME
	,CASE WHEN APP.CORPORATEW9 = 'Y' THEN APP.CORPORATNAME
		  ELSE '' END
	,APP.AGENTIDENTNUM
	,APP.EMAIL
	,CAST(SCH.SCHEDULE_DATE AS DATETIME)
	,CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN 
					CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
				 ELSE
					CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
			END
	,SCH.CLIENT_NAME
	,SCH.[PROGRAM_NAME]
	,CASE WHEN ISNULL(APP.MIDDLINIT,'') = '' THEN
			CONCAT(APP.FIRSTNAME,' ',APP.LASTNAME)
		  ELSE
			CONCAT(APP.FIRSTNAME,' ',APP.MIDDLINIT,' ',APP.LASTNAME) END
) DAT
GO

/****** Object:  View [dbo].[WSOL_VW_SCHEDULE_DETAIL]    Script Date: 2/20/2018 10:53:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   VIEW [dbo].[WSOL_VW_SCHEDULE_DETAIL]
AS

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID				AS CLIENT_ID
,C.[NAME]			AS CLIENT_NAME
,P.[NAME]			AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID				AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0400) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0415) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0430) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0445) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0500) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0515) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0530) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0545) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0600) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID
,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0615) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0630) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0645) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0700) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0715) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0730) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0745) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0800) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0815) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0830) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0845) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0900) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0915) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0930) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F0945) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1400) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1415) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1430) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1445) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1500) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1515) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1530) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1545) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1600) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1615) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1630) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1645) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1700) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1715) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1730) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1745) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1800) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1815) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1830) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1845) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1900) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1915) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1930) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F1945) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:00:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID AS CLIENT_ID,C.[NAME] AS CLIENT_NAME,P.[NAME] AS [PROGRAM_NAME] ,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:15:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT C ON P.IDCLIENT = C.ID WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR

,C.ID,C.[NAME] ,P.[NAME] UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID				AS CLIENT_ID
,C.[NAME]			AS CLIENT_NAME
,P.[NAME]			AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:30:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]

UNION ALL

SELECT
 S.IDAGENT
,S.DATESCH			AS SCHEDULE_DATE
,S.IDPROGR
,C.ID				AS CLIENT_ID
,C.[NAME]			AS CLIENT_NAME
,P.[NAME]			AS [PROGRAM_NAME]
,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:45:00' AS DATETIME)	AS INTERVAL_START
,CASE WHEN SUM(S.F2345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
FROM  SCHTIMES_AGENT	S
LEFT JOIN PROGRAM		P ON S.IDPROGR = P.ID
LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
WHERE P.ISSHOW = 1
GROUP BY
 S.IDAGENT
,S.DATESCH
,S.IDPROGR
,C.ID
,C.[NAME]
,P.[NAME]
GO

----------------------------------------------------------------------------------------------------------
--REBUILD THE FUNCTIONS
----------------------------------------------------------------------------------------------------------

-- =======================================================================
-- Author:		ISAAC GUARDIOLA
-- Create date:	2017-07-29
-- Description:	FUNCTION TO RETURN MANUAL MAP DATA KEYS (FIELD MAP KEYS)
-- =======================================================================
CREATE FUNCTION [dbo].[TVF_WSOL_MANUAL_MAP_DATA] 
(
	-- Add the parameters for the function here
	 @CLIENT_ID		VARCHAR(3500)
	,@PROGRAM_ID	VARCHAR(3500)
)
RETURNS 
@RESULTS_TABLE TABLE 
(
	-- Add the column definitions for the TABLE variable here
	 CLIENT_ID				VARCHAR(20)
	,IDAGENT				VARCHAR(20)
	,FIELD_MAP_KEY			VARCHAR(200)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set

	SET @CLIENT_ID	= ',' + LTRIM(RTRIM(REPLACE(@CLIENT_ID	,'ALL','0'))) + ','
	SET @PROGRAM_ID	= ',' + LTRIM(RTRIM(REPLACE(@PROGRAM_ID	,'ALL','0'))) + ','

	INSERT INTO @RESULTS_TABLE
	SELECT
	 PRG.IDCLIENT	AS CLIENT_ID
	,MAP.IDAGENT	AS IDAGENT
	,MAP.USERID		AS FIELD_MAP_KEY
	FROM MANUALMAPDATA MAP
	LEFT JOIN MANUALMAPFLD	FLD ON MAP.IDMANUALMAPFLD = FLD.IDMANUALMAPFLD
	LEFT JOIN PROGRAM		PRG ON FLD.IDPROGRAM	  = PRG.ID
	WHERE ISNULL(MAP.USERID,'') <> ''
	  AND FLD.STATUS = 'Active'
	  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(PRG.IDCLIENT)	   + ',',@CLIENT_ID) > 0   ) 
	GROUP BY
	 PRG.IDCLIENT
	,MAP.IDAGENT
	,MAP.USERID

	RETURN 
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS]    Script Date: 2/20/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =======================================================================
-- Author:		ISAAC GUARDIOLA
-- Create date:	2017-07-28
-- Description:	FUNCTION TO RETURN SCHEDULE DATA BY AGENT BY INTERVAL
-- =======================================================================
CREATE FUNCTION [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS] 
(
	-- Add the parameters for the function here
	 @DTM_BEG		DATETIME
	,@DTM_END		DATETIME
	,@INTERVAL		VARCHAR(1) 
	,@DUR_IN		VARCHAR(1)
	,@CLIENT_ID		VARCHAR(3500)
	,@PROGRAM_ID	VARCHAR(3500)
)
RETURNS 
@RESULTS_TABLE TABLE 
(
	-- Add the column definitions for the TABLE variable here
	 AGENT_FIRST_NAME		VARCHAR(200)
	,AGENT_MIDDLE_NAME		VARCHAR(200)
	,AGENT_LAST_NAME		VARCHAR(200)
	,CORPORATE_NAME			VARCHAR(200)
	,IDAGENT				VARCHAR(50)
	,CATS_ID				VARCHAR(20)
	,EMAIL_ADDRESS			VARCHAR(200)
	,SCHEDULE_DATE			DATETIME
	,INTERVAL_START			CHAR(5)
	,SCHEDULE_DATE_INT		DATETIME
	,CLIENT_ID				VARCHAR(10)
	,CLIENT_NAME			VARCHAR(200)
	,PROGRAM_ID				VARCHAR(20)
	,[PROGRAM_NAME]			VARCHAR(200)
	,SCHEDULED_TIME			DECIMAL(10,2)
	,CANCELLED_TIME			DECIMAL(10,2)
	,RESOURCE_NAME			VARCHAR(500)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set

	SET @CLIENT_ID	= ',' + LTRIM(RTRIM(REPLACE(@CLIENT_ID	,'ALL','0'))) + ','
	SET @PROGRAM_ID	= ',' + LTRIM(RTRIM(REPLACE(@PROGRAM_ID	,'ALL','0'))) + ','

	--==================================
	--	SET AMOUNT TO DIVIDE BY:
	--==================================
	DECLARE @DS DECIMAL(10,2)
	IF @DUR_IN = 'S' BEGIN
		SET @DS = 1.00
	END
	IF @DUR_IN = 'M' BEGIN
		SET @DS = 60.00
	END
	IF @DUR_IN = 'H' BEGIN
		SET @DS = 3600.00
	END

	INSERT INTO @RESULTS_TABLE
	SELECT
	 DAT.AGENT_FIRST_NAME
	,DAT.AGENT_MIDDLE_NAME
	,DAT.AGENT_LAST_NAME
	,DAT.CORPORATE_NAME
	,DAT.IDAGENT
	,DAT.CATS_ID
	,DAT.EMAIL_ADDRESS
	,DAT.SCHEDULE_DATE
	,DAT.INTERVAL_START
	,CAST(CONVERT(VARCHAR(10),CONVERT(DATE,DAT.SCHEDULE_DATE)) + ' ' + DAT.INTERVAL_START + ':00' AS DATETIME)	AS SCHEDULE_DATE_INT
	,DAT.CLIENT_ID
	,DAT.CLIENT_NAME
	,DAT.PROGRAM_ID
	,DAT.[PROGRAM_NAME]
	,DAT.SCHEDULED_TIME
	,DAT.CANCELLED_TIME
	,DAT.RESOURCE_NAME
	FROM
	(	SELECT	
		 APP.FIRSTNAME								AS AGENT_FIRST_NAME
		,APP.MIDDLINIT								AS AGENT_MIDDLE_NAME
		,APP.LASTNAME								AS AGENT_LAST_NAME
		,APP.CORPORATNAME							AS CORPORATE_NAME
		,SCH.IDAGENT								AS IDAGENT
		,APP.AGENTIDENTNUM							AS CATS_ID
		,APP.EMAIL									AS EMAIL_ADDRESS
		,CAST(SCH.SCHEDULE_DATE AS DATETIME)		AS SCHEDULE_DATE
		,CASE WHEN @INTERVAL = 'D' THEN '00:00'
			  WHEN @INTERVAL = 'H' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN 
						CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
					 ELSE
						CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
				END
			  WHEN @INTERVAL = 'T' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
				END
			  ELSE
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
				END
		 END	AS INTERVAL_START
		,SCH.CLIENT_ID																	AS CLIENT_ID
		,SCH.CLIENT_NAME																AS CLIENT_NAME
		,SCH.IDPROGR																	AS PROGRAM_ID
		,SCH.[PROGRAM_NAME]																AS [PROGRAM_NAME]
		,SUM(SCH.SCHEDULED_SECS) / @DS													AS SCHEDULED_TIME
		,SUM(SCH.CANCELLED_SECS) / @DS													AS CANCELLED_TIME
		,CASE WHEN ISNULL(APP.MIDDLINIT,'') = '' THEN
				CONCAT(APP.FIRSTNAME,' ',APP.LASTNAME)
			  ELSE
				CONCAT(APP.FIRSTNAME,' ',APP.MIDDLINIT,' ',APP.LASTNAME) END			AS RESOURCE_NAME

		--  SELECT *
		FROM
		(
			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0400) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0415) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0430) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0445) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0500) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0515) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0530) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0545) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0600) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0615) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0630) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0645) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0700) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0715) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0730) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0745) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0800) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0815) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0830) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0845) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0900) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0915) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0930) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0945) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1400) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1415) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1430) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1445) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1500) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1515) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1530) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1545) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1600) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1615) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1630) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1645) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1700) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1715) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1730) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1745) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1800) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1815) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1830) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1845) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1900) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1915) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1930) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1945) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL
																									--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<  BEGIN CANCELLED DATA <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0000) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0015) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0030) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0045) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0100) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0115) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0130) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0145) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0200) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0215) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0230) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0245) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0300) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0315) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0330) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0345) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0400) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0415) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0430) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0445) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0500) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0515) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0530) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0545) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0600) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0615) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0630) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0645) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0700) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0715) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0730) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0745) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0800) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0815) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0830) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0845) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0900) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0915) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0930) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0945) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1000) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1015) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1030) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1045) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1100) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1115) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1130) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1145) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1200) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1215) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1230) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1245) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1300) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1315) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1330) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1345) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1400) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1415) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1430) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1445) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1500) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1515) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1530) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1545) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1600) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1615) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1630) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1645) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1700) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1715) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1730) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1745) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1800) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1815) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1830) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1845) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1900) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1915) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1930) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1945) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2000) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2015) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2030) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2045) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2100) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2115) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2130) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2145) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2200) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2215) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2230) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2245) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2300) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2315) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2330) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2345) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
		) SCH
	
		LEFT JOIN	AGENTS					AGT ON SCH.IDAGENT	= AGT.ID
		LEFT JOIN	APPLICANT				APP ON AGT.EMAIL	= APP.EMAIL

		WHERE ( CAST(SCH.SCHEDULE_DATE AS DATETIME) >= @DTM_BEG AND CAST(SCH.SCHEDULE_DATE AS DATETIME) <  @DTM_END )
		  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(SCH.CLIENT_ID)  + ',',@CLIENT_ID)	> 0 )
		  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(SCH.IDPROGR)	+ ',',@PROGRAM_ID)	> 0 )

		GROUP BY
		 APP.FIRSTNAME
		,APP.MIDDLINIT
		,APP.LASTNAME
		,APP.CORPORATNAME
		,SCH.IDAGENT
		,APP.AGENTIDENTNUM
		,APP.EMAIL
		,CAST(SCH.SCHEDULE_DATE AS DATETIME)
		,CASE WHEN @INTERVAL = 'D' THEN '00:00'
			  WHEN @INTERVAL = 'H' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN 
						CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
					 ELSE
						CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
				END
			  WHEN @INTERVAL = 'T' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
				END
			  ELSE
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
				END
		 END
		,SCH.CLIENT_ID
		,SCH.CLIENT_NAME
		,SCH.IDPROGR
		,SCH.[PROGRAM_NAME]
		,CASE WHEN ISNULL(APP.MIDDLINIT,'') = '' THEN
				CONCAT(APP.FIRSTNAME,' ',APP.LASTNAME)
			  ELSE
				CONCAT(APP.FIRSTNAME,' ',APP.MIDDLINIT,' ',APP.LASTNAME) END
	) DAT

	RETURN 
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS_WITH_DATE_SCHEDULED]    Script Date: 2/20/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =======================================================================
-- Author:		ISAAC GUARDIOLA
-- Create date:	2017-09-05
-- Description:	FUNCTION TO RETURN SCHEDULE DATA BY AGENT BY INTERVAL.
--				INCLUDES PARAMETER TO ONLY INCLUDE DATA BASED ON WHEN
--				AGENT SCHEDULED THE TIME.
-- =======================================================================
CREATE FUNCTION [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS_WITH_DATE_SCHEDULED] 
(
	-- Add the parameters for the function here
	 @DTM_BEG		DATETIME
	,@DTM_END		DATETIME
	,@DTM_INS		DATETIME
	,@INTERVAL		VARCHAR(1) 
	,@DUR_IN		VARCHAR(1)
	,@CLIENT_ID		VARCHAR(3500)
	,@PROGRAM_ID	VARCHAR(3500)
)
RETURNS 
@RESULTS_TABLE TABLE 
(
	-- Add the column definitions for the TABLE variable here
	 AGENT_FIRST_NAME		VARCHAR(200)
	,AGENT_MIDDLE_NAME		VARCHAR(200)
	,AGENT_LAST_NAME		VARCHAR(200)
	,CORPORATE_NAME			VARCHAR(200)
	,IDAGENT				VARCHAR(50)
	,CATS_ID				VARCHAR(20)
	,EMAIL_ADDRESS			VARCHAR(200)
	,SCHEDULE_DATE			DATETIME
	,INTERVAL_START			CHAR(5)
	,SCHEDULE_DATE_INT		DATETIME
	,CLIENT_ID				VARCHAR(10)
	,CLIENT_NAME			VARCHAR(200)
	,PROGRAM_ID				VARCHAR(20)
	,[PROGRAM_NAME]			VARCHAR(200)
	,SCHEDULED_TIME			DECIMAL(10,2)
	,CANCELLED_TIME			DECIMAL(10,2)
	,RESOURCE_NAME			VARCHAR(500)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set

	SET @CLIENT_ID	= ',' + LTRIM(RTRIM(REPLACE(@CLIENT_ID	,'ALL','0'))) + ','
	SET @PROGRAM_ID	= ',' + LTRIM(RTRIM(REPLACE(@PROGRAM_ID	,'ALL','0'))) + ','

	--==================================
	--	SET AMOUNT TO DIVIDE BY:
	--==================================
	DECLARE @DS DECIMAL(10,2)
	IF @DUR_IN = 'S' BEGIN
		SET @DS = 1.00
	END
	IF @DUR_IN = 'M' BEGIN
		SET @DS = 60.00
	END
	IF @DUR_IN = 'H' BEGIN
		SET @DS = 3600.00
	END

	INSERT INTO @RESULTS_TABLE
	SELECT
	 DAT.AGENT_FIRST_NAME
	,DAT.AGENT_MIDDLE_NAME
	,DAT.AGENT_LAST_NAME
	,DAT.CORPORATE_NAME
	,DAT.IDAGENT
	,DAT.CATS_ID
	,DAT.EMAIL_ADDRESS
	,DAT.SCHEDULE_DATE
	,DAT.INTERVAL_START
	,CAST(CONVERT(VARCHAR(10),CONVERT(DATE,DAT.SCHEDULE_DATE)) + ' ' + DAT.INTERVAL_START + ':00' AS DATETIME)	AS SCHEDULE_DATE_INT
	,DAT.CLIENT_ID
	,DAT.CLIENT_NAME
	,DAT.PROGRAM_ID
	,DAT.[PROGRAM_NAME]
	,DAT.SCHEDULED_TIME
	,DAT.CANCELLED_TIME
	,DAT.RESOURCE_NAME
	FROM
	(	SELECT	
		 APP.FIRSTNAME								AS AGENT_FIRST_NAME
		,APP.MIDDLINIT								AS AGENT_MIDDLE_NAME
		,APP.LASTNAME								AS AGENT_LAST_NAME
		,APP.CORPORATNAME							AS CORPORATE_NAME
		,SCH.IDAGENT								AS IDAGENT
		,APP.AGENTIDENTNUM							AS CATS_ID
		,APP.EMAIL									AS EMAIL_ADDRESS
		,CAST(SCH.SCHEDULE_DATE AS DATETIME)		AS SCHEDULE_DATE
		,CASE WHEN @INTERVAL = 'D' THEN '00:00'
			  WHEN @INTERVAL = 'H' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN 
						CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
					 ELSE
						CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
				END
			  WHEN @INTERVAL = 'T' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
				END
			  ELSE
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
				END
		 END	AS INTERVAL_START
		,SCH.CLIENT_ID																	AS CLIENT_ID
		,SCH.CLIENT_NAME																AS CLIENT_NAME
		,SCH.IDPROGR																	AS PROGRAM_ID
		,SCH.[PROGRAM_NAME]																AS [PROGRAM_NAME]
		,SUM(SCH.SCHEDULED_SECS) / @DS													AS SCHEDULED_TIME
		,SUM(SCH.CANCELLED_SECS) / @DS													AS CANCELLED_TIME
		,CASE WHEN ISNULL(APP.MIDDLINIT,'') = '' THEN
				CONCAT(APP.FIRSTNAME,' ',APP.LASTNAME)
			  ELSE
				CONCAT(APP.FIRSTNAME,' ',APP.MIDDLINIT,' ',APP.LASTNAME) END			AS RESOURCE_NAME

		--  SELECT *
		FROM
		(
			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   ) 
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0400) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0415) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0430) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0445) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0500) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0515) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0530) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0545) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0600) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0615) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0630) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0645) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0700) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0715) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0730) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0745) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0800) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0815) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0830) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0845) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0900) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0915) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0930) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F0945) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1400) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1415) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1430) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1445) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1500) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1515) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1530) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1545) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1600) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1615) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1630) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1645) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1700) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1715) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1730) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1745) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1800) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1815) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1830) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1845) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1900) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1915) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1930) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F1945) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2000) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2015) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2030) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2045) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2100) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2115) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2130) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2145) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2200) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2215) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2230) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2245) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2300) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2315) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2330) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN SUM(S.F2345) > 0 THEN 900 ELSE 0 END						AS SCHEDULED_SECS
			,0.00																AS CANCELLED_SECS
			FROM  SCHTIMES_AGENT	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL
																									--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<  BEGIN CANCELLED DATA <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0000) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0015) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0030) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0045) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0100) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0115) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0130) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0145) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0200) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0215) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0230) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0245) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0300) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0315) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0330) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0345) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0400) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0415) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0430) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0445) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0500) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0515) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0530) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0545) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0600) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0615) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0630) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0645) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0700) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0715) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0730) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0745) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0800) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0815) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0830) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0845) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0900) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0915) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0930) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F0945) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1000) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1015) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1030) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1045) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1100) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1115) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1130) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1145) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1200) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1215) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1230) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1245) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1300) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1315) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1330) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1345) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1400) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1415) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1430) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1445) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1500) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1515) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1530) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1545) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1600) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1615) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1630) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1645) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1700) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1715) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1730) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1745) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1800) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1815) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1830) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1845) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1900) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1915) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1930) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F1945) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2000) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2015) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2030) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2045) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2100) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2115) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2130) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2145) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2200) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2215) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2230) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2245) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:00:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2300) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:15:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2315) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:30:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2330) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]

			UNION ALL

			SELECT
			 S.IDAGENT															AS IDAGENT
			,S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:45:00' AS DATETIME)	AS INTERVAL_START
			,0.00																AS SCHEDULED_SECS
			,CASE WHEN SUM(S.F2345) > 0 THEN 900 ELSE 0 END						AS CANCELLED_SECS
			FROM  SCHTIMES_CANCEL	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( S.DATEINS >= @DTM_INS															   )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			  AND S.PMREQMOVE <> 'Y'
			GROUP BY
			 S.IDAGENT
			,S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
		) SCH
	
		LEFT JOIN	AGENTS					AGT ON SCH.IDAGENT	= AGT.ID
		LEFT JOIN	APPLICANT				APP ON AGT.EMAIL	= APP.EMAIL

		WHERE ( CAST(SCH.SCHEDULE_DATE AS DATETIME) >= @DTM_BEG AND CAST(SCH.SCHEDULE_DATE AS DATETIME) <  @DTM_END )
		  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(SCH.CLIENT_ID)  + ',',@CLIENT_ID)	> 0 )
		  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(SCH.IDPROGR)	+ ',',@PROGRAM_ID)	> 0 )

		GROUP BY
		 APP.FIRSTNAME
		,APP.MIDDLINIT
		,APP.LASTNAME
		,APP.CORPORATNAME
		,SCH.IDAGENT
		,APP.AGENTIDENTNUM
		,APP.EMAIL
		,CAST(SCH.SCHEDULE_DATE AS DATETIME)
		,CASE WHEN @INTERVAL = 'D' THEN '00:00'
			  WHEN @INTERVAL = 'H' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN 
						CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
					 ELSE
						CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
				END
			  WHEN @INTERVAL = 'T' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
				END
			  ELSE
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
				END
		 END
		,SCH.CLIENT_ID
		,SCH.CLIENT_NAME
		,SCH.IDPROGR
		,SCH.[PROGRAM_NAME]
		,CASE WHEN ISNULL(APP.MIDDLINIT,'') = '' THEN
				CONCAT(APP.FIRSTNAME,' ',APP.LASTNAME)
			  ELSE
				CONCAT(APP.FIRSTNAME,' ',APP.MIDDLINIT,' ',APP.LASTNAME) END
	) DAT

	RETURN 
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_SCHEDULE_TYPE_DATA_BY_INTERVALS]    Script Date: 2/20/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =======================================================================
-- Author:		ISAAC GUARDIOLA
-- Create date:	2017-08-29
-- Description:	FUNCTION TO RETURN SCHEDULE TYPE DATA BY INTERVAL
-- =======================================================================
CREATE FUNCTION [dbo].[TVF_WSOL_SCHEDULE_TYPE_DATA_BY_INTERVALS] 
(
	-- Add the parameters for the function here
	 @DTM_BEG		DATETIME
	,@DTM_END		DATETIME
	,@INTERVAL		VARCHAR(1) 
	,@DUR_IN		VARCHAR(1)
	,@CLIENT_ID		VARCHAR(3500)
	,@PROGRAM_ID	VARCHAR(3500)
)
RETURNS 
@RESULTS_TABLE TABLE 
(
	-- Add the column definitions for the TABLE variable here
	 SCHEDULE_DATE				DATETIME
	,INTERVAL_START				CHAR(5)
	,SCHEDULE_DATE_INT			DATETIME
	,CLIENT_ID					VARCHAR(50)
	,CLIENT_NAME				VARCHAR(200)
	,PROGRAM_ID					VARCHAR(50)
	,[PROGRAM_NAME]				VARCHAR(200)
	,SCHEDULED_TIME_ORIGINAL	DECIMAL(10,2)
	,SCHEDULED_TIME_ADDITIONAL	DECIMAL(10,2)
	,REDUCED_TIME_CLIENT		DECIMAL(10,2)
	,REDUCED_TIME_WSOL			DECIMAL(10,2)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set

	SET @CLIENT_ID	= ',' + LTRIM(RTRIM(REPLACE(@CLIENT_ID	,'ALL','0'))) + ','
	SET @PROGRAM_ID	= ',' + LTRIM(RTRIM(REPLACE(@PROGRAM_ID	,'ALL','0'))) + ','

	--==================================
	--	SET AMOUNT TO DIVIDE BY:
	--==================================
	DECLARE @DS DECIMAL(10,2)
	IF @DUR_IN = 'S' BEGIN
		SET @DS = 1.00
	END
	IF @DUR_IN = 'M' BEGIN
		SET @DS = 60.00
	END
	IF @DUR_IN = 'H' BEGIN
		SET @DS = 3600.00
	END
	;
	WITH SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS
	(
	 DATESCH
	,IDPROGR
	,LIMITHR
	,F0000,F0015,F0030,F0045
	,F0100,F0115,F0130,F0145
	,F0200,F0215,F0230,F0245
	,F0300,F0315,F0330,F0345
	,F0400,F0415,F0430,F0445
	,F0500,F0515,F0530,F0545
	,F0600,F0615,F0630,F0645
	,F0700,F0715,F0730,F0745
	,F0800,F0815,F0830,F0845
	,F0900,F0915,F0930,F0945
	,F1000,F1015,F1030,F1045
	,F1100,F1115,F1130,F1145
	,F1200,F1215,F1230,F1245
	,F1300,F1315,F1330,F1345
	,F1400,F1415,F1430,F1445
	,F1500,F1515,F1530,F1545
	,F1600,F1615,F1630,F1645
	,F1700,F1715,F1730,F1745
	,F1800,F1815,F1830,F1845
	,F1900,F1915,F1930,F1945
	,F2000,F2015,F2030,F2045
	,F2100,F2115,F2130,F2145
	,F2200,F2215,F2230,F2245
	,F2300,F2315,F2330,F2345
	,DATEINS
	,DATEUPD
	,LIMITHOURSUNTIL
	,TYPEOFSCHEDULE
	) AS
	(
	SELECT
	 DATESCH
	,IDPROGR
	,LIMITHR
	,F0000,F0015,F0030,F0045
	,F0100,F0115,F0130,F0145
	,F0200,F0215,F0230,F0245
	,F0300,F0315,F0330,F0345
	,F0400,F0415,F0430,F0445
	,F0500,F0515,F0530,F0545
	,F0600,F0615,F0630,F0645
	,F0700,F0715,F0730,F0745	
	,F0800,F0815,F0830,F0845
	,F0900,F0915,F0930,F0945
	,F1000,F1015,F1030,F1045
	,F1100,F1115,F1130,F1145
	,F1200,F1215,F1230,F1245
	,F1300,F1315,F1330,F1345
	,F1400,F1415,F1430,F1445
	,F1500,F1515,F1530,F1545
	,F1600,F1615,F1630,F1645
	,F1700,F1715,F1730,F1745
	,F1800,F1815,F1830,F1845
	,F1900,F1915,F1930,F1945
	,F2000,F2015,F2030,F2045
	,F2100,F2115,F2130,F2145
	,F2200,F2215,F2230,F2245
	,F2300,F2315,F2330,F2345
	,MAX(DATEINS)			AS DATEINS
	,MAX(DATEUPD)			AS DATEUPD
	,MAX(LIMITHOURSUNTIL)	AS LIMITHOURSUNTIL
	,TYPEOFSCHEDULE
	FROM SCHTIMES_TL_SCHEDULE_TYPE
	WHERE ( CAST(DATESCH AS DATETIME) >= @DTM_BEG AND CAST(DATESCH AS DATETIME) < @DTM_END )
	  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(IDPROGR) + ',',@PROGRAM_ID) > 0   )
	GROUP BY
	 DATESCH
	,IDPROGR
	,LIMITHR
	,F0000,F0015,F0030,F0045
	,F0100,F0115,F0130,F0145
	,F0200,F0215,F0230,F0245
	,F0300,F0315,F0330,F0345
	,F0400,F0415,F0430,F0445
	,F0500,F0515,F0530,F0545
	,F0600,F0615,F0630,F0645
	,F0700,F0715,F0730,F0745
	,F0800,F0815,F0830,F0845
	,F0900,F0915,F0930,F0945
	,F1000,F1015,F1030,F1045
	,F1100,F1115,F1130,F1145
	,F1200,F1215,F1230,F1245
	,F1300,F1315,F1330,F1345
	,F1400,F1415,F1430,F1445
	,F1500,F1515,F1530,F1545
	,F1600,F1615,F1630,F1645
	,F1700,F1715,F1730,F1745
	,F1800,F1815,F1830,F1845
	,F1900,F1915,F1930,F1945
	,F2000,F2015,F2030,F2045
	,F2100,F2115,F2130,F2145
	,F2200,F2215,F2230,F2245
	,F2300,F2315,F2330,F2345
	,TYPEOFSCHEDULE
	)

	INSERT INTO @RESULTS_TABLE
	SELECT
	 DAT.SCHEDULE_DATE
	,DAT.INTERVAL_START
	,CAST(CONVERT(VARCHAR(10),CONVERT(DATE,DAT.SCHEDULE_DATE)) + ' ' + DAT.INTERVAL_START + ':00' AS DATETIME)	AS SCHEDULE_DATE_INT
	,DAT.CLIENT_ID
	,DAT.CLIENT_NAME
	,DAT.PROGRAM_ID
	,DAT.[PROGRAM_NAME]
	,DAT.SCHEDULED_TIME_ORIGINAL
	,DAT.SCHEDULED_TIME_ADDITIONAL
	,DAT.REDUCED_TIME_CLIENT
	,DAT.REDUCED_TIME_WSOL
	FROM
	(	SELECT	
		 CAST(SCH.SCHEDULE_DATE AS DATETIME)		AS SCHEDULE_DATE
		,CASE WHEN @INTERVAL = 'D' THEN '00:00'
			  WHEN @INTERVAL = 'H' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN 
						CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
					 ELSE
						CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
				END
			  WHEN @INTERVAL = 'T' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
				END
			  ELSE
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
				END
		 END											AS INTERVAL_START
		,SCH.CLIENT_ID									AS CLIENT_ID
		,SCH.CLIENT_NAME								AS CLIENT_NAME
		,SCH.IDPROGR									AS PROGRAM_ID
		,SCH.[PROGRAM_NAME]								AS [PROGRAM_NAME]
		,SUM(SCH.ORIGINAL_SCHEDULED_SECS) / @DS			AS SCHEDULED_TIME_ORIGINAL
		,SUM(SCH.ADDITIONAL_SCHEDULED_SECS) / @DS		AS SCHEDULED_TIME_ADDITIONAL
		,SUM(SCH.CLIENT_REDUCED_SECS) / @DS				AS REDUCED_TIME_CLIENT
		,SUM(SCH.WSOL_REDUCED_SECS) / @DS				AS REDUCED_TIME_WSOL

		--  SELECT *
		FROM
		(
			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0000) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0000) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0015) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0015) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0030) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0030) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0045) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0045) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0100) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0100) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0115) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0115) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0130) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0130) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0145) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0145) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0200) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0200) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0215) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0215) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0230) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0230) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0245) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0245) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0300) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0300) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0315) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0315) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0330) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0330) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0345) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0345) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0400) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0400) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0415) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0415) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0430) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0430) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0445) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0445) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0500) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0500) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0515) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0515) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0530) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0530) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0545) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0545) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0600) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0600) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0615) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0615) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0630) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0630) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0645) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0645) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0700) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0700) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0715) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0715) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0730) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0730) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0745) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0745) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0800) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0800) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0815) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0815) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0830) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0830) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0845) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0845) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0900) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0900) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0915) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0915) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0930) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0930) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F0945) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F0945) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1000) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1000) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1015) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1015) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1030) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1030) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1045) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1045) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1100) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1100) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1115) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1115) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1130) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1130) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1145) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1145) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1200) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1200) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1215) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1215) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1230) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1230) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1245) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1245) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1300) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1300) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1315) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1315) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1330) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1330) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1345) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1345) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1400) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1400) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1415) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1415) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1430) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1430) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1445) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1445) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1500) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1500) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1515) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1515) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1530) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1530) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1545) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1545) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1600) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1600) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1615) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1615) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1630) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1630) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1645) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1645) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1700) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1700) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1715) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1715) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1730) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1730) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1745) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1745) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1800) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1800) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1815) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1815) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1830) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1830) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1845) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1845) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1900) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1900) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1915) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1915) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1930) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1930) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F1945) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F1945) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2000) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2000) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2015) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2015) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2030) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2030) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2045) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2045) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2100) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2100) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2115) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2115) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2130) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2130) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2145) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2145) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2200) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2200) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2215) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2215) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2230) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2230) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2245) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2245) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:00:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2300) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2300) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:15:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2315) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2315) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:30:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2330) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2330) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:45:00' AS DATETIME)	AS INTERVAL_START
			,CASE WHEN S.TYPEOFSCHEDULE = 'Original' THEN
					SUM(S.F2345) * 900
				  ELSE 0 END													AS ORIGINAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFSCHEDULE = 'Additional' THEN
					SUM(S.F2345) * 900
				  ELSE 0 END													AS ADDITIONAL_SCHEDULED_SECS
			,0																	AS CLIENT_REDUCED_SECS
			,0																	AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_SCHEDULE_TYPE_NO_DUPS	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFSCHEDULE

			UNION ALL																				-- <<<<<<<< REDUCTIONS BEGIN HERE

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0000) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0000) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0015) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0015) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0030) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0030) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 00:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0045) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0045) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE
			
			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0100) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0100) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0115) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0115) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0130) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0130) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 01:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0145) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0145) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0200) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0200) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0215) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0215) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0230) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0230) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 02:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0245) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0245) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0300) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0300) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0315) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0315) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0330) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0330) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 03:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0345) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0345) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0400) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0400) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0415) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0415) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0430) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0430) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 04:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0445) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0445) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0500) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0500) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0515) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0515) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0530) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0530) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 05:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0545) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0545) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0600) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0600) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0615) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0615) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0630) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0630) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 06:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0645) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0645) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0700) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0700) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0715) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0715) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0730) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0730) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 07:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0745) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0745) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0800) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0800) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0815) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0815) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0830) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0830) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 08:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0845) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0845) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0900) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0900) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0915) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0915) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0930) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0930) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 09:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F0945) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F0945) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1000) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1000) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1015) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1015) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1030) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1030) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 10:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1045) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1045) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1100) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1100) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1115) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1115) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1130) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1130) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 11:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1145) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1145) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1200) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1200) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1215) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1215) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1230) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1230) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 12:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1245) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1245) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1300) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1300) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1315) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1315) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1330) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1330) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 13:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1345) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1345) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1400) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1400) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1415) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1415) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1430) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1430) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 14:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1445) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1445) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1500) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1500) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1515) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1515) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1530) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1530) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 15:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1545) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1545) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1600) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1600) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1615) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1615) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1630) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1630) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 16:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1645) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1645) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1700) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1700) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1715) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1715) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1730) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1730) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 17:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1745) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1745) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1800) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1800) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1815) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1815) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1830) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1830) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 18:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1845) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1845) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1900) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1900) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1915) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1915) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1930) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1930) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 19:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F1945) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F1945) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2000) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2000) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2015) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2015) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2030) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2030) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 20:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2045) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2045) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2100) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2100) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2115) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2115) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2130) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2130) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 21:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2145) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2145) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2200) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2200) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2215) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2215) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2230) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2230) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 22:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2245) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2245) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:00:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2300) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2300) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:15:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2315) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2315) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:30:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2330) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2330) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE

			UNION ALL

			SELECT
			 S.DATESCH															AS SCHEDULE_DATE
			,S.IDPROGR															AS IDPROGR
			,C.ID																AS CLIENT_ID
			,C.[NAME]															AS CLIENT_NAME
			,P.[NAME]															AS [PROGRAM_NAME]
			,CAST(CONVERT(VARCHAR(10), S.DATESCH) + ' 23:45:00' AS DATETIME)	AS INTERVAL_START
			,0																	AS ORIGINAL_SCHEDULED_SECS
			,0																	AS ADDITIONAL_SCHEDULED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'Client' THEN
					SUM(S.F2345) * 900
				  ELSE 0 END													AS CLIENT_REDUCED_SECS
			,CASE WHEN S.TYPEOFRECUCE = 'WSOL' THEN
					SUM(S.F2345) * 900
				  ELSE 0 END													AS WSOL_REDUCED_SECS
			FROM  SCHTIMES_TL_REDUCE	S
			LEFT JOIN PROGRAM		P ON S.IDPROGR	= P.ID
			LEFT JOIN CLIENT		C ON P.IDCLIENT = C.ID
			WHERE P.ISSHOW = 1
			  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
			  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(C.ID)	   + ',',@CLIENT_ID) > 0   ) --C.ID = @CLIENT_ID
			  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDPROGR) + ',',@PROGRAM_ID)> 0   ) -- P.ID = @PROGRAM_ID
			GROUP BY
			 S.DATESCH
			,S.IDPROGR
			,C.ID
			,C.[NAME]
			,P.[NAME]
			,S.TYPEOFRECUCE
		) SCH
	
		WHERE ( CAST(SCH.SCHEDULE_DATE AS DATETIME) >= @DTM_BEG AND CAST(SCH.SCHEDULE_DATE AS DATETIME) <  @DTM_END )
		  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(SCH.CLIENT_ID)  + ',',@CLIENT_ID)	> 0 )
		  AND ( @PROGRAM_ID IN (',0,') OR CHARINDEX(',' + RTRIM(SCH.IDPROGR)	+ ',',@PROGRAM_ID)	> 0 )

		GROUP BY
		 CAST(SCH.SCHEDULE_DATE AS DATETIME)
		,CASE WHEN @INTERVAL = 'D' THEN '00:00'
			  WHEN @INTERVAL = 'H' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN 
						CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
					 ELSE
						CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
				END
			  WHEN @INTERVAL = 'T' THEN
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (0,15)  THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) IN (30,45) THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':30')
						END
				END
			  ELSE
				CASE WHEN CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)) < 10 THEN
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT('0',CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
					 ELSE
						CASE WHEN CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)) = 0 THEN
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':00')
							 ELSE
								CONCAT(CONVERT(VARCHAR(2),DATEPART(HH,SCH.INTERVAL_START)),':',CONVERT(VARCHAR(2),DATEPART(MI,SCH.INTERVAL_START)))
						END
				END
		 END
		,SCH.CLIENT_ID
		,SCH.CLIENT_NAME
		,SCH.IDPROGR
		,SCH.[PROGRAM_NAME]
	) DAT

	RETURN 
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_WORK_DATA_BY_INTERVALS]    Script Date: 2/20/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =======================================================================
-- Author:		ISAAC GUARDIOLA
-- Create date:	2017-07-29
-- Description:	FUNCTION TO RETURN WORK DATA BY AGENT BY INTERVAL
-- =======================================================================
CREATE FUNCTION [dbo].[TVF_WSOL_WORK_DATA_BY_INTERVALS] 
(
	-- Add the parameters for the function here
	 @DTM_BEG		DATETIME
	,@DTM_END		DATETIME
	,@INTERVAL		VARCHAR(1) 
	,@DUR_IN		VARCHAR(1)
	,@CLIENT_ID		VARCHAR(3500)
	,@PROGRAM_ID	VARCHAR(3500)
)
RETURNS 
@RESULTS_TABLE TABLE 
(
	-- Add the column definitions for the TABLE variable here
	 DATE_TIME				DATETIME
	,HOUR_INTERVAL			VARCHAR(2)
	,CLIENT_ID				VARCHAR(20)
	,SCHEDULER_ACL_NAME		VARCHAR(200)
	,RESOURCE_NAME			VARCHAR(400)
	,INVOICE_MAP_KEY		VARCHAR(150)
	,LOGGED_IN_TIME			DECIMAL(10,2)
	,PRODUCTIVE_TIME		DECIMAL(10,2)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set

	SET @CLIENT_ID	= ',' + LTRIM(RTRIM(REPLACE(@CLIENT_ID	,'ALL','0'))) + ','
	SET @PROGRAM_ID	= ',' + LTRIM(RTRIM(REPLACE(@PROGRAM_ID	,'ALL','0'))) + ','

	--==================================
	--	SET AMOUNT TO DIVIDE BY:
	--==================================
	DECLARE @DS DECIMAL(10,2)
	IF @DUR_IN = 'S' BEGIN
		SET @DS = 1.00
	END
	IF @DUR_IN = 'M' BEGIN
		SET @DS = 60.00
	END
	IF @DUR_IN = 'H' BEGIN
		SET @DS = 3600.00
	END

	INSERT INTO @RESULTS_TABLE
	SELECT
	 CASE WHEN @INTERVAL = 'D' THEN
			CAST(CONVERT(DATE, DAT.DATE_TIME) AS DATETIME)
		  ELSE
			DAT.DATE_TIME
	 END								AS DATE_TIME
	,CASE WHEN @INTERVAL = 'D' THEN
			'0'
		  ELSE
			DAT.HOUR_INTERVAL
	 END								AS HOUR_INTERVAL
	,DAT.CLIENT_ID
	,DAT.SCHEDULER_ACL_NAME
	,DAT.RESOURCE_NAME
	,DAT.INVOICE_MAP_KEY
	,SUM(DAT.LOGGED_IN_TIME)  / @DS		AS LOGGED_IN_TIME
	,SUM(DAT.PRODUCTIVE_TIME) / @DS		AS PRODUCTIVE_TIME
	FROM
	(	
		-- <<<<< APFM >>>>> --
		SELECT
		 INV.[DATETIME]						AS DATE_TIME
		,INV.HOUR_INTERVAL					AS HOUR_INTERVAL
		,141	/* APFM */					AS CLIENT_ID
		,CASE WHEN INV.SCHEDULER_ACL_NAME = 'APFM Standard Agents R2' THEN 'APFM Standard Agents'
			  ELSE INV.SCHEDULER_ACL_NAME
		 END								AS SCHEDULER_ACL_NAME
		,INV.FF_AGENT_NAME					AS RESOURCE_NAME
		,INV.EMPLOYEE_ID					AS INVOICE_MAP_KEY
		,SUM(INV.LOGGED_IN_DUR)				AS LOGGED_IN_TIME
		,SUM(INV.AUTHORIZED)				AS PRODUCTIVE_TIME
		FROM WSOL_TB_IMPORTS_APFM_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		GROUP BY
		 INV.[DATETIME]						--AS DATE_TIME
		,INV.HOUR_INTERVAL					--AS HOUR_INTERVAL
		,CASE WHEN INV.SCHEDULER_ACL_NAME = 'APFM Standard Agents R2' THEN 'APFM Standard Agents'
			  ELSE INV.SCHEDULER_ACL_NAME
		 END								--AS SCHEDULER_ACL_NAME
		,INV.FF_AGENT_NAME					--AS AGENT_NAME
		,INV.EMPLOYEE_ID					--AS INVOICE_MAP_KEY
		
		UNION ALL
		
		-- <<<<< DATALOT >>>>> --
		SELECT
		 DATEADD(HH,-1,INV.[DATETIME])													AS DATE_TIME
		,CAST(INV.HOUR_INTERVAL AS INT) - 1												AS HOUR_INTERVAL
		,146	/* DATALOT */															AS CLIENT_ID
		,CASE WHEN INV.ID_EXT = 'DLS' THEN 'Datalot Standard Agents'
			  WHEN INV.ID_EXT = 'DLR' THEN 'Datalot Resource Agents'
			  ELSE INV.SCHEDULER_ACL_NAME
		 END																			AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME																AS RESOURCE_NAME
		,INV.FF_AGENT_ID																AS INVOICE_MAP_KEY
		,(SUM(INV.ONLINE_TIME) + SUM(INV.WRAP_ADJ_TIME)) * 60.00						AS LOGGED_IN_TIME
		,(SUM(INV.CONNECTED_TIME) + SUM(INV.WRAP_TIME) + SUM(INV.WAITING_TIME)) * 60.00	AS PRODUCTIVE_TIME
		FROM YZ_TB_IMPORTS_DATALOT_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		GROUP BY
		 DATEADD(HH,-1,INV.[DATETIME])											--AS DATE_TIME
		,CAST(INV.HOUR_INTERVAL AS INT) - 1										--AS HOUR_INTERVAL
		,CASE WHEN INV.ID_EXT = 'DLS' THEN 'Datalot Standard Agents'
			  WHEN INV.ID_EXT = 'DLR' THEN 'Datalot Resource Agents'
			  ELSE INV.SCHEDULER_ACL_NAME
		 END																	--AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME														--AS RESOURCE_NAME
		,INV.FF_AGENT_ID														--AS INVOICE_MAP_KEY

		UNION ALL

		-- <<<<< HUMACH >>>>> --
		SELECT
		 INV.[DATETIME]																AS DATE_TIME
		,INV.HOUR_INTERVAL															AS HOUR_INTERVAL
		,CASE WHEN INV.FF_CUSTOMER_ID = 177 THEN 32		/* ASURION */
			  WHEN INV.FF_CUSTOMER_ID = 190 THEN 154	/* i9 SPORTS */
		 END																		AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME														AS SCHEDULER_ACL_NAME
		,CASE WHEN CHARINDEX('_',INV.RESOURCE_NAME) > 0 THEN
				LEFT(INV.RESOURCE_NAME,CHARINDEX('_',INV.RESOURCE_NAME) - 1)
			  ELSE
				INV.RESOURCE_NAME
		 END																		AS RESOURCE_NAME
		,CASE WHEN CHARINDEX('_',INV.FF_AGENT_LAST_NAME) > 0 THEN
				LOWER(LEFT(INV.FF_AGENT_FIRST_NAME,1)) + LOWER(LEFT(INV.FF_AGENT_LAST_NAME,CHARINDEX('_',INV.FF_AGENT_LAST_NAME) - 1)) + RIGHT(INV.FF_AGENT_LAST_NAME,3)
			  ELSE
				LOWER(LEFT(INV.FF_AGENT_FIRST_NAME,1)) + LOWER(INV.FF_AGENT_LAST_NAME)
		 END																		AS INVOICE_MAP_KEY
		,SUM(INV.LOGGED_IN_SECS)													AS LOGGED_IN_TIME
		,SUM(INV.CPROD)																AS PRODUCTIVE_TIME
		FROM WSOL_TB_IMPORTS_HUMACH_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		  AND ISNULL(INV.INVOICE_ID,'') <> ''
		GROUP BY
		 INV.[DATETIME]																--AS DATE_TIME
		,INV.HOUR_INTERVAL															--AS HOUR_INTERVAL
		,INV.FF_CUSTOMER_ID															--AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME														--AS SCHEDULER_ACL_NAME
		,CASE WHEN CHARINDEX('_',INV.RESOURCE_NAME) > 0 THEN
				LEFT(INV.RESOURCE_NAME,CHARINDEX('_',INV.RESOURCE_NAME) - 1)
			  ELSE
				INV.RESOURCE_NAME
		 END																		--AS RESOURCE_NAME
		,CASE WHEN CHARINDEX('_',INV.FF_AGENT_LAST_NAME) > 0 THEN
				LOWER(LEFT(INV.FF_AGENT_FIRST_NAME,1)) + LOWER(LEFT(INV.FF_AGENT_LAST_NAME,CHARINDEX('_',INV.FF_AGENT_LAST_NAME) - 1)) + RIGHT(INV.FF_AGENT_LAST_NAME,3)
			  ELSE
				LOWER(LEFT(INV.FF_AGENT_FIRST_NAME,1)) + LOWER(INV.FF_AGENT_LAST_NAME)
		 END																		--AS INVOICE_MAP_KEY

		UNION ALL

		-- <<<<< BRIGHT_PATTERN >>>>> --
		SELECT
		 INV.[DATETIME]																AS DATE_TIME
		,INV.HOUR_INTERVAL															AS HOUR_INTERVAL
		,CASE WHEN INV.FF_TEAM = 'Asurion Agents'   THEN 32		/* ASURION */
			  WHEN INV.FF_TEAM = 'i9 Sports Agents' THEN 154	/* i9 SPORTS */
		 END																		AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME														AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME															AS RESOURCE_NAME
		,INV.EMPLOYEE_ID															AS INVOICE_MAP_KEY
		,SUM(INV.LOGGED_IN_TIME)													AS LOGGED_IN_TIME
		,SUM(INV.CPROD)																AS PRODUCTIVE_TIME
		-- SELECT *
		FROM WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		  AND ISNULL(INV.INVOICE_ID,'') <> ''
		GROUP BY
		 INV.[DATETIME]																--AS DATE_TIME
		,INV.HOUR_INTERVAL															--AS HOUR_INTERVAL
		,INV.FF_TEAM																--AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME														--AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME															--AS RESOURCE_NAME
		,INV.EMPLOYEE_ID															--AS INVOICE_MAP_KEY

		UNION ALL

		-- <<<<< GAR >>>>> --
		SELECT
		 INV.[DATETIME]						AS DATE_TIME
		,INV.HOUR_INTERVAL					AS HOUR_INTERVAL
		,97		/* GAR */					AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME				AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					AS RESOURCE_NAME
		,INV.FF_AGENT_NAME					AS INVOICE_MAP_KEY
		,SUM(INV.LOGIN_TIME)				AS LOGGED_IN_TIME
		,SUM(INV.CPROD)						AS PRODUCTIVE_TIME
		--SELECT *
		FROM WSOL_TB_IMPORTS_GAR_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		GROUP BY
		 INV.[DATETIME]						--AS DATE_TIME
		,INV.HOUR_INTERVAL					--AS HOUR_INTERVAL
		,INV.SCHEDULER_ACL_NAME				--AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					--AS RESOURCE_NAME
		,INV.FF_AGENT_NAME					--AS INVOICE_MAP_KEY

		UNION ALL

		-- <<<<< WORLD VENTURES >>>>> --
		SELECT
		 INV.[DATETIME]						AS DATE_TIME
		,INV.HOUR_INTERVAL					AS HOUR_INTERVAL
		,68		/* WORLD VENTURES */		AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME				AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					AS RESOURCE_NAME
		,INV.FF_AGENT_NAME					AS INVOICE_MAP_KEY
		,SUM(INV.LOGIN_TIME)				AS LOGGED_IN_TIME
		,SUM(INV.CPROD)						AS PRODUCTIVE_TIME
		--SELECT *
		FROM WSOL_TB_IMPORTS_WV_INCONTACT_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		GROUP BY
		 INV.[DATETIME]						--AS DATE_TIME
		,INV.HOUR_INTERVAL					--AS HOUR_INTERVAL
		,INV.SCHEDULER_ACL_NAME				--AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					--AS RESOURCE_NAME
		,INV.FF_AGENT_NAME					--AS INVOICE_MAP_KEY 

		UNION ALL

		-- <<<<< STUBHUB >>>>> --
		SELECT
		 INV.[DATETIME]													AS DATE_TIME
		,INV.HOUR_INTERVAL												AS HOUR_INTERVAL
		,132	/* STUBHUB */											AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME											AS SCHEDULER_ACL_NAME
		,LEFT(INV.FF_AGENT_NAME, CHARINDEX('(',INV.FF_AGENT_NAME) - 2)	AS RESOURCE_NAME
		,INV.FF_USER_NAME												AS INVOICE_MAP_KEY
		,SUM(INV.LOGGED_IN_TIME)										AS LOGGED_IN_TIME
		,SUM(INV.CPROD)													AS PRODUCTIVE_TIME					
		--SELECT *
		FROM YZ_TB_IMPORTS_STUBHUB_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		GROUP BY
		 INV.[DATETIME]													--AS DATE_TIME
		,INV.HOUR_INTERVAL												--AS HOUR_INTERVAL
		,INV.SCHEDULER_ACL_NAME											--AS SCHEDULER_ACL_NAME
		,LEFT(INV.FF_AGENT_NAME, CHARINDEX('(',INV.FF_AGENT_NAME) - 2)	--AS RESOURCE_NAME
		,INV.FF_USER_NAME												--AS INVOICE_MAP_KEY

		UNION ALL

		-- <<<<< SABRE >>>>> --
		SELECT
		 INV.[DATETIME]					AS DATE_TIME
		,DATEPART(HOUR,INV.[DATETIME])	AS HOUR_INTERVAL
		,143	/* SABRE */				AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME			AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME				AS RESOURCE_NAME
		,INV.FF_USERNAME				AS INVOICE_MAP_KEY
		,SUM(INV.STAFFED_TIME)			AS LOGGED_IN_TIME
		,SUM(INV.CPROD)					AS PRODUCTIVE_TIME
		--SELECT *
		FROM WSOL_TB_IMPORTS_SABRE_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		GROUP BY
		 INV.[DATETIME]					--AS DATE_TIME
		,DATEPART(HOUR,INV.[DATETIME])	--AS HOUR_INTERVAL
		,INV.SCHEDULER_ACL_NAME			--AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME				--AS RESOURCE_NAME
		,INV.FF_USERNAME				--AS INVOICE_MAP_KEY

		UNION ALL

		-- <<<<< EGENCIA >>>>> --
		SELECT
		 INV.[DATETIME_CT]					AS DATE_TIME
		,DATEPART(HOUR,INV.[DATETIME_CT])	AS HOUR_INTERVAL
		,106	/* EGENCIA */				AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME				AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					AS RESOURCE_NAME
		,INV.FF_LOGIN_ID					AS INVOICE_MAP_KEY
		,SUM(INV.STAFFED_SECS)				AS LOGGED_IN_TIME
		,SUM(INV.CPROD)						AS PRODUCTIVE_TIME
		--SELECT *
		FROM WSOL_TB_IMPORTS_EGENCIA_INVOICING INV
		WHERE ( INV.[DATETIME_CT] >= @DTM_BEG AND INV.[DATETIME_CT] < @DTM_END )
		  AND ISNULL(INV.RESOURCE_NAME,'') <> ''
		GROUP BY
		 INV.[DATETIME_CT]					--AS DATE_TIME
		,DATEPART(HOUR,INV.[DATETIME_CT])	--AS HOUR_INTERVAL
		,INV.SCHEDULER_ACL_NAME				--AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					--AS RESOURCE_NAME
		,INV.FF_LOGIN_ID					--AS INVOICE_MAP_KEY

		UNION ALL

		-- <<<<< MONAT GLOBAL >>>>> --
		SELECT
		 INV.[DATETIME]						AS DATE_TIME
		,INV.HOUR_INTERVAL					AS HOUR_INTERVAL
		,160	/* MONAT GLOBAL */			AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME				AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					AS RESOURCE_NAME
		,INV.FF_AGENT_NAME					AS INVOICE_MAP_KEY
		,SUM(INV.AVAILABLE_TIME) +
		 SUM(INV.NON_CONNECT_CALL_TIME) +
		 SUM(INV.RONA_TIME) +
		 SUM(INV.UNAVAILABLE_TIME) +
		 SUM(INV.HANDLE_TIME)				AS LOGGED_IN_TIME
		,SUM(INV.CPROD)						AS PRODUCTIVE_TIME
		--SELECT *
		FROM WSOL_TB_IMPORTS_MONAT_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		  AND INV.[DATETIME] < CAST('2017-10-01' AS DATETIME)
		  AND ISNULL(INV.RESOURCE_NAME,'') <> ''
		GROUP BY
		 INV.[DATETIME]						--AS DATE_TIME
		,INV.HOUR_INTERVAL					--AS HOUR_INTERVAL
		,INV.SCHEDULER_ACL_NAME				--AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					--AS RESOURCE_NAME
		,INV.FF_AGENT_NAME					--AS INVOICE_MAP_KEY 
		
		UNION ALL

		SELECT
		 INV.[DATETIME]						AS DATE_TIME
		,INV.HOUR_INTERVAL					AS HOUR_INTERVAL
		,160	/* MONAT GLOBAL */			AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME				AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					AS RESOURCE_NAME
		,INV.FF_AGENT						AS INVOICE_MAP_KEY
		,SUM(INV.AVAILABLE_DUR) +
	     SUM(INV.DIRECT_CALL_DUR) +
		 SUM(ISNULL(INV.DIRECT_OB_DIAL_DUR,0.00)) + 
		 SUM(INV.RONA_DUR) +
		 SUM(INV.INCALL_DUR) +
		 SUM(INV.ACW_DUR) +
		 SUM(INV.RING_DUR) +
		 SUM(INV.UNAVAILABLE_DUR)			AS LOGGED_IN_TIME
		,SUM(INV.CPROD)						AS PRODUCTIVE_TIME
		--SELECT *
		FROM WSOL_TB_IMPORTS_MONAT_INVOICING_NEW INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		  AND INV.[DATETIME] >= CAST('2017-10-01' AS DATETIME)
		  AND ISNULL(INV.RESOURCE_NAME,'') <> ''
		GROUP BY
		 INV.[DATETIME]						--AS DATE_TIME
		,INV.HOUR_INTERVAL					--AS HOUR_INTERVAL
		,INV.SCHEDULER_ACL_NAME				--AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					--AS RESOURCE_NAME
		,INV.FF_AGENT						--AS INVOICE_MAP_KEY 
		
		UNION ALL

		SELECT
		 INV.[DATETIME]						AS DATE_TIME
		,INV.HOUR_INTERVAL					AS HOUR_INTERVAL
		,160	/* MONAT GLOBAL */			AS CLIENT_ID
		,INV.SCHEDULER_ACL_NAME				AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					AS RESOURCE_NAME
		,INV.FF_AGENT_NAME					AS INVOICE_MAP_KEY
		,SUM(INV.LOGIN_TIME)				AS LOGGED_IN_TIME
		,SUM(INV.CPROD)						AS PRODUCTIVE_TIME
		--SELECT *
		FROM WSOL_TB_IMPORTS_MONAT_IC_INVOICING INV
		WHERE ( INV.[DATETIME] >= @DTM_BEG AND INV.[DATETIME] < @DTM_END )
		  AND INV.[DATETIME] >= CAST('2017-11-18' AS DATETIME)
		  AND ISNULL(INV.RESOURCE_NAME,'') <> ''
		GROUP BY
		 INV.[DATETIME]						--AS DATE_TIME
		,INV.HOUR_INTERVAL					--AS HOUR_INTERVAL
		,INV.SCHEDULER_ACL_NAME				--AS SCHEDULER_ACL_NAME
		,INV.RESOURCE_NAME					--AS RESOURCE_NAME
		,INV.FF_AGENT_NAME					--AS INVOICE_MAP_KEY 

		/* SELECT * FROM CLIENT ORDER BY [NAME] */

	) DAT
	WHERE ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(DAT.CLIENT_ID)	   + ',',@CLIENT_ID) > 0   )
	GROUP BY
	 CASE WHEN @INTERVAL = 'D' THEN
			CAST(CONVERT(DATE, DAT.DATE_TIME) AS DATETIME)
		  ELSE
			DAT.DATE_TIME
	 END
	,CASE WHEN @INTERVAL = 'D' THEN
			'0'
		  ELSE
			DAT.HOUR_INTERVAL
	 END
	,DAT.CLIENT_ID
	,DAT.SCHEDULER_ACL_NAME
	,DAT.RESOURCE_NAME
	,DAT.INVOICE_MAP_KEY

	RETURN 
END
GO



