CREATE TABLE [smallforms].[asuriondataorg] (
    [id]         BIGINT           DEFAULT ((0)) NOT NULL,
    [mobnumber]  VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [comments]   VARCHAR (MAX)    NOT NULL,
    [agent]      VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [datew]      DATE             DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]      TIME (7)         DEFAULT ('00:00:00') NOT NULL,
    [q1]         VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [q2]         VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [q3]         VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [q4]         VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [q5]         VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_asuriondataorg_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

