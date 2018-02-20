CREATE TABLE [dbo].[submchanges] (
    [id]       BIGINT          IDENTITY (44326, 1) NOT NULL,
    [idsubm]   BIGINT          DEFAULT ((0)) NOT NULL,
    [idprogr]  BIGINT          DEFAULT ((0)) NOT NULL,
    [idagent]  BIGINT          DEFAULT ((0)) NOT NULL,
    [value]    DECIMAL (12, 4) DEFAULT ((0.0000)) NOT NULL,
    [strvalue] VARCHAR (50)    DEFAULT (N'') NOT NULL,
    [idnote]   BIGINT          DEFAULT ((0)) NOT NULL,
    [datew]    DATE            DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]    TIME (7)        DEFAULT ('00:00:00') NOT NULL,
    [newvalue] DECIMAL (12, 4) DEFAULT ((0.0000)) NOT NULL,
    CONSTRAINT [PK_submchanges_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [i02]
    ON [dbo].[submchanges]([idagent] ASC, [idprogr] ASC, [datew] ASC);


GO
ALTER INDEX [i02]
    ON [dbo].[submchanges] DISABLE;


GO
CREATE NONCLUSTERED INDEX [i01]
    ON [dbo].[submchanges]([idsubm] ASC);


GO
ALTER INDEX [i01]
    ON [dbo].[submchanges] DISABLE;

