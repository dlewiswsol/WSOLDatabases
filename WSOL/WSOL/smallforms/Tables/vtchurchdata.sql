CREATE TABLE [smallforms].[vtchurchdata] (
    [id]              BIGINT        IDENTITY (5798, 1) NOT NULL,
    [control]         VARCHAR (255) DEFAULT (N'') NOT NULL,
    [fstnm]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [fstnmUrl]        VARCHAR (MAX) NOT NULL,
    [lstnm]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [lstnmUrl]        VARCHAR (MAX) NOT NULL,
    [addrl0]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [addrl0Url]       VARCHAR (MAX) NOT NULL,
    [city]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [cityUrl]         VARCHAR (MAX) NOT NULL,
    [st]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [postcd]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [postcdUrl]       VARCHAR (MAX) NOT NULL,
    [country]         VARCHAR (255) DEFAULT (N'') NOT NULL,
    [phone]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [calldate]        VARCHAR (255) DEFAULT (N'') NOT NULL,
    [time]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [dnisphone]       VARCHAR (255) DEFAULT (N'') NOT NULL,
    [dnis]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [email]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [var01]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [var02]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [agentid]         VARCHAR (100) DEFAULT (N'') NOT NULL,
    [status]          VARCHAR (11)  DEFAULT (N'New') NOT NULL,
    [dateNew]         DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [datePreloaded]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [dateTranscribed] DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [dateSent]        DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [lastupd]         DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_vtchurchdata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [status]
    ON [smallforms].[vtchurchdata]([status] ASC);

