﻿CREATE TABLE [dbo].[YZ_TB_IMPORTS_STUBHUB_INVOICING_0_Audit] (
    [FF_AGENT_NAME]            VARCHAR (100) NULL,
    [FF_USER_NAME]             VARCHAR (50)  NULL,
    [FF_HOUR]                  VARCHAR (50)  NULL,
    [FF_ACTIVE_TIME]           VARCHAR (50)  NULL,
    [FF_READY_TIME]            VARCHAR (50)  NULL,
    [FF_NOT_READY_TIME]        VARCHAR (50)  NULL,
    [FF_ACCEPTED]              VARCHAR (50)  NULL,
    [FF_INVITE_TIME]           VARCHAR (50)  NULL,
    [FF_ENGAGE_TIME]           VARCHAR (50)  NULL,
    [FF_HOLD_TIME]             VARCHAR (50)  NULL,
    [FF_WRAP_TIME]             VARCHAR (50)  NULL,
    [FF_CONSULT_RECEIVED_TIME] VARCHAR (50)  NULL,
    [FF_TALK_TIME]             VARCHAR (50)  NULL,
    [FF_HANDLE_TIME]           VARCHAR (50)  NULL,
    [FF_MINIMUM_GUARANTEE]     VARCHAR (50)  NULL,
    [FF_AUTHORIZED_TO_INVOICE] VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME]         DATETIME      NOT NULL,
    [SEQNO]                    INT           NOT NULL,
    [FTP_FILE_NAME]            VARCHAR (100) NOT NULL,
    [ID]                       INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_YZ_TB_IMPORTS_STUBHUB_INVOICING_0_Audit] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_YZ_TB_IMPORTS_STUBHUB_INVOICING_0_Audit] UNIQUE NONCLUSTERED ([SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

