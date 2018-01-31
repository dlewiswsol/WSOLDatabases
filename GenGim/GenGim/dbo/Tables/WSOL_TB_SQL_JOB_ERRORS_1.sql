﻿CREATE TABLE [dbo].[WSOL_TB_SQL_JOB_ERRORS] (
    [TENANT_KEY]           INT            NULL,
    [SQL_JOB_NM]           VARCHAR (100)  NULL,
    [CST_ROW_CREATED_TIME] DATETIME       NOT NULL,
    [ERROR_MSG]            VARCHAR (2500) NULL,
    [ID]                   INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_SQL_JOB_ERRORS] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_SQL_JOB_ERRORS] UNIQUE NONCLUSTERED ([CST_ROW_CREATED_TIME] ASC)
);
