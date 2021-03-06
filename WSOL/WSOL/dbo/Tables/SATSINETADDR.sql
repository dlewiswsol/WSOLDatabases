﻿CREATE TABLE [dbo].[SATSINETADDR] (
    [IDSATSINETADDR] NUMERIC (20)  NOT NULL,
    [IDSATSNIC]      NUMERIC (20)  NOT NULL,
    [INETADDR]       VARCHAR (500) NOT NULL,
    CONSTRAINT [SATSINETADDR_C00] PRIMARY KEY CLUSTERED ([IDSATSINETADDR] ASC),
    CONSTRAINT [SATSINETADDR_C01] FOREIGN KEY ([IDSATSNIC]) REFERENCES [dbo].[SATSNIC] ([IDSATSNIC]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [SATSINETADDRI01]
    ON [dbo].[SATSINETADDR]([IDSATSNIC] ASC);

