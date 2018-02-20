CREATE TABLE [smallforms].[contactsolutiontest] (
    [aaa]        VARCHAR (MAX)    NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_contactsolutiontest_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

