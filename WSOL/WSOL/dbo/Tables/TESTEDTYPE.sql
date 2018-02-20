﻿CREATE TABLE [dbo].[TESTEDTYPE] (
    [IDTESTEDTYPE] NUMERIC (20)     NOT NULL,
    [NAME]         VARCHAR (500)    NOT NULL,
    [VISIBLE]      CHAR (1)         NOT NULL,
    [ROWID]        UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013152] PRIMARY KEY CLUSTERED ([IDTESTEDTYPE] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[TESTEDTYPE]([ROWID] ASC);


GO
