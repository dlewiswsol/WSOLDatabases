﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_STUBHUB_RAW_DATA_II_1] (
    [FF_AGENT_NAME]                    VARCHAR (50)  NULL,
    [FF_DAY]                           VARCHAR (50)  NULL,
    [FF_INTERACTION]                   VARCHAR (50)  NULL,
    [FF_SENT]                          VARCHAR (50)  NULL,
    [FF_ANSWERED]                      VARCHAR (50)  NULL,
    [FF_HANDLE_TIME]                   VARCHAR (50)  NULL,
    [FF_AVG_HANDLE_TIME]               VARCHAR (50)  NULL,
    [FF_TOTAL_TALK_TIME]               VARCHAR (50)  NULL,
    [FF_AVG_TALK_TIME]                 VARCHAR (50)  NULL,
    [FF_TOTAL_HOLD_TIME]               VARCHAR (50)  NULL,
    [FF_AVG_HOLD_TIME]                 VARCHAR (50)  NULL,
    [FF_TOTAL_WRAP_TIME]               VARCHAR (50)  NULL,
    [FF_AVG_WRAP_TIME]                 VARCHAR (50)  NULL,
    [FF_TRANSFER_INITIATED_COUNT]      VARCHAR (50)  NULL,
    [FF_TRANSFER_INITIATED_PERCENTAGE] VARCHAR (50)  NULL,
    [FF_CONSULT_RECEIVED_ACCEPTANCE]   VARCHAR (50)  NULL,
    [FF_CONSULT_RECEIVED_TIME]         VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME]                 DATETIME      NOT NULL,
    [SEQNO]                            INT           NOT NULL,
    [FTP_FILE_NAME]                    VARCHAR (100) NOT NULL,
    [DATETIME]                         DATETIME      NULL,
    [HOUR_INTERVAL]                    VARCHAR (50)  NULL,
    [STD_TENANT_START_DATE_TIME_KEY]   INT           NULL,
    [TENANT_KEY]                       INT           NULL,
    [ID]                               INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_STUBHUB_RAW_DATA_II_1] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_STUBHUB_RAW_DATA_II_1] UNIQUE NONCLUSTERED ([SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

