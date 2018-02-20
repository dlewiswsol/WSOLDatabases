CREATE TABLE [dbo].[egenciaopmap] (
    [id]              BIGINT        IDENTITY (455, 1) NOT NULL,
    [agentDataFileId] VARCHAR (500) NOT NULL,
    [teamAssigned]    VARCHAR (500) NOT NULL,
    [email]           VARCHAR (500) NOT NULL,
    [effectiveDate]   DATE          NOT NULL,
    [created]         DATETIME2 (0) NOT NULL,
    [agents_id]       BIGINT        DEFAULT (NULL) NULL,
    CONSTRAINT [PK_egenciaopmap_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [egenciaopmap$agentDataFileId_idx] UNIQUE NONCLUSTERED ([agentDataFileId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_EgenciaOPMap_agents1_idx]
    ON [dbo].[egenciaopmap]([agents_id] ASC);


GO
ALTER INDEX [fk_EgenciaOPMap_agents1_idx]
    ON [dbo].[egenciaopmap] DISABLE;

