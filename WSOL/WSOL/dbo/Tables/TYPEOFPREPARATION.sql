﻿CREATE TABLE [dbo].[TYPEOFPREPARATION] (
    [IDTYPEOFPREPARATION] NUMERIC (20)  NOT NULL,
    [NAME]                VARCHAR (100) NOT NULL,
    [VISIBLE]             CHAR (1)      NOT NULL,
    [CREATED]             DATETIME2 (0) NOT NULL,
    [ISROSTER]            CHAR (1)      DEFAULT ('Y') NOT NULL,
    [ISONGOINGROSTER]     CHAR (1)      DEFAULT ('Y') NOT NULL,
    CONSTRAINT [TYPEOFPREPARATION_C00] PRIMARY KEY CLUSTERED ([IDTYPEOFPREPARATION] ASC),
    CONSTRAINT [SYS_C0013185] CHECK ([ISROSTER]='N' OR [ISROSTER]='Y'),
    CONSTRAINT [SYS_C0013186] CHECK ([ISONGOINGROSTER]='N' OR [ISONGOINGROSTER]='Y'),
    CONSTRAINT [SYS_C0013393] CHECK ([ISONGOINGROSTER]='N' OR [ISONGOINGROSTER]='Y')
);

