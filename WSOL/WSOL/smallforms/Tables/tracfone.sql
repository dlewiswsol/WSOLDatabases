CREATE TABLE [smallforms].[tracfone] (
    [filename]   VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [filedate]   VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [filetime]   VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [filesize]   VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [datew]      DATETIME2 (0)    DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_tracfone_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

