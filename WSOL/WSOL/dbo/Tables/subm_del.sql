CREATE TABLE [dbo].[subm_del] (
    [id]             BIGINT          DEFAULT ((0)) NOT NULL,
    [idprogr]        BIGINT          DEFAULT ((0)) NOT NULL,
    [idagent]        BIGINT          DEFAULT ((0)) NOT NULL,
    [value]          DECIMAL (12, 4) DEFAULT ((0.0000)) NOT NULL,
    [strvalue]       VARCHAR (50)    DEFAULT (N'') NOT NULL,
    [idnote]         BIGINT          DEFAULT ((0)) NOT NULL,
    [datew]          DATE            DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]          TIME (7)        DEFAULT ('00:00:00') NOT NULL,
    [datedel]        DATE            DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timedel]        TIME (7)        DEFAULT ('00:00:00') NOT NULL,
    [idautoinvTotal] BIGINT          DEFAULT ((0)) NOT NULL,
    [payrateExtra]   DECIMAL (12, 4) DEFAULT ((0.0000)) NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [id]
    ON [dbo].[subm_del]([id] ASC);


GO
ALTER INDEX [id]
    ON [dbo].[subm_del] DISABLE;

