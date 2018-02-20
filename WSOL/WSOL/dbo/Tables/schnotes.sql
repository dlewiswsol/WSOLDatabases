CREATE TABLE [dbo].[schnotes] (
    [id]       BIGINT        IDENTITY (625622, 1) NOT NULL,
    [idagent]  BIGINT        DEFAULT ((0)) NOT NULL,
    [idprog]   BIGINT        DEFAULT ((0)) NOT NULL,
    [note]     VARCHAR (MAX) NOT NULL,
    [datenote] DATE          DEFAULT ([dbo].[GETDATE]()) NULL,
    [dateins]  DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_schnotes_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_schnotes_6E659FF3D273E8F8111AF763E3DB810A]
    ON [dbo].[schnotes]([datenote] ASC, [idagent] ASC, [idprog] ASC)
    INCLUDE([note]);


GO
CREATE NONCLUSTERED INDEX [schnotes_i1]
    ON [dbo].[schnotes]([idprog] ASC, [datenote] ASC, [idagent] ASC);


GO
ALTER INDEX [schnotes_i1]
    ON [dbo].[schnotes] DISABLE;


GO
CREATE NONCLUSTERED INDEX [idprog]
    ON [dbo].[schnotes]([idprog] ASC, [datenote] ASC);


GO
ALTER INDEX [idprog]
    ON [dbo].[schnotes] DISABLE;


GO
CREATE NONCLUSTERED INDEX [datenote]
    ON [dbo].[schnotes]([datenote] ASC);


GO
ALTER INDEX [datenote]
    ON [dbo].[schnotes] DISABLE;

