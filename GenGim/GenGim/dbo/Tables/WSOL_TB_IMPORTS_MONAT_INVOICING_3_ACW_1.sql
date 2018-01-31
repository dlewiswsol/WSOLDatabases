CREATE TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_INVOICING_3_ACW] (
    [FF_AGENT]                        VARCHAR (200)   NULL,
    [FF_AGENT_STATE]                  VARCHAR (200)   NULL,
    [EVENT_DURATION_IN_INTERVAL_SECS] FLOAT (53)      NULL,
    [SEQNO_ADDED_TIME]                DATETIME        NOT NULL,
    [SEQNO]                           INT             NOT NULL,
    [FTP_FILE_NAME]                   VARCHAR (100)   NULL,
    [DATETIME]                        DATETIME        NULL,
    [AUTHORIZED_ACW]                  DECIMAL (10, 2) NULL,
    [WS_ROW_CREATED_TIME]             DATETIME        NULL,
    [WS_ROW_UPDATED_TIME]             DATETIME        NULL,
    [ID]                              INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_MONAT_INVOICING_3_ACW] PRIMARY KEY CLUSTERED ([ID] ASC)
);

