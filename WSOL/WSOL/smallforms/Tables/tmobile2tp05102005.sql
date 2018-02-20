CREATE TABLE [smallforms].[tmobile2tp05102005] (
    [id]         BIGINT           DEFAULT ((0)) NOT NULL,
    [name]       VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [mobile]     VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [make]       VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [model]      VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [changeplan] VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [reqcopy]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [notes]      VARCHAR (MAX)    NOT NULL,
    [agentid]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [datew]      DATETIME2 (0)    DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_tmobile2tp05102005_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

