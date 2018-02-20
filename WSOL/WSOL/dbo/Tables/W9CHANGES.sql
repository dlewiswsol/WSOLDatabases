﻿CREATE TABLE [dbo].[W9CHANGES] (
    [IDW9CHANGES] NUMERIC (20)  NOT NULL,
    [IDAPPLICANT] NUMERIC (20)  NOT NULL,
    [NEWW9VALUE]  CHAR (1)      NOT NULL,
    [TYPEOFW9]    CHAR (1)      NOT NULL,
    [DATEW]       DATETIME2 (0) NOT NULL,
    CONSTRAINT [SYS_C0013210] PRIMARY KEY CLUSTERED ([IDW9CHANGES] ASC),
    CONSTRAINT [W9CHANGES_NEWW9VALUE_C00] CHECK ([NEWW9VALUE]='N' OR [NEWW9VALUE]='Y'),
    CONSTRAINT [W9CHANGES_TYPEOFW9_C00] CHECK ([TYPEOFW9]='C' OR [TYPEOFW9]='I')
);


GO
CREATE NONCLUSTERED INDEX [W9CHANGES_IND1]
    ON [dbo].[W9CHANGES]([DATEW] ASC, [NEWW9VALUE] ASC);
