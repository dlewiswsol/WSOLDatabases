﻿CREATE TABLE [dbo].[PERFORMANCE] (
    [IDPERFORMANCE] NUMERIC (20)     NOT NULL,
    [IDAPPLICANT]   NUMERIC (20)     NOT NULL,
    [IDPROJECT]     NUMERIC (20)     NOT NULL,
    [NOTE]          VARCHAR (4000)   NOT NULL,
    [DATECREATED]   DATETIME2 (0)    NOT NULL,
    [IDUSER]        NUMERIC (20)     NOT NULL,
    [ROWID]         UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013135] PRIMARY KEY CLUSTERED ([IDPERFORMANCE] ASC),
    CONSTRAINT [SYS_C0013362] FOREIGN KEY ([IDPROJECT]) REFERENCES [dbo].[PROJECT] ([IDPROJECT]),
    CONSTRAINT [SYS_C0013571] FOREIGN KEY ([IDUSER]) REFERENCES [dbo].[USERS] ([IDUSER]),
    CONSTRAINT [SYS_C0013572] FOREIGN KEY ([IDPROJECT]) REFERENCES [dbo].[PROJECT] ([IDPROJECT]),
    CONSTRAINT [SYS_C0013573] FOREIGN KEY ([IDAPPLICANT]) REFERENCES [dbo].[applicant] ([IDAPPLICANT])
);






GO
CREATE NONCLUSTERED INDEX [XIF3PERFORMANCE]
    ON [dbo].[PERFORMANCE]([IDUSER] ASC);


GO
CREATE NONCLUSTERED INDEX [XIF2PERFORMANCE]
    ON [dbo].[PERFORMANCE]([IDPROJECT] ASC);


GO
CREATE NONCLUSTERED INDEX [XIF1PERFORMANCE]
    ON [dbo].[PERFORMANCE]([IDAPPLICANT] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[PERFORMANCE]([ROWID] ASC);


GO
