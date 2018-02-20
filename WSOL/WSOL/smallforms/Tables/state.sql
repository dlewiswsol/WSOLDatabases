CREATE TABLE [smallforms].[state] (
    [idstate] CHAR (2)      DEFAULT (N'') NOT NULL,
    [name]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [visible] CHAR (1)      DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_state_idstate] PRIMARY KEY CLUSTERED ([idstate] ASC)
);


GO
CREATE NONCLUSTERED INDEX [state01]
    ON [smallforms].[state]([name] ASC);

