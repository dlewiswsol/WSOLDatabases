CREATE TABLE [smallforms].[veroptoutdata] (
    [id]         BIGINT        IDENTITY (9, 1) NOT NULL,
    [firstname]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [mobilenum]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datecalled] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comments]   VARCHAR (MAX) NOT NULL,
    [agent]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]      DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_veroptoutdata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [i01]
    ON [smallforms].[veroptoutdata]([datew] ASC);

