﻿CREATE TABLE [dbo].[SECRETQUESTION] (
    [IDSECRETQUESTION] NUMERIC (20)     NOT NULL,
    [NAME]             VARCHAR (500)    NOT NULL,
    [VISIBLE]          CHAR (1)         DEFAULT ('Y') NOT NULL,
    [ROWID]            UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013146] PRIMARY KEY CLUSTERED ([IDSECRETQUESTION] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[SECRETQUESTION]([ROWID] ASC);


GO
