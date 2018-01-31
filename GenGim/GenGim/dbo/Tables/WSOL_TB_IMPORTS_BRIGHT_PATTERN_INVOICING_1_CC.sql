CREATE TABLE [dbo].[WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_1_CC] (
    [F1]               VARCHAR (50)  NULL,
    [F2]               VARCHAR (50)  NULL,
    [F3]               VARCHAR (50)  NULL,
    [F4]               VARCHAR (50)  NULL,
    [F5]               VARCHAR (50)  NULL,
    [F6]               VARCHAR (50)  NULL,
    [F7]               VARCHAR (50)  NULL,
    [F8]               VARCHAR (50)  NULL,
    [F9]               VARCHAR (200) NULL,
    [F10]              VARCHAR (50)  NULL,
    [F11]              VARCHAR (100) NULL,
    [DATETIME]         DATETIME      NULL,
    [INBOUND_CALL]     INT           NULL,
    [OUTBOUND_CALL]    INT           NULL,
    [SEQNO_ADDED_TIME] DATETIME      NOT NULL,
    [SEQNO]            INT           NOT NULL,
    [FTP_FILE_NAME]    VARCHAR (100) NOT NULL,
    [ID]               INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_BRIGHT_PATTERN_INVOICING_1_CC] PRIMARY KEY CLUSTERED ([ID] ASC)
);

