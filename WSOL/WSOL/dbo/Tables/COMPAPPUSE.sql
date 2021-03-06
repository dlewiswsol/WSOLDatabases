﻿CREATE TABLE [dbo].[COMPAPPUSE] (
    [IDAPPLICANT]   NUMERIC (20)     NOT NULL,
    [IDCOMPAPPLIST] NUMERIC (20)     NOT NULL,
    [ROWID]         UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013119] PRIMARY KEY CLUSTERED ([IDAPPLICANT] ASC, [IDCOMPAPPLIST] ASC),
    CONSTRAINT [SYS_C0013563] FOREIGN KEY ([IDCOMPAPPLIST]) REFERENCES [dbo].[COMPAPPLIST] ([IDCOMPAPPLIST]),
    CONSTRAINT [SYS_C0013564] FOREIGN KEY ([IDAPPLICANT]) REFERENCES [dbo].[applicant] ([IDAPPLICANT])
);






GO
CREATE NONCLUSTERED INDEX [XIF2COMPAPPUSE]
    ON [dbo].[COMPAPPUSE]([IDCOMPAPPLIST] ASC);


GO
CREATE NONCLUSTERED INDEX [XIF1COMPAPPUSE]
    ON [dbo].[COMPAPPUSE]([IDAPPLICANT] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[COMPAPPUSE]([ROWID] ASC);


GO
