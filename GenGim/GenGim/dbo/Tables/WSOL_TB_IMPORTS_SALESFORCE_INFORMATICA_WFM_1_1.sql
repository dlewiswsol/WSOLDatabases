﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_SALESFORCE_INFORMATICA_WFM_1] (
    [FF_SCHEDULER_ACL]               VARCHAR (200) NOT NULL,
    [FF_FIELD_MAP_NAME]              VARCHAR (100) NOT NULL,
    [FF_PROGRAM_ID]                  VARCHAR (50)  NOT NULL,
    [FF_COMMON_TEAM_NAME]            VARCHAR (100) NULL,
    [FF_FIELD_MAP_ID]                VARCHAR (100) NOT NULL,
    [FF_CLIENT_NAME]                 VARCHAR (200) NULL,
    [FF_CLIENT_ID]                   VARCHAR (50)  NOT NULL,
    [FF_JOBCOST_ID]                  VARCHAR (50)  NULL,
    [FF_SCHEDULED_TIME]              VARCHAR (50)  NULL,
    [FF_CANCELLED_TIME]              VARCHAR (50)  NULL,
    [FF_CONFIRMED_TIME]              VARCHAR (50)  NULL,
    [FF_SCHEDULED_TIME_7]            VARCHAR (50)  NULL,
    [FF_CANCELLED_TIME_7]            VARCHAR (50)  NULL,
    [FF_CONFIRMED_TIME_7]            VARCHAR (50)  NULL,
    [FF_SCHEDULED_TIME_30]           VARCHAR (50)  NULL,
    [FF_CANCELLED_TIME_30]           VARCHAR (50)  NULL,
    [FF_CONFIRMED_TIME_30]           VARCHAR (50)  NULL,
    [FF_RECORD_FILE_DATE]            VARCHAR (50)  NOT NULL,
    [FF_AGENT_ID]                    VARCHAR (50)  NULL,
    [FF_FIRST_NAME]                  VARCHAR (50)  NULL,
    [FF_LAST_NAME]                   VARCHAR (50)  NULL,
    [FF_CORPORATE_NAME]              VARCHAR (200) NULL,
    [FF_EMAIL_ADDRESS]               VARCHAR (200) NOT NULL,
    [FF_PASSWORD]                    VARCHAR (50)  NOT NULL,
    [FF_CATS_STATUS]                 VARCHAR (100) NULL,
    [FF_PRIMARY_PHONE]               VARCHAR (50)  NULL,
    [FF_ALTERNATE_PHONE]             VARCHAR (50)  NULL,
    [FF_MOBILE_PHONE]                VARCHAR (50)  NULL,
    [FF_STREET_ADDRESS]              VARCHAR (200) NULL,
    [FF_CITY]                        VARCHAR (50)  NULL,
    [FF_STATE_PROVINCE]              VARCHAR (50)  NULL,
    [FF_ZIP_POSTAL]                  VARCHAR (50)  NULL,
    [FF_MOBILE_TERMS]                VARCHAR (50)  NULL,
    [FF_APPLICATION_DATE]            VARCHAR (50)  NULL,
    [FF_LAST_APP_UPDATE]             VARCHAR (50)  NULL,
    [FF_BIRTH_MONTH_DAY]             VARCHAR (50)  NULL,
    [FF_L4_SSN]                      VARCHAR (50)  NULL,
    [FF_AIM_NAME]                    VARCHAR (100) NULL,
    [FF_ID_AGENT]                    VARCHAR (50)  NULL,
    [FF_OS]                          VARCHAR (50)  NULL,
    [FF_DOWNLOAD_SPEED]              VARCHAR (50)  NULL,
    [FF_UPLOAD_SPEED]                VARCHAR (50)  NULL,
    [FF_INDIVIDUAL_W9]               VARCHAR (50)  NULL,
    [FF_CORPORATE_W9]                VARCHAR (50)  NULL,
    [FF_MARKETING_CODE]              VARCHAR (50)  NULL,
    [FF_C_NAME]                      VARCHAR (200) NULL,
    [DATETIME]                       DATETIME      NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT           NULL,
    [APPLICATION_DATE]               DATETIME      NULL,
    [NICKNAME]                       VARCHAR (100) NULL,
    [SEQNO_ADDED_TIME]               DATETIME      NOT NULL,
    [SEQNO]                          INT           NOT NULL,
    [FTP_FILE_NAME]                  VARCHAR (100) NOT NULL,
    [ID]                             INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_SALESFORCE_INFORMATICA_WFM_1] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_SALESFORCE_INFORMATICA_WFM_1] UNIQUE NONCLUSTERED ([SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

