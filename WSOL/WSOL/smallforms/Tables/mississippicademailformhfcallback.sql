CREATE TABLE [smallforms].[mississippicademailformhfcallback] (
    [id]     BIGINT        IDENTITY (26, 1) NOT NULL,
    [client] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [name]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [agent]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]  DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_mississippicademailformhfcallback_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

