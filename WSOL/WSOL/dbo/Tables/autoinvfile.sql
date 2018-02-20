CREATE TABLE [dbo].[autoinvfile] (
    [idautoinvFile]   BIGINT        IDENTITY (3321, 1) NOT NULL,
    [idautoinvClient] BIGINT        DEFAULT ((0)) NOT NULL,
    [filetype]        CHAR (1)      DEFAULT (N'') NOT NULL,
    [filename]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [filedate]        DATETIME2 (7) DEFAULT ([dbo].[GETDATE]()) NULL,
    [filesize]        BIGINT        DEFAULT ((0)) NOT NULL,
    [datew]           DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_autoinvfile_idautoinvFile] PRIMARY KEY CLUSTERED ([idautoinvFile] ASC),
    CONSTRAINT [autoinvfile$filename] UNIQUE NONCLUSTERED ([filename] ASC, [idautoinvClient] ASC, [filetype] ASC)
);

