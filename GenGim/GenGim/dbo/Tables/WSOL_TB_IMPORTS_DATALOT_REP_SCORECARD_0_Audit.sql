CREATE TABLE [dbo].[WSOL_TB_IMPORTS_DATALOT_REP_SCORECARD_0_Audit] (
    [FF_ID]                        VARCHAR (50)  NULL,
    [FF_AGENT_ID]                  VARCHAR (50)  NULL,
    [FF_AGENT_FIRST_NAME]          VARCHAR (50)  NULL,
    [FF_AGENT_LAST_NAME]           VARCHAR (50)  NULL,
    [FF_AGENT_LOCATION]            VARCHAR (50)  NULL,
    [FF_TEAM]                      VARCHAR (50)  NULL,
    [FF_CALLS]                     VARCHAR (50)  NULL,
    [FF_EXPECTED_3_MIN_XFERS]      VARCHAR (50)  NULL,
    [FF_3_MIN_XFERS]               VARCHAR (50)  NULL,
    [FF_EXCESS_3MIN_XFER]          VARCHAR (50)  NULL,
    [FF_INBOUND_EXCESS_3MIN_XFER]  VARCHAR (50)  NULL,
    [FF_OUTBOUND_EXCESS_3MIN_XFER] VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME]             DATETIME      NOT NULL,
    [SEQNO]                        INT           NOT NULL,
    [FTP_FILE_NAME]                VARCHAR (100) NOT NULL,
    [ID]                           INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_DATALOT_REP_SCORECARD_0_Audit] PRIMARY KEY CLUSTERED ([ID] ASC)
);

