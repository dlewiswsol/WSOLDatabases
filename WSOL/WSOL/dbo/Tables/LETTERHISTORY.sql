﻿CREATE TABLE [dbo].[LETTERHISTORY] (
    [IDLETTERHISTORY]  NUMERIC (20)  NOT NULL,
    [IDLETTERTEMPLATE] NUMERIC (20)  NOT NULL,
    [IDAPPLICANT]      NUMERIC (20)  NOT NULL,
    [CREATEDBY]        NUMERIC (20)  NOT NULL,
    [CREATEDDATE]      DATETIME2 (0) NOT NULL,
    CONSTRAINT [LETTERHISTORY_C00] PRIMARY KEY CLUSTERED ([IDLETTERHISTORY] ASC),
    CONSTRAINT [LETTERHISTORY_C01] FOREIGN KEY ([IDLETTERTEMPLATE]) REFERENCES [dbo].[LETTERTEMPLATE] ([IDLETTERTEMPLATE]),
    CONSTRAINT [LETTERHISTORY_C02] FOREIGN KEY ([IDAPPLICANT]) REFERENCES [dbo].[applicant] ([IDAPPLICANT]),
    CONSTRAINT [LETTERHISTORY_C03] FOREIGN KEY ([CREATEDBY]) REFERENCES [dbo].[USERS] ([IDUSER])
);




GO
CREATE NONCLUSTERED INDEX [LETTERHISTORY_I01]
    ON [dbo].[LETTERHISTORY]([IDAPPLICANT] ASC);
