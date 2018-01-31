CREATE TABLE [dbo].[WSOL_TB_IMPORTS_APFM_INVOICING_3] (
    [FF_DATE]                         VARCHAR (50)    NULL,
    [FF_HOUR]                         VARCHAR (50)    NULL,
    [FF_SKILL_AVAILABILITY]           VARCHAR (500)   NULL,
    [FF_AGENT_NAME]                   VARCHAR (100)   NULL,
    [FF_STATE]                        VARCHAR (50)    NULL,
    [FF_REASON_CODE]                  VARCHAR (50)    NULL,
    [FF_AGENT_STATE_TIME]             VARCHAR (50)    NULL,
    [FF_TIMESTAMP]                    VARCHAR (50)    NULL,
    [EVENT_START_TIME]                DATETIME        NULL,
    [EVENT_DURATION_SECS]             DECIMAL (10, 2) NULL,
    [INTERVAL_START_TIME]             DATETIME        NOT NULL,
    [INTERVAL_END_TIME]               DATETIME        NOT NULL,
    [EVENT_DURATION_IN_INTERVAL_SECS] FLOAT (53)      NOT NULL,
    [SEQNO_ADDED_TIME]                DATETIME        NOT NULL,
    [SEQNO]                           INT             NOT NULL,
    [FTP_FILE_NAME]                   VARCHAR (100)   NULL,
    [ID]                              INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_APFM_INVOICING_3] PRIMARY KEY CLUSTERED ([ID] ASC)
);

