﻿CREATE TABLE [dbo].[YZ_TB_IMPORTS_APFM_AIA_AGENT_MAPPING] (
    [RESOURCE_NAME]        VARCHAR (50)  NULL,
    [EMAIL]                VARCHAR (100) NULL,
    [INVOICE_MAP_KEY]      VARCHAR (50)  NOT NULL,
    [FF_OFFICIAL_ACL_NAME] VARCHAR (50)  NOT NULL,
    [FF_EMAIL_ADDRESS]     VARCHAR (100) NULL,
    [FTP_FILE_NAME]        VARCHAR (100) NULL,
    [CST_ROW_CREATED_TIME] DATETIME      NOT NULL,
    [CST_ROW_UPDATED_TIME] DATETIME      NULL,
    [ID]                   INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_YZ_TB_IMPORTS_APFM_AIA_AGENT_MAPPING] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_YZ_TB_IMPORTS_APFM_AIA_AGENT_MAPPING] UNIQUE NONCLUSTERED ([INVOICE_MAP_KEY] ASC)
);

