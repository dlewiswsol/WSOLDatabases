CREATE TABLE [smallforms].[hotelsdata] (
    [id]     BIGINT        IDENTITY (20503, 1) NOT NULL,
    [answer] VARCHAR (MAX) NOT NULL,
    [datew]  DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]  TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_hotelsdata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [hotels1]
    ON [smallforms].[hotelsdata]([datew] ASC);

