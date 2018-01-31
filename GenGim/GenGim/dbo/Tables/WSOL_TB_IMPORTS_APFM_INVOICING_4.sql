﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_APFM_INVOICING_4] (
    [FF_DATE]                         VARCHAR (50)    NULL,
    [FF_HOUR]                         VARCHAR (50)    NULL,
    [FF_SKILL_AVAILABILITY]           VARCHAR (500)   NULL,
    [FF_AGENT_NAME]                   VARCHAR (100)   NULL,
    [FF_STATE]                        VARCHAR (50)    NULL,
    [FF_REASON_CODE]                  VARCHAR (50)    NULL,
    [EVENT_DURATION_SECS]             DECIMAL (10, 2) NULL,
    [EVENT_DURATION_IN_INTERVAL_SECS] FLOAT (53)      NULL,
    [SEQNO_ADDED_TIME]                DATETIME        NOT NULL,
    [SEQNO]                           INT             NOT NULL,
    [FTP_FILE_NAME]                   VARCHAR (100)   NULL,
    [RESOURCE_NAME]                   VARCHAR (100)   NULL,
    [DATETIME]                        DATETIME        NULL,
    [HOUR_INTERVAL]                   INT             NULL,
    [EMPLOYEE_ID]                     VARCHAR (50)    NULL,
    [STD_TENANT_START_TIME]           DATETIME        NULL,
    [BILLABLE_SKILL_Y_N]              CHAR (1)        NULL,
    [LOGGED_IN_DUR]                   DECIMAL (10, 2) NULL,
    [READY_DUR]                       DECIMAL (10, 2) NULL,
    [RING_DUR]                        DECIMAL (10, 2) NULL,
    [ON_CALL_DUR]                     DECIMAL (10, 2) NULL,
    [ON_CALL_SILENT_DUR]              DECIMAL (10, 2) NULL,
    [ACW_DUR]                         DECIMAL (10, 2) NULL,
    [ON_PARK_DUR]                     DECIMAL (10, 2) NULL,
    [ON_VOICEMAIL_DUR]                DECIMAL (10, 2) NULL,
    [ON_PREVIEW_DUR]                  DECIMAL (10, 2) NULL,
    [NRD_ACW_DUR]                     DECIMAL (10, 2) NULL,
    [NRD_TASK_COMP_DUR]               DECIMAL (10, 2) NULL,
    [NRD_SYSTEM_OBC_DUR]              DECIMAL (10, 2) NULL,
    [ON_HOLD_DUR]                     DECIMAL (10, 2) NULL,
    [NRD_TRAINING_DUR]                DECIMAL (10, 2) NULL,
    [NRD_MEETING_DUR]                 DECIMAL (10, 2) NULL,
    [NRD_MANDATORY_REPORTING_DUR]     DECIMAL (10, 2) NULL,
    [NRD_MANUAL_OBC_DUR]              DECIMAL (10, 2) NULL,
    [NRD_ACW_AGENT_DUR]               DECIMAL (10, 2) NULL,
    [NRD_OFFLINE_VENDOR_UNPAID_DUR]   DECIMAL (10, 2) NULL,
    [NRD_REASON_4_DUR]                DECIMAL (10, 2) NULL,
    [NOT_READY_BILLABLE]              DECIMAL (10, 2) NULL,
    [NOT_READY_NON_BILLABLE]          DECIMAL (10, 2) NULL,
    [NON_BILLABLE_SKILL_DUR]          DECIMAL (10, 2) NULL,
    [NON_BILLABLE_STATE_REASON_DUR]   DECIMAL (10, 2) NULL,
    [BILLABLE_CLIENT]                 DECIMAL (10, 2) NULL,
    [TOTAL_TALK]                      DECIMAL (10, 2) NULL,
    [TOTAL_ACW]                       DECIMAL (10, 2) NULL,
    [AUTHORIZED]                      DECIMAL (10, 2) NULL,
    [EMAIL]                           VARCHAR (100)   NULL,
    [ID_EXT]                          VARCHAR (3)     NULL,
    [SCHEDULER_ACL_NAME]              VARCHAR (100)   NULL,
    [STD_TENANT_START_DATE_TIME_KEY]  INT             NULL,
    [CAL_DATE]                        DATETIME        NULL,
    [TENANT_KEY]                      INT             NULL,
    [AIR_DAY_TYPE]                    VARCHAR (1)     NULL,
    [AIR_ACW_FONT_COLOR]              VARCHAR (50)    NULL,
    [MIN_GUARANTEE_RATE]              DECIMAL (6, 3)  NULL,
    [MIN_GUARANTEE_TYPE]              VARCHAR (50)    NULL,
    [AUTHORIZED_TO_INVOICE_TYPE]      VARCHAR (50)    NULL,
    [HAS_HOLIDAYS]                    VARCHAR (1)     NULL,
    [INCLUDE_IN_CAS]                  VARCHAR (1)     NULL,
    [READY_FOR_XML]                   VARCHAR (1)     NULL,
    [SHOW_ID_EXTS]                    VARCHAR (1)     NULL,
    [INVOICE_ID]                      VARCHAR (50)    NULL,
    [WS_ROW_CREATED_TIME]             DATETIME        NULL,
    [WS_ROW_UPDATED_TIME]             DATETIME        NULL,
    [ID]                              INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_APFM_INVOICING_4] PRIMARY KEY CLUSTERED ([ID] ASC)
);

