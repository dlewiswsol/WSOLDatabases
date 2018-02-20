﻿CREATE TABLE [dbo].[CONTRACTTRAINERMYMANAGER] (
    [ID]                NUMERIC (20)  NOT NULL,
    [IDPREPARATIONUSER] NUMERIC (20)  NOT NULL,
    [VISIBLE]           CHAR (1)      DEFAULT ('Y') NOT NULL,
    [CREATED]           DATETIME2 (0) NOT NULL,
    CONSTRAINT [CONTRACTTRAINERMYMANAGER_C00] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SYS_C0013320] CHECK ([VISIBLE]='N' OR [VISIBLE]='Y'),
    CONSTRAINT [SYS_C0013527] CHECK ([VISIBLE]='N' OR [VISIBLE]='Y'),
    CONSTRAINT [CONTRACTTRAINERMYMANAGER_C01] FOREIGN KEY ([IDPREPARATIONUSER]) REFERENCES [dbo].[PREPARATIONUSER] ([IDPREPARATIONUSER])
);


GO
CREATE NONCLUSTERED INDEX [CONTRACTTRAINERMYMANAGERI2]
    ON [dbo].[CONTRACTTRAINERMYMANAGER]([VISIBLE] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [CONTRACTTRAINERMYMANAGERI1]
    ON [dbo].[CONTRACTTRAINERMYMANAGER]([IDPREPARATIONUSER] ASC);

