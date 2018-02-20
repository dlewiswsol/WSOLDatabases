CREATE TABLE [smallforms].[azcapss] (
    [id]                      BIGINT        IDENTITY (37, 1) NOT NULL,
    [callGuid]                VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callerID]                VARCHAR (255) DEFAULT (N'') NOT NULL,
    [calledNumber]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callDate]                VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callTime]                VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callDuration]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [lastIVRPage]             VARCHAR (255) DEFAULT (N'') NOT NULL,
    [agentIDfld]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [language]                VARCHAR (255) DEFAULT (N'') NOT NULL,
    [q01_ProductiveUseOfTime] VARCHAR (255) DEFAULT (N'') NOT NULL,
    [q02_RelevantToPractice]  VARCHAR (255) DEFAULT (N'') NOT NULL,
    [q03_WasKnowledgable]     VARCHAR (255) DEFAULT (N'') NOT NULL,
    [q04_UnderstoodMyNeeds]   VARCHAR (255) DEFAULT (N'') NOT NULL,
    [q05_WasResponsive]       VARCHAR (255) DEFAULT (N'') NOT NULL,
    [q06_WouldUseAgain]       VARCHAR (255) DEFAULT (N'') NOT NULL,
    [q07_WouldRecommend]      VARCHAR (255) DEFAULT (N'') NOT NULL,
    [postalCodeURL]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [postalCode]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [actionableStatus]        CHAR (1)      DEFAULT (N'') NULL,
    [agentid]                 VARCHAR (100) DEFAULT (N'') NOT NULL,
    [status]                  VARCHAR (11)  DEFAULT (N'New') NOT NULL,
    [dateNew]                 DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [datePreloaded]           DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [dateTranscribed]         DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [dateSent]                DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [lastupd]                 DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_azcapss_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [azcapss$ind1] UNIQUE NONCLUSTERED ([callGuid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [status]
    ON [smallforms].[azcapss]([status] ASC);

