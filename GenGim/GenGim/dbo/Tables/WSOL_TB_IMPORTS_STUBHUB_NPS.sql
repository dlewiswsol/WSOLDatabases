CREATE TABLE [dbo].[WSOL_TB_IMPORTS_STUBHUB_NPS] (
    [FF_DATE]                        VARCHAR (300) NULL,
    [FF_LOGIN]                       VARCHAR (50)  NULL,
    [FF_ASAT_LAST_TOUCH]             VARCHAR (50)  NULL,
    [FF_NO_OF_SURVEYS_LAST_TOUCH]    VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME]               DATETIME      NOT NULL,
    [SEQNO]                          INT           NOT NULL,
    [FTP_FILE_NAME]                  VARCHAR (100) NOT NULL,
    [DATETIME]                       DATETIME      NULL,
    [HOUR_INTERVAL]                  VARCHAR (50)  NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT           NULL,
    [TENANT_KEY]                     INT           NULL,
    [WS_ROW_CREATED_TIME]            DATETIME      NULL,
    [WS_ROW_UPDATED_TIME]            DATETIME      NULL,
    [ID]                             INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_STUBHUB_NPS] PRIMARY KEY CLUSTERED ([ID] ASC)
);

