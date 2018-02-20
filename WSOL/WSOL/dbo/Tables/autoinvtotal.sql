CREATE TABLE [dbo].[autoinvtotal] (
    [idautoinvTotal] BIGINT          IDENTITY (259258, 1) NOT NULL,
    [idautoinvFile]  BIGINT          DEFAULT ((0)) NOT NULL,
    [value]          DECIMAL (12, 2) DEFAULT ((0.00)) NOT NULL,
    [rate]           DECIMAL (12, 4) DEFAULT ((0.0000)) NOT NULL,
    [total]          DECIMAL (12, 2) DEFAULT ((0.00)) NOT NULL,
    [idproject]      BIGINT          DEFAULT ((0)) NOT NULL,
    [idagent]        BIGINT          DEFAULT ((0)) NOT NULL,
    [recstatus]      CHAR (1)        DEFAULT (N'') NOT NULL,
    [datew]          DATETIME2 (0)   DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_autoinvtotal_idautoinvTotal] PRIMARY KEY CLUSTERED ([idautoinvTotal] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_autoinvtotal_4FBCA2163D724F1B7FF5DCE6FD9DECC6]
    ON [dbo].[autoinvtotal]([recstatus] ASC)
    INCLUDE([datew], [idagent], [idproject], [rate], [total], [value]);


GO
CREATE NONCLUSTERED INDEX [autoinvTotali04]
    ON [dbo].[autoinvtotal]([idautoinvFile] ASC);


GO
CREATE NONCLUSTERED INDEX [autoinvTotal_i01]
    ON [dbo].[autoinvtotal]([idagent] ASC, [recstatus] ASC);

