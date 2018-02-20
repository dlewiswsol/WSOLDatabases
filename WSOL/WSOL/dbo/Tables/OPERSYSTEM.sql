﻿CREATE TABLE [dbo].[OPERSYSTEM] (
    [IDOPERSYSTEM] NUMERIC (20)     NOT NULL,
    [NAME]         VARCHAR (500)    NOT NULL,
    [VISIBLE]      CHAR (1)         NOT NULL,
    [ROWID]        UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013133] PRIMARY KEY CLUSTERED ([IDOPERSYSTEM] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[OPERSYSTEM]([ROWID] ASC);


GO
