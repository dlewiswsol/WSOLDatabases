CREATE TABLE [dbo].[egenciaopincomfile] (
    [id]        BIGINT         IDENTITY (704, 1) NOT NULL,
    [fileName]  VARCHAR (3000) NOT NULL,
    [agents_id] BIGINT         NOT NULL,
    [status]    VARCHAR (8)    NOT NULL,
    [created]   DATETIME2 (0)  NOT NULL,
    CONSTRAINT [PK_egenciaopincomfile_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_EgenciaOPIncomFile_agents1_idx]
    ON [dbo].[egenciaopincomfile]([agents_id] ASC);


GO
ALTER INDEX [fk_EgenciaOPIncomFile_agents1_idx]
    ON [dbo].[egenciaopincomfile] DISABLE;

