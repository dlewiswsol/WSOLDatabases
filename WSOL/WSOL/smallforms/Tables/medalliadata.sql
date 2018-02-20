CREATE TABLE [smallforms].[medalliadata] (
    [id]                      BIGINT        IDENTITY (7276, 1) NOT NULL,
    [no]                      VARCHAR (255) DEFAULT (N'') NOT NULL,
    [guestLastName]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [guestFirstName]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [fileNo]                  VARCHAR (255) DEFAULT (N'') NOT NULL,
    [closeDate]               VARCHAR (255) DEFAULT (N'') NOT NULL,
    [propertyNo]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [propertyName]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [propertyCity]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [propertyState]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [propertyCountry]         VARCHAR (255) DEFAULT (N'') NOT NULL,
    [guestEmail]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [guestPhone]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callDate]                VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callTime]                VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callType]                VARCHAR (255) DEFAULT (N'') NOT NULL,
    [satisfied]               VARCHAR (255) DEFAULT (N'') NOT NULL,
    [timelyResponse]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [intentToRecommend]       VARCHAR (255) DEFAULT (N'') NOT NULL,
    [additionalComments]      VARCHAR (255) DEFAULT (N'') NOT NULL,
    [transcription]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [answerType]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callGUID]                VARCHAR (255) DEFAULT (N'') NOT NULL,
    [additionalCommentsTrans] VARCHAR (MAX) NOT NULL,
    [status]                  VARCHAR (13)  DEFAULT (N'New') NOT NULL,
    [agentid]                 VARCHAR (100) DEFAULT (N'') NOT NULL,
    [statusNew]               DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusCannotPreload]     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusPreloaded]         DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusTranscribed]       DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusReportSent]        DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [lastupd]                 DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_medalliadata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [MedalliaDatai01]
    ON [smallforms].[medalliadata]([status] ASC, [lastupd] ASC);

