CREATE TABLE [smallforms].[hotelsrebatedata] (
    [id]       BIGINT        IDENTITY (10636, 1) NOT NULL,
    [booknumb] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]    DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]    TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_hotelsrebatedata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [hotelsrebate1]
    ON [smallforms].[hotelsrebatedata]([datew] ASC);

