CREATE TABLE [dbo].[BackgroundsOnline] (
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


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BackgroundsOnline', @level2type = N'COLUMN', @level2name = N'completiondate';

