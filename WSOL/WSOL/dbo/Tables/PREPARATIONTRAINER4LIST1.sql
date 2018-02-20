﻿CREATE TABLE [dbo].[PREPARATIONTRAINER4LIST1] (
    [ID]                   NUMERIC (20) NOT NULL,
    [IDPREPARATIONTRAINER] NUMERIC (20) NOT NULL,
    CONSTRAINT [PREPARATIONTRAINER4LIST1C0] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [IDPREPARATIONTRAINER_C001] FOREIGN KEY ([IDPREPARATIONTRAINER]) REFERENCES [dbo].[PREPARATIONTRAINER] ([IDPREPARATIONTRAINER])
);


GO
CREATE NONCLUSTERED INDEX [PREPARATIONTRAINER4LIST1]
    ON [dbo].[PREPARATIONTRAINER4LIST1]([IDPREPARATIONTRAINER] ASC);
