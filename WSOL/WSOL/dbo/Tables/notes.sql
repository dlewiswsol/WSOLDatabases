CREATE TABLE [dbo].[notes] (
    [id]      BIGINT        IDENTITY (607262, 1) NOT NULL,
    [cont]    VARCHAR (MAX) NOT NULL,
    [weekend] DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [datecr]  DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_notes_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [notesi01]
    ON [dbo].[notes]([weekend] ASC);


GO
ALTER INDEX [notesi01]
    ON [dbo].[notes] DISABLE;

