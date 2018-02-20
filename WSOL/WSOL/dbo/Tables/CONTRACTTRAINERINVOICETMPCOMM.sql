﻿CREATE TABLE [dbo].[CONTRACTTRAINERINVOICETMPCOMM] (
    [ID]                NUMERIC (20)  NOT NULL,
    [COMMENTS]          VARCHAR (500) NULL,
    [IDPREPARATIONUSER] NUMERIC (20)  NULL,
    CONSTRAINT [CONTRACTTRAINERINVOICETMPCOMM0] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [CONTRACTTRAINERINVOICETMPCOMM1] FOREIGN KEY ([IDPREPARATIONUSER]) REFERENCES [dbo].[PREPARATIONUSER] ([IDPREPARATIONUSER])
);
