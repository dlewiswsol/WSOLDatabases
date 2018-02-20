CREATE TABLE [smallforms].[packrat_record_done] (
    [idrecord]      BIGINT        DEFAULT ((0)) NOT NULL,
    [rectype]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [firstname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastname]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [company]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [location]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datecreated]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timecreated]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [iddisposition] BIGINT        DEFAULT ((0)) NOT NULL,
    [recstatus]     CHAR (1)      DEFAULT (N'') NOT NULL,
    [lasttouch]     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [idnote]        BIGINT        DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_packrat_record_done_idrecord] PRIMARY KEY CLUSTERED ([idrecord] ASC)
);

