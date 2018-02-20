CREATE TABLE [smallforms].[zprep] (
    [f1]         DATETIME2 (0)    NOT NULL,
    [f2]         VARCHAR (255)    NOT NULL,
    [f3]         VARCHAR (255)    NOT NULL,
    [f4]         VARCHAR (255)    NOT NULL,
    [f5]         VARCHAR (255)    NOT NULL,
    [f6]         VARCHAR (MAX)    NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_zprep_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

