CREATE TABLE [smallforms].[a] (
    [a]          VARCHAR (30)     DEFAULT (NULL) NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_a_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

