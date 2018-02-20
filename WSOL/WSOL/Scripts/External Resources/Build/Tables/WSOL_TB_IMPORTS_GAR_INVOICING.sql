﻿CREATE EXTERNAL TABLE [dbo].[WSOL_TB_IMPORTS_GAR_INVOICING] (
    [FF_DATE] VARCHAR (50) NULL,
    [FF_INTERVAL_30_MINUTES] VARCHAR (50) NULL,
    [FF_AGENT_NAME] VARCHAR (100) NOT NULL,
    [FF_SKILL_NAME] VARCHAR (50) NULL,
    [FF_TEAM_NAME] VARCHAR (50) NOT NULL,
    [FF_LOGIN_TIME] VARCHAR (50) NULL,
    [FF_AVAILABLE_TIME] VARCHAR (50) NULL,
    [FF_UNAVAILABLE_TIME_MINUS_ACW] VARCHAR (50) NULL,
    [FF_TALK_TIME] VARCHAR (50) NULL,
    [FF_HOLD_TIME] VARCHAR (50) NULL,
    [FF_ACW_TIME] VARCHAR (50) NULL,
    [SEQNO_ADDED_TIME] DATETIME NOT NULL,
    [SEQNO] INT NOT NULL,
    [FTP_FILE_NAME] VARCHAR (100) NOT NULL,
    [DATETIME] DATETIME NULL,
    [HOUR_INTERVAL] INT NULL,
    [AGENT_NAME] VARCHAR (50) NULL,
    [SKILL_NAME] VARCHAR (50) NULL,
    [TEAM_NAME] VARCHAR (50) NULL,
    [LOGIN_TIME] DECIMAL (10, 2) NULL,
    [AVAILABLE_TIME] DECIMAL (10, 2) NULL,
    [UNAVAILABLE_TIME_MINUS_ACW] DECIMAL (10, 2) NULL,
    [TALK_TIME] DECIMAL (10, 2) NULL,
    [HOLD_TIME] DECIMAL (10, 2) NULL,
    [ACW_TIME] DECIMAL (10, 2) NULL,
    [TRUE_OUTBOUND_TALK_TIME] DECIMAL (10, 2) NULL,
    [TOTAL_TALK] DECIMAL (10, 2) NULL,
    [CPROD] DECIMAL (10, 2) NULL,
    [MING] DECIMAL (10, 2) NULL,
    [AUT2] DECIMAL (10, 2) NULL,
    [EMAIL] VARCHAR (100) NULL,
    [ID_EXT] VARCHAR (3) NOT NULL,
    [SCHEDULER_ACL_NAME] VARCHAR (50) NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT NOT NULL,
    [CAL_DATE] DATETIME NULL,
    [TENANT_KEY] INT NULL,
    [AIR_DAY_TYPE] VARCHAR (1) NULL,
    [AIR_ACW_FONT_COLOR] VARCHAR (50) NULL,
    [MIN_GUARANTEE_RATE] DECIMAL (6, 3) NULL,
    [MIN_GUARANTEE_TYPE] VARCHAR (50) NULL,
    [AUTHORIZED_TO_INVOICE_TYPE] VARCHAR (50) NULL,
    [HAS_HOLIDAYS] VARCHAR (1) NULL,
    [INCLUDE_IN_CAS] VARCHAR (1) NULL,
    [READY_FOR_XML] VARCHAR (1) NULL,
    [SHOW_ID_EXTS] VARCHAR (1) NULL,
    [INVOICE_ID] VARCHAR (50) NULL,
    [RESOURCE_NAME] VARCHAR (100) NULL,
    [AIRITKDUR] INT NULL,
    [AIRIACDUR] INT NULL,
    [PAY_GROUP] INT NULL,
    [WS_ROW_CREATED_TIME] DATETIME NULL,
    [WS_ROW_UPDATED_TIME] DATETIME NULL
)
    WITH (
    DATA_SOURCE = [GEN_GIM_REMOTE_DATA]
    );
	
	GO
