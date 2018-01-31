CREATE TABLE [dbo].[WSOL_TB_BACKGROUNDS_ONLINE] (
    [id]             BIGINT        IDENTITY (1, 1) NOT NULL,
    [applicantID]    BIGINT        NOT NULL,
    [token]          VARCHAR (255) NULL,
    [orderID]        INT           NULL,
    [status]         VARCHAR (50)  NULL,
    [statusID]       INT           NULL,
    [creationdate]   DATETIME      NULL,
    [completiondate] DATETIME      DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

