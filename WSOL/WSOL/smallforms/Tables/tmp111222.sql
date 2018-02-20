CREATE TABLE [smallforms].[tmp111222] (
    [dbname]     VARCHAR (255)    NOT NULL,
    [dbuser]     VARCHAR (255)    NOT NULL,
    [dbpwd]      VARCHAR (255)    NOT NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_tmp111222_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

