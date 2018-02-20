CREATE TABLE [smallforms].[suncomctpr] (
    [id]      BIGINT        IDENTITY (2666, 1) NOT NULL,
    [sel]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [agentid] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_suncomctpr_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [iSuncomCTPR01]
    ON [smallforms].[suncomctpr]([datew] ASC);

