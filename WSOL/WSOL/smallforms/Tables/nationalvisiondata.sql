CREATE TABLE [smallforms].[nationalvisiondata] (
    [id]                  BIGINT        IDENTITY (6613334, 1) NOT NULL,
    [refNo]               VARCHAR (255) DEFAULT (N'') NOT NULL,
    [survey]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [weekEnd]             VARCHAR (255) DEFAULT (N'') NOT NULL,
    [firstName]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [lastName]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [phone]               VARCHAR (255) DEFAULT (N'') NOT NULL,
    [entEnglish]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callStatus]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callCmpl]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callDure]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [direction]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callDate]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callTome]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [question1]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [question2]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [question2T]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [question3]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [language]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [comments]            VARCHAR (MAX) NOT NULL,
    [status]              VARCHAR (13)  DEFAULT (N'New') NOT NULL,
    [agentid]             VARCHAR (100) DEFAULT (N'') NOT NULL,
    [statusNew]           DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusCannotPreload] DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusPreloaded]     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusTranscribed]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusReportSent]    DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [lastupd]             DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_nationalvisiondata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NationalVisionDatai01]
    ON [smallforms].[nationalvisiondata]([status] ASC, [lastupd] ASC);

