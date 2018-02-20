﻿CREATE TABLE [dbo].[AGE] (
    [IDAGE]   NUMERIC (20)     NOT NULL,
    [NAME]    VARCHAR (100)    NOT NULL,
    [VISIBLE] CHAR (1)         DEFAULT ('Y') NOT NULL,
    [ROWID]   UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013106] PRIMARY KEY CLUSTERED ([IDAGE] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[AGE]([ROWID] ASC);


GO
