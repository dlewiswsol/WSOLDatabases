CREATE TABLE [smallforms].[hotwiretransfers] (
    [id]     BIGINT   IDENTITY (195, 1) NOT NULL,
    [numsel] BIGINT   DEFAULT ((0)) NOT NULL,
    [datew]  DATE     DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]  TIME (7) DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_hotwiretransfers_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [iHotwireTransfers01]
    ON [smallforms].[hotwiretransfers]([datew] ASC);

