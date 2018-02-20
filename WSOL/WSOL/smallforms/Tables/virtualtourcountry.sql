CREATE TABLE [smallforms].[virtualtourcountry] (
    [idcountry]  CHAR (2)         DEFAULT (N'') NOT NULL,
    [name]       VARCHAR (MAX)    NOT NULL,
    [visible]    CHAR (1)         DEFAULT (N'Y') NOT NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_virtualtourcountry_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

