﻿CREATE TABLE [dbo].[AVAILABILITYUSE] (
    [IDAPPLICANT]        NUMERIC (20)     NOT NULL,
    [IDAVAILABILITYLIST] NUMERIC (20)     NOT NULL,
    [ROWID]              UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013116] PRIMARY KEY CLUSTERED ([IDAPPLICANT] ASC, [IDAVAILABILITYLIST] ASC),
    CONSTRAINT [SYS_C0013351] FOREIGN KEY ([IDAVAILABILITYLIST]) REFERENCES [dbo].[AVAILABILITYLIST] ([IDAVAILABILITYLIST]),
    CONSTRAINT [SYS_C0013561] FOREIGN KEY ([IDAVAILABILITYLIST]) REFERENCES [dbo].[AVAILABILITYLIST] ([IDAVAILABILITYLIST]),
    CONSTRAINT [SYS_C0013562] FOREIGN KEY ([IDAPPLICANT]) REFERENCES [dbo].[applicant] ([IDAPPLICANT])
);






GO
CREATE NONCLUSTERED INDEX [XIF2AVAILABILITYUSE]
    ON [dbo].[AVAILABILITYUSE]([IDAVAILABILITYLIST] ASC);


GO
CREATE NONCLUSTERED INDEX [XIF1AVAILABILITYUSE]
    ON [dbo].[AVAILABILITYUSE]([IDAPPLICANT] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[AVAILABILITYUSE]([ROWID] ASC);


GO
