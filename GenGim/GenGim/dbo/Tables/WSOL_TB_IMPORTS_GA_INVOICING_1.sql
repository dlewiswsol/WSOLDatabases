CREATE TABLE [dbo].[WSOL_TB_IMPORTS_GA_INVOICING_1] (
    [FF1]                 VARCHAR (100) NULL,
    [FF2]                 VARCHAR (50)  NULL,
    [FF3]                 VARCHAR (50)  NULL,
    [FF4]                 VARCHAR (100) NULL,
    [FF5]                 VARCHAR (200) NULL,
    [FF6]                 VARCHAR (50)  NULL,
    [FF7]                 VARCHAR (100) NULL,
    [FF8]                 VARCHAR (50)  NULL,
    [EVENT_START_TIME]    DATETIME      NULL,
    [EVENT_DURATION_SECS] FLOAT (53)    NULL,
    [SEQNO_ADDED_TIME]    DATETIME      NOT NULL,
    [SEQNO]               INT           NOT NULL,
    [FTP_FILE_NAME]       VARCHAR (100) NOT NULL,
    [ID]                  INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_GA_INVOICING_1] PRIMARY KEY CLUSTERED ([ID] ASC)
);

