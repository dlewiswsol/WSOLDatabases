﻿CREATE TABLE [dbo].[PROJTYPESABLELIST] (
    [IDPROJTYPESABLELIST] NUMERIC (20)  NOT NULL,
    [NAME]                VARCHAR (500) NOT NULL,
    [VISIBLE]             CHAR (1)      DEFAULT ('Y') NOT NULL,
    CONSTRAINT [SYS_C0013141] PRIMARY KEY CLUSTERED ([IDPROJTYPESABLELIST] ASC)
);

