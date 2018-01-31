CREATE TABLE [dbo].[WSOL_TB_IMPORTS_STUBHUB_QA_1] (
    [FF_EVALUATED_NAME]              VARCHAR (50)  NULL,
    [FF_EVALUATION_CREATION_DATE]    VARCHAR (50)  NULL,
    [FF_SCORE]                       VARCHAR (50)  NULL,
    [FF_EVALUATOR_NAME]              VARCHAR (50)  NULL,
    [FF_FORM_NAME]                   VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME]               DATETIME      NOT NULL,
    [SEQNO]                          INT           NOT NULL,
    [FTP_FILE_NAME]                  VARCHAR (100) NOT NULL,
    [DATETIME]                       DATETIME      NULL,
    [HOUR_INTERVAL]                  VARCHAR (50)  NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT           NULL,
    [TENANT_KEY]                     INT           NULL,
    [ID]                             INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_STUBHUB_QA_1] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_STUBHUB_QA_1] UNIQUE NONCLUSTERED ([SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

