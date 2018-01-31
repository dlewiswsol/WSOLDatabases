﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_WV_EMAIL_RESOLVED_WEEKLY_1] (
    [FF_CASE_NUMBER]                 VARCHAR (100)  NULL,
    [FF_CREATED_ON]                  VARCHAR (50)   NULL,
    [FF_MODIFIED_ON]                 VARCHAR (50)   NULL,
    [FF_CASE_TITLE]                  VARCHAR (2500) NULL,
    [FF_ORIGIN]                      VARCHAR (50)   NULL,
    [FF_STATUS]                      VARCHAR (50)   NOT NULL,
    [FF_OWNER]                       VARCHAR (100)  NULL,
    [FF_SITE]                        VARCHAR (100)  NULL,
    [FF_MANAGER]                     VARCHAR (100)  NULL,
    [FF_ACCOUNT_NUMBER]              VARCHAR (150)  NULL,
    [FF_ADDRESS_1_COUNTRY_REGION]    VARCHAR (50)   NULL,
    [FF_NAME_QUEUE_ASSIGNED]         VARCHAR (100)  NULL,
    [FF_DISPOSITION_1]               VARCHAR (200)  NULL,
    [FF_DISPOSITION_2]               VARCHAR (200)  NULL,
    [FF_DISPOSITION_3]               VARCHAR (200)  NULL,
    [SEQNO_ADDED_TIME]               DATETIME       NOT NULL,
    [SEQNO]                          INT            NOT NULL,
    [FTP_FILE_NAME]                  VARCHAR (100)  NOT NULL,
    [CREATED_DATETIME]               DATETIME       NULL,
    [CREATED_DATE]                   DATETIME       NULL,
    [CREATED_HOUR]                   DATETIME       NULL,
    [MODIFIED_DATETIME]              DATETIME       NULL,
    [MODIFIED_DATE]                  DATETIME       NULL,
    [MODIFIED_HOUR]                  DATETIME       NULL,
    [INVOICE_MAP_KEY]                VARCHAR (100)  NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT            NULL,
    [TENANT_KEY]                     INT            NULL,
    [RESOURCE_NAME]                  VARCHAR (100)  NULL,
    [ID]                             INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_WV_MAIL_RESOLVED_WEEKLY_1] PRIMARY KEY CLUSTERED ([ID] ASC)
);

