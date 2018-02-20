﻿CREATE TABLE [dbo].[PREPARATIONTRAINER] (
    [IDPREPARATIONTRAINER] NUMERIC (20)  NOT NULL,
    [FIRSTNAME]            VARCHAR (100) NOT NULL,
    [LASTNAME]             VARCHAR (100) NOT NULL,
    [VISIBLE]              CHAR (1)      NOT NULL,
    [CREATED]              DATETIME2 (0) NOT NULL,
    [EMAIL]                VARCHAR (500) DEFAULT (' ') NOT NULL,
    [ISROSTER]             CHAR (1)      DEFAULT ('Y') NOT NULL,
    [ISONGOINGROSTER]      CHAR (1)      DEFAULT ('N') NOT NULL,
    CONSTRAINT [PREPARATIONTRAINER_C00] PRIMARY KEY CLUSTERED ([IDPREPARATIONTRAINER] ASC),
    CONSTRAINT [SYS_C0013188] CHECK ([ISROSTER]='N' OR [ISROSTER]='Y'),
    CONSTRAINT [SYS_C0013189] CHECK ([ISONGOINGROSTER]='N' OR [ISONGOINGROSTER]='Y'),
    CONSTRAINT [SYS_C0013190] CHECK ([VISIBLE]='N' OR [VISIBLE]='Y'),
    CONSTRAINT [SYS_C0013395] CHECK ([ISROSTER]='N' OR [ISROSTER]='Y'),
    CONSTRAINT [SYS_C0013396] CHECK ([ISONGOINGROSTER]='N' OR [ISONGOINGROSTER]='Y'),
    CONSTRAINT [SYS_C0013397] CHECK ([VISIBLE]='N' OR [VISIBLE]='Y')
);


GO
CREATE NONCLUSTERED INDEX [PREPARATIONTRAINERI01]
    ON [dbo].[PREPARATIONTRAINER]([FIRSTNAME] ASC, [LASTNAME] ASC);

