﻿CREATE TABLE [dbo].[STATE] (
    [IDSTATE] CHAR (2)         NOT NULL,
    [NAME]    VARCHAR (200)    NOT NULL,
    [VISIBLE] CHAR (1)         DEFAULT ('Y') NOT NULL,
    [COUNTRY] CHAR (2)         DEFAULT ('00') NOT NULL,
    [ROWID]   UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013148] PRIMARY KEY CLUSTERED ([IDSTATE] ASC),
    CONSTRAINT [SYS_C0013373] FOREIGN KEY ([COUNTRY]) REFERENCES [dbo].[COUNTRY] ([IDCOUNTRY]),
    CONSTRAINT [SYS_C0013583] FOREIGN KEY ([COUNTRY]) REFERENCES [dbo].[COUNTRY] ([IDCOUNTRY])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[STATE]([ROWID] ASC);


GO
