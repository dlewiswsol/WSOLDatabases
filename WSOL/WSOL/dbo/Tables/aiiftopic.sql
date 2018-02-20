CREATE TABLE [dbo].[aiiftopic] (
    [id]      BIGINT        NOT NULL,
    [name]    VARCHAR (250) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_aiiftopic_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [name]
    ON [dbo].[aiiftopic]([name] ASC);

