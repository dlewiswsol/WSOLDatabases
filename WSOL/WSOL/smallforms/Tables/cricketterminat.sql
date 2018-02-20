CREATE TABLE [smallforms].[cricketterminat] (
    [id]       BIGINT        IDENTITY (135, 1) NOT NULL,
    [custname] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [areacode] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [prefix]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [fnum]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [cancreas] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comments] VARCHAR (MAX) NOT NULL,
    [agent]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]    DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_cricketterminat_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [cricketterminati1]
    ON [smallforms].[cricketterminat]([datew] ASC);

