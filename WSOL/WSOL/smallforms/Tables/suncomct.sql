CREATE TABLE [smallforms].[suncomct] (
    [id]      BIGINT        IDENTITY (13384, 1) NOT NULL,
    [sel]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [agentid] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_suncomct_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [iSuncomCT01]
    ON [smallforms].[suncomct]([datew] ASC);

