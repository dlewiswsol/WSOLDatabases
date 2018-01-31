CREATE TABLE [dbo].[WSOL_TB_IMPORTS_GAR_INVOICING_0_Audit] (
    [FF_DATE]                       VARCHAR (50)  NULL,
    [FF_INTERVAL_30_MINUTES]        VARCHAR (50)  NULL,
    [FF_AGENT_NAME]                 VARCHAR (100) NULL,
    [FF_UNAVAILABLE_CODE]           VARCHAR (100) NULL,
    [FF_SKILL_NAME]                 VARCHAR (50)  NULL,
    [FF_TEAM_NAME]                  VARCHAR (50)  NOT NULL,
    [FF_LOGIN_TIME]                 VARCHAR (50)  NULL,
    [FF_AVAILABLE_TIME]             VARCHAR (50)  NULL,
    [FF_UNAVAILABLE_TIME_MINUS_ACW] VARCHAR (50)  NULL,
    [FF_TALK_TIME]                  VARCHAR (50)  NULL,
    [FF_HOLD_TIME]                  VARCHAR (50)  NULL,
    [FF_ACW_TIME]                   VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME]              DATETIME      NOT NULL,
    [SEQNO]                         INT           NOT NULL,
    [FTP_FILE_NAME]                 VARCHAR (100) NOT NULL,
    [ID]                            INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_GAR_INVOICING_0_Audit] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_GAR_INVOICING_0_Audit] UNIQUE NONCLUSTERED ([SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

