CREATE TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING_2] (
    [FF_AGENT]                        VARCHAR (200)   NULL,
    [FF_STATE_START_TIME]             VARCHAR (50)    NULL,
    [FF_AGENT_STATE]                  VARCHAR (200)   NULL,
    [FF_REASON_CODE]                  VARCHAR (500)   NULL,
    [FF_DURATION]                     VARCHAR (50)    NULL,
    [EVENT_START_TIME]                DATETIME        NULL,
    [EVENT_DURATION_SECS]             DECIMAL (10, 2) NULL,
    [INTERVAL_START_TIME]             DATETIME        NOT NULL,
    [INTERVAL_END_TIME]               DATETIME        NOT NULL,
    [EVENT_DURATION_IN_INTERVAL_SECS] FLOAT (53)      NOT NULL,
    [INBOUND_CALLS]                   INT             NULL,
    [OUTBOUND_CALLS]                  INT             NULL,
    [SEQNO_ADDED_TIME]                DATETIME        NOT NULL,
    [SEQNO]                           INT             NOT NULL,
    [FTP_FILE_NAME]                   VARCHAR (100)   NULL,
    [ID]                              INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_MONAT_INVOICING_2] PRIMARY KEY CLUSTERED ([ID] ASC)
);

