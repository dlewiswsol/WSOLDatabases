﻿CREATE TABLE [dbo].[OTHERDOCUMENTDOCTYPE] (
    [ID]      NUMERIC (20)  NOT NULL,
    [NAME]    VARCHAR (100) NOT NULL,
    [VISIBLE] CHAR (1)      NOT NULL,
    CONSTRAINT [SYS_C0013297] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [OTHERDOCUMENTDOCTYPE_C1] CHECK ([VISIBLE]='N' OR [VISIBLE]='Y')
);
