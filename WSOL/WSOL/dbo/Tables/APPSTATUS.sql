﻿CREATE TABLE [dbo].[APPSTATUS] (
    [IDAPPSTATUS] NUMERIC (20)     NOT NULL,
    [NAME]        VARCHAR (500)    NOT NULL,
    [VISIBLE]     CHAR (1)         DEFAULT ('Y') NOT NULL,
    [ROWID]       UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013114] PRIMARY KEY CLUSTERED ([IDAPPSTATUS] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[APPSTATUS]([ROWID] ASC);


GO
