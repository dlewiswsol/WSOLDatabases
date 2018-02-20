CREATE TABLE [smallforms].[virtualtourstate] (
    [idstate] CHAR (2)      DEFAULT (N'') NOT NULL,
    [name]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [visible] CHAR (1)      DEFAULT (N'Y') NOT NULL,
    CONSTRAINT [PK_virtualtourstate_idstate] PRIMARY KEY CLUSTERED ([idstate] ASC)
);

