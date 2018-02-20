CREATE TABLE [smallforms].[aplsalestracking] (
    [id]        BIGINT        IDENTITY (192, 1) NOT NULL,
    [agentname] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [salessrc]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [transid]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [inetoid]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_aplsalestracking_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

