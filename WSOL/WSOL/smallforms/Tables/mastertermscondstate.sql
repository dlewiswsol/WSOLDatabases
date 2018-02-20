CREATE TABLE [smallforms].[mastertermscondstate] (
    [idstate] CHAR (2)      DEFAULT (N'') NOT NULL,
    [name]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [visible] CHAR (1)      DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_mastertermscondstate_idstate] PRIMARY KEY CLUSTERED ([idstate] ASC)
);


GO
CREATE NONCLUSTERED INDEX [state01]
    ON [smallforms].[mastertermscondstate]([name] ASC);

