CREATE TABLE [dbo].[aiifmanagerofdata] (
    [aiifData_id] BIGINT NOT NULL,
    [agents_id]   BIGINT NOT NULL,
    CONSTRAINT [PK_aiifmanagerofdata_aiifData_id] PRIMARY KEY CLUSTERED ([aiifData_id] ASC, [agents_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_aiifManagerOfData_agents1]
    ON [dbo].[aiifmanagerofdata]([agents_id] ASC);


GO
CREATE NONCLUSTERED INDEX [aiifManagerOfData_i1]
    ON [dbo].[aiifmanagerofdata]([aiifData_id] ASC);

