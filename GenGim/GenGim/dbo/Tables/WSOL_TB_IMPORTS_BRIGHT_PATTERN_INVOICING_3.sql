﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_3] (
    [FF_LOGIN_ID]                     VARCHAR (50)    NULL,
    [FF_AGENT_FIRST_NAME]             VARCHAR (50)    NULL,
    [FF_AGENT_LAST_NAME]              VARCHAR (50)    NULL,
    [FF_TEAM]                         VARCHAR (50)    NULL,
    [FF_ACTIVITY]                     VARCHAR (50)    NULL,
    [FF_DETAIL]                       VARCHAR (50)    NULL,
    [FF_MEDIA_TYPE]                   VARCHAR (50)    NULL,
    [EVENT_DURATION_IN_INTERVAL_SECS] FLOAT (53)      NULL,
    [SEQNO_ADDED_TIME]                DATETIME        NOT NULL,
    [SEQNO]                           INT             NOT NULL,
    [FTP_FILE_NAME]                   VARCHAR (100)   NULL,
    [RESOURCE_NAME]                   VARCHAR (100)   NULL,
    [DATETIME]                        DATETIME        NULL,
    [HOUR_INTERVAL]                   INT             NULL,
    [EMPLOYEE_ID]                     VARCHAR (50)    NULL,
    [STD_TENANT_START_TIME]           DATETIME        NULL,
    [LOGGED_IN_TIME]                  DECIMAL (10, 2) NULL,
    [READY_TIME]                      DECIMAL (10, 2) NULL,
    [INBOUND_VOICE_TIME]              DECIMAL (10, 2) NULL,
    [OUTBOUND_VOICE_TIME]             DECIMAL (10, 2) NULL,
    [ACW_VOICE_TIME]                  DECIMAL (10, 2) NULL,
    [NOT_READY_TIME]                  DECIMAL (10, 2) NULL,
    [NOT_READY_BREAK_TIME]            DECIMAL (10, 2) NULL,
    [NOT_READY_NO_ANSWER_TIME]        DECIMAL (10, 2) NULL,
    [SUPERVISION_TIME]                DECIMAL (10, 2) NULL,
    [UNKNOWN_TIME]                    DECIMAL (10, 2) NULL,
    [WS_ROW_CREATED_TIME]             DATETIME        NULL,
    [WS_ROW_UPDATED_TIME]             DATETIME        NULL,
    [ID]                              INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_3] PRIMARY KEY CLUSTERED ([ID] ASC)
);

