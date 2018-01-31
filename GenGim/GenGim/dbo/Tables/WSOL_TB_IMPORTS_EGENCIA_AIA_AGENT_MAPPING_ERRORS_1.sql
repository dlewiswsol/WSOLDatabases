﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_EGENCIA_AIA_AGENT_MAPPING_ERRORS] (
    [INVOICE_MAP_KEY]       VARCHAR (100)  NOT NULL,
    [SKILL]                 VARCHAR (50)   NOT NULL,
    [EMAIL_ADDRESS]         VARCHAR (100)  NULL,
    [EFFECTIVE_DATE]        DATETIME       NULL,
    [RESOURCE_NAME]         VARCHAR (100)  NULL,
    [FTP_FILE_NAME]         VARCHAR (100)  NULL,
    [WS_ROW_CREATED_TIME]   DATETIME       NULL,
    [IMPORT_SUB_GROUP_NAME] VARCHAR (100)  NULL,
    [ERROR_TAG]             VARCHAR (50)   NULL,
    [ERROR_MSG]             VARCHAR (2500) NULL,
    [ID]                    INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_EGENCIA_AIA_AGENT_MAPPING_ERRORS] PRIMARY KEY CLUSTERED ([ID] ASC)
);

