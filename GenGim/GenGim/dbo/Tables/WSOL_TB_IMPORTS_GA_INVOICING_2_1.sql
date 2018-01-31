CREATE TABLE [dbo].[WSOL_TB_IMPORTS_GA_INVOICING_2] (
    [FF_RECORD_ID]                    VARCHAR (100)   NULL,
    [FF_DATE]                         VARCHAR (50)    NULL,
    [FF_AGENT_ID]                     VARCHAR (50)    NULL,
    [FF_AGENT_NAME]                   VARCHAR (100)   NULL,
    [FF_EVENT_KEY]                    VARCHAR (200)   NULL,
    [FF_EVENT_START_TIME]             VARCHAR (50)    NULL,
    [FF_AGENT_STATE]                  VARCHAR (100)   NULL,
    [FF_EVENT_DURATION]               VARCHAR (50)    NULL,
    [EVENT_START_TIME]                DATETIME        NULL,
    [EVENT_DURATION_SECS]             DECIMAL (10, 2) NULL,
    [INTERVAL_START_TIME]             DATETIME        NOT NULL,
    [INTERVAL_END_TIME]               DATETIME        NOT NULL,
    [EVENT_DURATION_IN_INTERVAL_SECS] FLOAT (53)      NOT NULL,
    [SEQNO_ADDED_TIME]                DATETIME        NOT NULL,
    [SEQNO]                           INT             NOT NULL,
    [FTP_FILE_NAME]                   VARCHAR (100)   NOT NULL,
    [OUTBOUND_CALLS]                  INT             NULL,
    [CALLS_TRANSFERRED]               INT             NULL,
    [ID]                              INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_GA_INVOICING_2] PRIMARY KEY CLUSTERED ([ID] ASC)
);

