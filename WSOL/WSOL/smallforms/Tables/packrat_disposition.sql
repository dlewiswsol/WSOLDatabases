CREATE TABLE [smallforms].[packrat_disposition] (
    [iddisposition] BIGINT        DEFAULT ((0)) NOT NULL,
    [name]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datecreated]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timecreated]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_packrat_disposition_iddisposition] PRIMARY KEY CLUSTERED ([iddisposition] ASC)
);

