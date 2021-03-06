﻿CREATE TABLE [dbo].[AVAILABILITYLIST] (
    [IDAVAILABILITYLIST] NUMERIC (20)     NOT NULL,
    [NAME]               VARCHAR (500)    NOT NULL,
    [VISIBLE]            CHAR (1)         DEFAULT ('Y') NOT NULL,
    [ROWID]              UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013115] PRIMARY KEY CLUSTERED ([IDAVAILABILITYLIST] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[AVAILABILITYLIST]([ROWID] ASC);


GO
