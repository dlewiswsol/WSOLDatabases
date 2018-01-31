﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_WORK_HOURS_ALL] (
    [TENANT_NAME]                    VARCHAR (100)   NULL,
    [OFFICIAL_ACL_NAME]              VARCHAR (200)   NOT NULL,
    [AGENT_NAME]                     VARCHAR (200)   NULL,
    [FIELD_MAP_ID]                   VARCHAR (100)   NOT NULL,
    [EMAIL]                          VARCHAR (100)   NULL,
    [LOGGED_IN_HOURS]                DECIMAL (10, 2) NULL,
    [PRODUCTIVE_HOURS]               DECIMAL (10, 2) NULL,
    [DATETIME]                       DATETIME        NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT             NOT NULL,
    [FTP_FILE_NAME]                  VARCHAR (100)   NULL,
    [WS_ROW_CREATED_TIME]            DATETIME        NULL,
    [WS_ROW_UPDATED_TIME]            DATETIME        NULL,
    [ID]                             INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_WORK_HOURS_ALL] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_WORK_HOURS_ALL] UNIQUE NONCLUSTERED ([OFFICIAL_ACL_NAME] ASC, [FIELD_MAP_ID] ASC, [STD_TENANT_START_DATE_TIME_KEY] ASC)
);
