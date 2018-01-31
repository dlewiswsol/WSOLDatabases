﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_2] (
    [FF_TIME]                         VARCHAR (50)    NULL,
    [FF_LOGIN_ID]                     VARCHAR (50)    NULL,
    [FF_AGENT_FIRST_NAME]             VARCHAR (50)    NULL,
    [FF_AGENT_LAST_NAME]              VARCHAR (50)    NULL,
    [FF_TEAM]                         VARCHAR (50)    NULL,
    [FF_ACTIVITY]                     VARCHAR (50)    NULL,
    [FF_DURATION]                     VARCHAR (50)    NULL,
    [FF_DETAIL]                       VARCHAR (50)    NULL,
    [FF_SERVICE]                      VARCHAR (200)   NULL,
    [FF_MEDIA_TYPE]                   VARCHAR (50)    NULL,
    [FF_GLOBAL_ID]                    VARCHAR (100)   NULL,
    [EVENT_START_TIME]                DATETIME        NULL,
    [EVENT_DURATION_SECS]             DECIMAL (10, 2) NULL,
    [EVENT_END_TIME]                  DATETIME        NULL,
    [INTERVAL_START_TIME]             DATETIME        NOT NULL,
    [INTERVAL_END_TIME]               DATETIME        NOT NULL,
    [EVENT_DURATION_IN_INTERVAL_SECS] FLOAT (53)      NOT NULL,
    [SEQNO_ADDED_TIME]                DATETIME        NOT NULL,
    [SEQNO]                           INT             NOT NULL,
    [FTP_FILE_NAME]                   VARCHAR (100)   NULL,
    [ID]                              INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_2] PRIMARY KEY CLUSTERED ([ID] ASC)
);
