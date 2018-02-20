CREATE TABLE [smallforms].[cricketterms] (
    [id]       BIGINT        IDENTITY (650, 1) NOT NULL,
    [subsname] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [wireless] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [addr1]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [addr2]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [agentid]  VARCHAR (50)  DEFAULT (N'') NOT NULL,
    [datew]    DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_cricketterms_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

