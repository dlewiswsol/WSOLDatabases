﻿CREATE TABLE [dbo].[YZ_TB_SQL_JOBS_ON_FAILURE_ERRORS] (
    [TENANT_KEY]           INT            NULL,
    [SQL_JOB_NM]           VARCHAR (100)  NULL,
    [CST_ROW_CREATED_TIME] DATETIME       NOT NULL,
    [ERROR_MSG]            VARCHAR (2500) NULL,
    [ID]                   INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_YZ_TB_SQL_JOBS_ON_FAILURE_ERRORS] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_YZ_TB_SQL_JOBS_ON_FAILURE_ERRORS] UNIQUE NONCLUSTERED ([CST_ROW_CREATED_TIME] ASC)
);

