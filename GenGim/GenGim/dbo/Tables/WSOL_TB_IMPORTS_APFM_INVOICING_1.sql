CREATE TABLE [dbo].[WSOL_TB_IMPORTS_APFM_INVOICING_1] (
    [F1]               VARCHAR (50)  NULL,
    [F2]               VARCHAR (50)  NULL,
    [F3]               VARCHAR (500) NULL,
    [F4]               VARCHAR (100) NULL,
    [F5]               VARCHAR (50)  NULL,
    [F6]               VARCHAR (50)  NULL,
    [F7]               VARCHAR (50)  NULL,
    [F8]               VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME] DATETIME      NOT NULL,
    [SEQNO]            INT           NOT NULL,
    [FTP_FILE_NAME]    VARCHAR (100) NULL,
    [ID]               INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_APFM_INVOICING_1] PRIMARY KEY CLUSTERED ([ID] ASC)
);

