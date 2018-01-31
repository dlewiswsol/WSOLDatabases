CREATE TABLE [dbo].[WSOL_TB_IMPORTS_APFM_INVOICING_2] (
    [FF1]                 VARCHAR (50)    NULL,
    [FF2]                 VARCHAR (50)    NULL,
    [FF3]                 VARCHAR (500)   NULL,
    [FF4]                 VARCHAR (100)   NULL,
    [FF5]                 VARCHAR (50)    NULL,
    [FF6]                 VARCHAR (50)    NULL,
    [FF7]                 VARCHAR (50)    NULL,
    [FF8]                 VARCHAR (50)    NULL,
    [EVENT_START_TIME]    DATETIME        NULL,
    [EVENT_DURATION_SECS] DECIMAL (10, 2) NULL,
    [SEQNO_ADDED_TIME]    DATETIME        NOT NULL,
    [SEQNO]               INT             NOT NULL,
    [FTP_FILE_NAME]       VARCHAR (100)   NULL,
    [ID]                  INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_APFM_INVOICING_2] PRIMARY KEY CLUSTERED ([ID] ASC)
);

