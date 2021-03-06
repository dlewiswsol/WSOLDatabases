﻿CREATE TABLE [dbo].[PROJECTSTATUS] (
    [IDPROJECTSTATUS]     NUMERIC (20)     NOT NULL,
    [IDAPPLICANT]         NUMERIC (20)     NOT NULL,
    [IDPROJECT]           NUMERIC (20)     NOT NULL,
    [IDPROJECTSTATUSTYPE] NUMERIC (20)     NOT NULL,
    [NOTIFIED]            DATETIME2 (0)    NOT NULL,
    [STATUSDATE]          DATETIME2 (0)    NOT NULL,
    [NOTE]                VARCHAR (4000)   NOT NULL,
    [IDUSER]              NUMERIC (20)     NOT NULL,
    [DATECREATED]         DATETIME2 (0)    NOT NULL,
    [STARTDATE]           DATETIME2 (0)    DEFAULT ('01-JAN-70') NOT NULL,
    [DONOTPURSUE]         CHAR (1)         DEFAULT ('N') NOT NULL,
    [ROWID]               UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C0013139] PRIMARY KEY CLUSTERED ([IDPROJECTSTATUS] ASC),
    CONSTRAINT [SYS_C0013367] FOREIGN KEY ([IDPROJECT]) REFERENCES [dbo].[PROJECT] ([IDPROJECT]),
    CONSTRAINT [SYS_C0013370] FOREIGN KEY ([IDPROJECTSTATUSTYPE]) REFERENCES [dbo].[PROJECTSTATUSTYPE] ([IDPROJECTSTATUSTYPE]),
    CONSTRAINT [SYS_C0013577] FOREIGN KEY ([IDPROJECT]) REFERENCES [dbo].[PROJECT] ([IDPROJECT]),
    CONSTRAINT [SYS_C0013578] FOREIGN KEY ([IDAPPLICANT]) REFERENCES [dbo].[applicant] ([IDAPPLICANT]),
    CONSTRAINT [SYS_C0013579] FOREIGN KEY ([IDUSER]) REFERENCES [dbo].[USERS] ([IDUSER]),
    CONSTRAINT [SYS_C0013580] FOREIGN KEY ([IDPROJECTSTATUSTYPE]) REFERENCES [dbo].[PROJECTSTATUSTYPE] ([IDPROJECTSTATUSTYPE])
);






GO
CREATE NONCLUSTERED INDEX [XIF6PROJECTSTATUS]
    ON [dbo].[PROJECTSTATUS]([IDPROJECT] ASC);


GO
CREATE NONCLUSTERED INDEX [XIF5PROJECTSTATUS]
    ON [dbo].[PROJECTSTATUS]([IDAPPLICANT] ASC);


GO
CREATE NONCLUSTERED INDEX [XIF4PROJECTSTATUS]
    ON [dbo].[PROJECTSTATUS]([IDUSER] ASC);


GO
CREATE NONCLUSTERED INDEX [XIF3PROJECTSTATUS2]
    ON [dbo].[PROJECTSTATUS]([DATECREATED] ASC);


GO
CREATE NONCLUSTERED INDEX [XIF3PROJECTSTATUS]
    ON [dbo].[PROJECTSTATUS]([IDPROJECTSTATUSTYPE] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ROWID$INDEX]
    ON [dbo].[PROJECTSTATUS]([ROWID] ASC);


GO
