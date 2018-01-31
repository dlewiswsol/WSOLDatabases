﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_1_CC3] (
    [LOGIN_ID]         VARCHAR (50)  NULL,
    [AGENT_FIRST_NAME] VARCHAR (50)  NULL,
    [AGENT_LAST_NAME]  VARCHAR (50)  NULL,
    [TEAM]             VARCHAR (50)  NULL,
    [MEDIA_TYPE]       VARCHAR (50)  NULL,
    [DATETIME]         DATETIME      NULL,
    [INBOUND_CALLS]    INT           NULL,
    [OUTBOUND_CALLS]   INT           NULL,
    [SEQNO_ADDED_TIME] DATETIME      NOT NULL,
    [SEQNO]            INT           NOT NULL,
    [FTP_FILE_NAME]    VARCHAR (100) NOT NULL,
    [ID]               INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_1_CC3] PRIMARY KEY CLUSTERED ([ID] ASC)
);

