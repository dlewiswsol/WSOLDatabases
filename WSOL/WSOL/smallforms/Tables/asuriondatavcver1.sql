CREATE TABLE [smallforms].[asuriondatavcver1] (
    [id]         BIGINT           DEFAULT ((0)) NOT NULL,
    [custname]   VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [adr1]       VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [adr2]       VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [city]       VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [state]      VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [zip]        VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [vernum1]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [vernum2]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [vernum3]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [vernum4]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [vernum5]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [vernum6]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [comments]   VARCHAR (MAX)    NOT NULL,
    [agent]      VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [datew]      DATE             DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]      TIME (7)         DEFAULT ('00:00:00') NOT NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_asuriondatavcver1_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

