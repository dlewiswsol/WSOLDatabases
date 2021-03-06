﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_DAILY_SCHEDULE_BAD] (
    [BAD_IMPORTS_NO]                     TINYINT         NOT NULL,
    [BAD_IMPORTS_FILE_TYPE]              VARCHAR (3)     NULL,
    [WS_ROW_CREATED_TIME]                DATETIME        NOT NULL,
    [FF_OFFICIAL_ACL_NAME]               VARCHAR (200)   NULL,
    [FF_ROLE]                            VARCHAR (50)    NULL,
    [FF_FIELD_MAP_ID]                    VARCHAR (100)   NULL,
    [FF_EMAIL]                           VARCHAR (100)   NULL,
    [FF_AGENT_NAME]                      VARCHAR (200)   NULL,
    [FF_SCHEDULED_HOURS]                 VARCHAR (50)    NULL,
    [FF_WORKED_HOURS]                    VARCHAR (50)    NULL,
    [FF_CANCELLED_HOURS]                 VARCHAR (50)    NULL,
    [FF_CANCELLED_PERCENT]               VARCHAR (50)    NULL,
    [SEQNO_ADDED_TIME]                   DATETIME        NOT NULL,
    [SEQNO]                              INT             NOT NULL,
    [FTP_FILE_NAME]                      VARCHAR (100)   NOT NULL,
    [DATETIME]                           DATETIME        NULL,
    [STD_TENANT_START_DATE_TIME_KEY]     INT             NULL,
    [TENANT_NAME]                        VARCHAR (50)    NULL,
    [OFFICIAL_ACL_NAME]                  VARCHAR (200)   NULL,
    [ROLE]                               VARCHAR (50)    NULL,
    [FIELD_MAP_ID]                       VARCHAR (100)   NULL,
    [EMAIL]                              VARCHAR (100)   NULL,
    [AGENT_NAME]                         VARCHAR (200)   NULL,
    [SCHEDULED_HOURS]                    DECIMAL (10, 2) NULL,
    [SCHEDULED_AFTER_CANCELLATION_HOURS] DECIMAL (10, 2) NULL,
    [CANCELLED_HOURS]                    DECIMAL (10, 2) NULL,
    [CANCELLED_PERCENT]                  DECIMAL (10, 2) NULL,
    [ID]                                 INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_DAILY_SCHEDULE_BAD] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_DAILY_SCHEDULE_BAD] UNIQUE NONCLUSTERED ([BAD_IMPORTS_NO] ASC, [WS_ROW_CREATED_TIME] ASC, [SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

