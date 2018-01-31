﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_GAR_SD_AIA_STATIC_DEFAULTS] (
    [PLATFORM]                          VARCHAR (50)  NULL,
    [STATUS]                            VARCHAR (50)  NULL,
    [INVOICE_MAP_KEY]                   VARCHAR (50)  NULL,
    [FIELD_NAME]                        VARCHAR (50)  NULL,
    [SCHEDULER_PROJECT_ID]              VARCHAR (50)  NULL,
    [SCHEDULER_ACL_NAME]                VARCHAR (50)  NULL,
    [ACD_ID_EXTENSION]                  VARCHAR (50)  NULL,
    [OFFICIAL_WSOL_CLIENT_ID]           VARCHAR (50)  NULL,
    [OFFICIAL_WSOL_CLIENT_NAME]         VARCHAR (50)  NULL,
    [OFFICIAL_ACD_CLIENT_ID]            VARCHAR (50)  NULL,
    [OFFICIAL_ACD_CLIENT_NAME]          VARCHAR (50)  NULL,
    [PRIMARY_PROJECT_MANAGER_ID]        VARCHAR (150) NULL,
    [DIRECTOR_OF_PROJECT_MANAGEMENT_ID] VARCHAR (150) NULL,
    [AGENT_TECHNOLOGY_MANAGER_ID]       VARCHAR (150) NULL,
    [CONTRACTOR_SUPPORT_PATHWAY]        VARCHAR (150) NULL,
    [INVOICE_SYSTEM_ID]                 VARCHAR (50)  NULL,
    [HOLIDAY_INVOICE_ID]                VARCHAR (50)  NULL,
    [HOLIDAY]                           VARCHAR (50)  NULL,
    [FILE_FORMAT_OF_PUSH]               VARCHAR (50)  NULL,
    [AGENT_PREPARATION_INVOICE_ID]      VARCHAR (50)  NULL,
    [NEW_ACL]                           VARCHAR (50)  NULL,
    [CURRENT_CATS]                      VARCHAR (50)  NULL,
    [CATS_ID]                           VARCHAR (50)  NULL,
    [PATS_ID]                           VARCHAR (50)  NULL,
    [SMART_ELIGIBLE]                    VARCHAR (50)  NULL,
    [SMART_TIER_1]                      VARCHAR (50)  NULL,
    [SMART_TIER_2]                      VARCHAR (50)  NULL,
    [SMART_TIER_3]                      VARCHAR (50)  NULL,
    [INTERVAL]                          VARCHAR (50)  NULL,
    [TENANT_KEY]                        INT           NULL,
    [WS_ROW_CREATED_TIME]               DATETIME      NULL,
    [WS_ROW_UPDATED_TIME]               DATETIME      NULL,
    [ID]                                INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_GAR_SD_AIA_STATIC_DEFAULTS] PRIMARY KEY CLUSTERED ([ID] ASC)
);
