CREATE TABLE [dbo].[subm] (
    [id]             BIGINT          IDENTITY (938074, 1) NOT NULL,
    [idprogr]        BIGINT          DEFAULT ((0)) NOT NULL,
    [idagent]        BIGINT          DEFAULT ((0)) NOT NULL,
    [value]          DECIMAL (12, 4) DEFAULT ((0.0000)) NOT NULL,
    [strvalue]       VARCHAR (50)    DEFAULT (N'') NOT NULL,
    [idnote]         BIGINT          DEFAULT ((0)) NOT NULL,
    [datew]          DATE            DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]          TIME (7)        DEFAULT ('00:00:00') NOT NULL,
    [ideditnote]     BIGINT          DEFAULT ((1)) NOT NULL,
    [idautoinvTotal] BIGINT          DEFAULT ((0)) NOT NULL,
    [payrateExtra]   DECIMAL (12, 4) DEFAULT ((0.0000)) NOT NULL,
    CONSTRAINT [PK_subm_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_subm_32171ACF7B3E1C2EB4E59FA63C34FAC2]
    ON [dbo].[subm]([idprogr] ASC)
    INCLUDE([datew], [idagent], [payrateExtra], [timew], [value]);


GO
CREATE NONCLUSTERED INDEX [nci_wi_subm_DC90D9B7DB9AAD992D0FDA3F28851EB3]
    ON [dbo].[subm]([idagent] ASC, [idprogr] ASC)
    INCLUDE([datew], [timew], [value]);


GO
CREATE NONCLUSTERED INDEX [submi03]
    ON [dbo].[subm]([datew] ASC);


GO
ALTER INDEX [submi03]
    ON [dbo].[subm] DISABLE;


GO
CREATE NONCLUSTERED INDEX [nci_wi_subm_13FE86456AB74243E06B6AAA5B310C67]
    ON [dbo].[subm]([datew] ASC)
    INCLUDE([idagent], [idautoinvTotal], [ideditnote], [idnote], [idprogr], [payrateExtra], [strvalue], [timew], [value]);


GO
CREATE NONCLUSTERED INDEX [aiz1]
    ON [dbo].[subm]([idagent] ASC, [idprogr] ASC, [datew] ASC);


GO
ALTER INDEX [aiz1]
    ON [dbo].[subm] DISABLE;

