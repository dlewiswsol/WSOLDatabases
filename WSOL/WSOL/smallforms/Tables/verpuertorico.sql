CREATE TABLE [smallforms].[verpuertorico] (
    [id]       BIGINT        IDENTITY (113, 1) NOT NULL,
    [subsname] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [areacode] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [prefix]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phonenum] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [optval]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [addr1]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [addr2]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [cancreas] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [notes]    VARCHAR (MAX) NOT NULL,
    [agentid]  VARCHAR (50)  DEFAULT (N'') NOT NULL,
    [datew]    DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_verpuertorico_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

