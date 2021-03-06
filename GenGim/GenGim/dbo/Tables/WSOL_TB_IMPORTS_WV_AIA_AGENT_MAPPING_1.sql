﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1] (
    [RESOURCE_NAME]    VARCHAR (100) NULL,
    [INVOICE_MAP_KEY]  VARCHAR (50)  NOT NULL,
    [FF_EMAIL_MAP_KEY] VARCHAR (50)  NULL,
    [FF_EMAIL_ADDRESS] VARCHAR (100) NULL,
    [FF_INVOICE_GROUP] VARCHAR (50)  NULL,
    [FF_PAY_GROUP]     VARCHAR (50)  NULL,
    [FTP_FILE_NAME]    VARCHAR (100) NULL,
    [ID]               INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1] PRIMARY KEY CLUSTERED ([ID] ASC)
);

