﻿CREATE TABLE [dbo].[YZ_TB_IMPORTS_DATALOT_SD_INVOICE_HOLIDAYS_ADDL] (
    [HOLIDAY_DATE] DATETIME    NOT NULL,
    [ID_EXT]       VARCHAR (3) NOT NULL,
    [ID]           INT         IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_YZ_TB_IMPORTS_DATALOT_SD_INVOICE_HOLIDAYS_ADDL] PRIMARY KEY CLUSTERED ([ID] ASC)
);

