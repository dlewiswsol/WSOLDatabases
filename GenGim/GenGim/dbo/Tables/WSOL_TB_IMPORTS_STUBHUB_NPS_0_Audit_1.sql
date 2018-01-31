CREATE TABLE [dbo].[WSOL_TB_IMPORTS_STUBHUB_NPS_0_Audit] (
    [FF_DATE]                     VARCHAR (300) NULL,
    [FF_LOGIN]                    VARCHAR (50)  NULL,
    [FF_ASAT_LAST_TOUCH]          VARCHAR (50)  NULL,
    [FF_NO_OF_SURVEYS_LAST_TOUCH] VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME]            DATETIME      NOT NULL,
    [SEQNO]                       INT           NOT NULL,
    [FTP_FILE_NAME]               VARCHAR (100) NOT NULL,
    [ID]                          INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_STUBHUB_NPS_0_Audit] PRIMARY KEY CLUSTERED ([ID] ASC)
);

