﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_0_Audit] (
    [FF_TIME]             VARCHAR (50)  NULL,
    [FF_LOGIN_ID]         VARCHAR (50)  NULL,
    [FF_AGENT_FIRST_NAME] VARCHAR (50)  NULL,
    [FF_AGENT_LAST_NAME]  VARCHAR (50)  NULL,
    [FF_TEAM]             VARCHAR (50)  NULL,
    [FF_ACTIVITY]         VARCHAR (50)  NULL,
    [FF_DURATION]         VARCHAR (50)  NULL,
    [FF_DETAIL]           VARCHAR (50)  NULL,
    [FF_SERVICE]          VARCHAR (200) NULL,
    [FF_MEDIA_TYPE]       VARCHAR (50)  NULL,
    [FF_GLOBAL_ID]        VARCHAR (100) NULL,
    [SEQNO_ADDED_TIME]    DATETIME      NOT NULL,
    [SEQNO]               INT           NOT NULL,
    [FTP_FILE_NAME]       VARCHAR (100) NOT NULL,
    [ID]                  INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_0_Audit] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_0_Audit] UNIQUE NONCLUSTERED ([SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

