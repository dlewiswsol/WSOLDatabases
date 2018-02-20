CREATE TABLE [smallforms].[packrat_record] (
    [idrecord]      BIGINT        IDENTITY (1125, 1) NOT NULL,
    [rectype]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [firstname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastname]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [company]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [location]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datecreated]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timecreated]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [iddisposition] BIGINT        DEFAULT ((0)) NOT NULL,
    [recstatus]     VARCHAR (10)  DEFAULT (N'') NOT NULL,
    [lasttouch]     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [idnote]        BIGINT        DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_packrat_record_idrecord] PRIMARY KEY CLUSTERED ([idrecord] ASC)
);


GO
CREATE NONCLUSTERED INDEX [pr06]
    ON [smallforms].[packrat_record]([recstatus] ASC, [rectype] ASC);


GO
CREATE NONCLUSTERED INDEX [pr05]
    ON [smallforms].[packrat_record]([idnote] ASC);


GO
CREATE NONCLUSTERED INDEX [pr04]
    ON [smallforms].[packrat_record]([iddisposition] ASC);


GO
CREATE NONCLUSTERED INDEX [pr03]
    ON [smallforms].[packrat_record]([recstatus] ASC);


GO
CREATE NONCLUSTERED INDEX [pr02]
    ON [smallforms].[packrat_record]([datecreated] ASC);


GO
CREATE NONCLUSTERED INDEX [pr01]
    ON [smallforms].[packrat_record]([rectype] ASC);

