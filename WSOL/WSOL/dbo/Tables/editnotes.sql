CREATE TABLE [dbo].[editnotes] (
    [id]          BIGINT          IDENTITY (39428, 1) NOT NULL,
    [cont]        VARCHAR (MAX)   NOT NULL,
    [datecr]      DATETIME2 (0)   DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [idManager]   BIGINT          DEFAULT (NULL) NULL,
    [idSubm]      BIGINT          DEFAULT (NULL) NULL,
    [oldValue]    DECIMAL (12, 4) DEFAULT (NULL) NULL,
    [newValue]    DECIMAL (12, 4) DEFAULT (NULL) NULL,
    [oldStrValue] VARCHAR (50)    DEFAULT (NULL) NULL,
    [newStrValue] VARCHAR (50)    DEFAULT (NULL) NULL,
    CONSTRAINT [PK_editnotes_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [editnotesi01]
    ON [dbo].[editnotes]([idSubm] ASC);


GO
ALTER INDEX [editnotesi01]
    ON [dbo].[editnotes] DISABLE;

