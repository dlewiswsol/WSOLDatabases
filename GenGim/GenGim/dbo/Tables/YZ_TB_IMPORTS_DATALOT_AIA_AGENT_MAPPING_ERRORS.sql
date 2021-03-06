﻿CREATE TABLE [dbo].[YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS] (
    [RESOURCE_NAME]         VARCHAR (100)  NULL,
    [EMAIL]                 VARCHAR (100)  NULL,
    [FF_USERNAME]           VARCHAR (50)   NULL,
    [FF_AGENT_ID]           VARCHAR (50)   NULL,
    [INVOICE_MAP_KEY]       VARCHAR (50)   NOT NULL,
    [FF_RESOURCE]           VARCHAR (50)   NOT NULL,
    [FTP_FILE_NAME]         VARCHAR (100)  NULL,
    [PAY_GROUP]             VARCHAR (50)   NULL,
    [FF_ASA_NAME]           VARCHAR (100)  NULL,
    [WS_ROW_CREATED_TIME]   DATETIME       NULL,
    [IMPORT_SUB_GROUP_NAME] VARCHAR (100)  NULL,
    [ERROR_TAG]             VARCHAR (50)   NULL,
    [ERROR_MSG]             VARCHAR (2500) NULL,
    [ID]                    INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS] PRIMARY KEY CLUSTERED ([ID] ASC)
);

