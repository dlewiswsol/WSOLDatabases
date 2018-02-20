CREATE TABLE [dbo].[aiifdata] (
    [id]                    BIGINT        IDENTITY (3091, 1) NOT NULL,
    [agents_id]             BIGINT        NOT NULL,
    [aiifTopic_id]          BIGINT        NOT NULL,
    [aiifManager_agents_id] BIGINT        NOT NULL,
    [aiifProgram_id]        BIGINT        NOT NULL,
    [detailedInfo]          VARCHAR (MAX) NOT NULL,
    [created]               DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_aiifdata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_aiifData_aiifTopic]
    ON [dbo].[aiifdata]([aiifTopic_id] ASC);


GO
CREATE NONCLUSTERED INDEX [fk_aiifData_aiifProgram1]
    ON [dbo].[aiifdata]([aiifProgram_id] ASC);


GO
CREATE NONCLUSTERED INDEX [fk_aiifData_aiifManager1]
    ON [dbo].[aiifdata]([aiifManager_agents_id] ASC);


GO
CREATE NONCLUSTERED INDEX [fk_aiifData_agents1]
    ON [dbo].[aiifdata]([agents_id] ASC);

