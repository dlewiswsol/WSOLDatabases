﻿CREATE TABLE [dbo].[WORKSTATIONOPERATION] (
    [ID]      NUMERIC (20)     NOT NULL,
    [NAME]    VARCHAR (100)    NOT NULL,
    [VERSION] NUMERIC (20)     NOT NULL,
    [ROWID]   UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [SYS_C0013305] PRIMARY KEY CLUSTERED ([ID] ASC)
);

