CREATE TABLE [smallforms].[mississippicademailformcc] (
    [id]     BIGINT        IDENTITY (4, 1) NOT NULL,
    [client] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [name]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [reqcd]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [reqct]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [agent]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]  DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_mississippicademailformcc_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

