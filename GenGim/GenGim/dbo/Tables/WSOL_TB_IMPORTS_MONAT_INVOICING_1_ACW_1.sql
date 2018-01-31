CREATE TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING_1_ACW] (
    [F1]                  VARCHAR (200)   NULL,
    [F2]                  VARCHAR (50)    NULL,
    [F3]                  VARCHAR (200)   NULL,
    [F4]                  VARCHAR (500)   NULL,
    [F5]                  VARCHAR (50)    NULL,
    [EVENT_START_TIME]    DATETIME        NULL,
    [EVENT_DURATION_SECS] DECIMAL (10, 2) NULL,
    [SEQNO_ADDED_TIME]    DATETIME        NOT NULL,
    [SEQNO]               INT             NOT NULL,
    [FTP_FILE_NAME]       VARCHAR (100)   NOT NULL,
    [ID]                  INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_MONAT_INVOICING_1_ACW] PRIMARY KEY CLUSTERED ([ID] ASC)
);

