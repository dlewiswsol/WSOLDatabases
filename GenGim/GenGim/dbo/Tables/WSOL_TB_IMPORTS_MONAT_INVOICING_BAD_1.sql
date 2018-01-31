CREATE TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING_BAD_1] (
    [BAD_IMPORTS_CODE]                VARCHAR (3)     NOT NULL,
    [BAD_IMPORTS_FILE_TYPE]           VARCHAR (3)     NULL,
    [WS_ROW_CREATED_TIME]             DATETIME        NOT NULL,
    [FF_AGENT]                        VARCHAR (200)   NULL,
    [FF_STATE_START_TIME]             VARCHAR (50)    NULL,
    [FF_AGENT_STATE]                  VARCHAR (200)   NULL,
    [FF_REASON_CODE]                  VARCHAR (500)   NULL,
    [FF_DURATION]                     VARCHAR (50)    NULL,
    [EVENT_START_TIME]                DATETIME        NULL,
    [EVENT_DURATION_SECS]             DECIMAL (10, 2) NULL,
    [INTERVAL_START_TIME]             DATETIME        NULL,
    [INTERVAL_END_TIME]               DATETIME        NULL,
    [EVENT_DURATION_IN_INTERVAL_SECS] FLOAT (53)      NULL,
    [INBOUND_CALLS]                   INT             NULL,
    [OUTBOUND_CALLS]                  INT             NULL,
    [SEQNO_ADDED_TIME]                DATETIME        NOT NULL,
    [SEQNO]                           INT             NOT NULL,
    [FTP_FILE_NAME]                   VARCHAR (100)   NOT NULL,
    [ID]                              INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_MONAT_INVOICING_BAD_1] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_MONAT_INVOICING_BAD_1] UNIQUE NONCLUSTERED ([BAD_IMPORTS_CODE] ASC, [SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC, [WS_ROW_CREATED_TIME] ASC, [INTERVAL_START_TIME] ASC)
);

