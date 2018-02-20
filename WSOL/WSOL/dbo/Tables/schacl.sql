CREATE TABLE [dbo].[schacl] (
    [id]            BIGINT        IDENTITY (1931165, 1) NOT NULL,
    [idagent]       BIGINT        DEFAULT ((0)) NOT NULL,
    [idprog]        BIGINT        DEFAULT ((0)) NOT NULL,
    [dateins]       DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [projAvailMask] CHAR (7)      DEFAULT (N'1111111') NOT NULL,
    CONSTRAINT [PK_schacl_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_schacl_2EC8735BA5CB5BDC416F70428CAC3074]
    ON [dbo].[schacl]([idprog] ASC)
    INCLUDE([idagent]);


GO
CREATE NONCLUSTERED INDEX [nci_wi_schacl_C960F5D2E210528B26DA6231D4C48B11]
    ON [dbo].[schacl]([idagent] ASC, [idprog] ASC, [projAvailMask] ASC);


GO
CREATE NONCLUSTERED INDEX [idprog]
    ON [dbo].[schacl]([idprog] ASC);


GO
ALTER INDEX [idprog]
    ON [dbo].[schacl] DISABLE;


GO
CREATE NONCLUSTERED INDEX [idagent]
    ON [dbo].[schacl]([idagent] ASC, [idprog] ASC);


GO
ALTER INDEX [idagent]
    ON [dbo].[schacl] DISABLE;

