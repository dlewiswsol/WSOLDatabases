﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_EGENCIA_CMS_1] (
    [FF_DATE]                        VARCHAR (50)    NULL,
    [FF_LOGIN_ID]                    VARCHAR (50)    NULL,
    [FF_TIME]                        VARCHAR (50)    NULL,
    [FF_SPLIT_SKILL]                 VARCHAR (50)    NULL,
    [FF_ACD_CALLS]                   VARCHAR (50)    NULL,
    [FF_RINGTIME]                    VARCHAR (50)    NULL,
    [FF_ACD_TIME]                    VARCHAR (50)    NULL,
    [FF_HOLD_TIME]                   VARCHAR (50)    NULL,
    [FF_HOLD_ACD_TIME]               VARCHAR (50)    NULL,
    [FF_ACW_ATTACHED]                VARCHAR (50)    NULL,
    [FF_ACW_OUT_TIME]                VARCHAR (50)    NULL,
    [FF_AUX_OUT_TIME]                VARCHAR (50)    NULL,
    [FF_ACW_OUT_CALLS]               VARCHAR (50)    NULL,
    [FF_AUX_OUT_CALLS]               VARCHAR (50)    NULL,
    [FF_ACW_ALL]                     VARCHAR (50)    NULL,
    [SEQNO_ADDED_TIME]               DATETIME        NOT NULL,
    [SEQNO]                          INT             NOT NULL,
    [FTP_FILE_NAME]                  VARCHAR (100)   NOT NULL,
    [DATETIME]                       DATETIME        NULL,
    [DATETIME_PT]                    DATETIME        NULL,
    [DATETIME_CT]                    DATETIME        NULL,
    [HOUR_INTERVAL]                  VARCHAR (50)    NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT             NULL,
    [EMPLOYEE_ID]                    VARCHAR (50)    NULL,
    [RESOURCE_NAME]                  VARCHAR (200)   NULL,
    [SPLIT_SKILL]                    VARCHAR (50)    NULL,
    [ACD_CALLS]                      INT             NULL,
    [ACW_OUT_CALLS]                  INT             NULL,
    [AUX_OUT_CALLS]                  INT             NULL,
    [RING_TIME]                      DECIMAL (10, 2) NULL,
    [ACD_TIME]                       DECIMAL (10, 2) NULL,
    [HOLD_TIME]                      DECIMAL (10, 2) NULL,
    [HOLD_ACD_TIME]                  DECIMAL (10, 2) NULL,
    [ACW_ATTACHED_TIME]              DECIMAL (10, 2) NULL,
    [ACW_OUT_TIME]                   DECIMAL (10, 2) NULL,
    [AUX_OUT_TIME]                   DECIMAL (10, 2) NULL,
    [ACW_ALL_TIME]                   DECIMAL (10, 2) NULL,
    [HANDLE_TIME_WITH_ATTACHED_ACW]  DECIMAL (10, 2) NULL,
    [HANDLE_TIME_ALL_ACW]            DECIMAL (10, 2) NULL,
    [TENANT_KEY]                     INT             NULL,
    [ID]                             INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_EGENCIA_CMS_1] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_EGENCIA_CMS_1] UNIQUE NONCLUSTERED ([SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

