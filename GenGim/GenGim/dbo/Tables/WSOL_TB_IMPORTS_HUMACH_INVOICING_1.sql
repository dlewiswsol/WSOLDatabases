﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_HUMACH_INVOICING_1] (
    [FF_AGENT_FIRST_NAME]                                 VARCHAR (100)   NULL,
    [FF_AGENT_LAST_NAME]                                  VARCHAR (100)   NULL,
    [FF_AGENT_ID]                                         VARCHAR (50)    NULL,
    [FF_CUSTOMER_NAME]                                    VARCHAR (100)   NULL,
    [FF_CUSTOMER_ID]                                      VARCHAR (50)    NULL,
    [FF_INTERVAL]                                         VARCHAR (50)    NULL,
    [FF_AGENT_PERFORMANCE_INTERVAL_ID]                    VARCHAR (50)    NULL,
    [FF_INTERVAL_START_TS]                                VARCHAR (50)    NULL,
    [FF_AGENT_LOGIN_START_TS]                             VARCHAR (50)    NULL,
    [FF_STATE_LOGGED_IN_SECS]                             VARCHAR (50)    NULL,
    [FF_STATE_READY_SECS]                                 VARCHAR (50)    NULL,
    [FF_STATE_ASSIGNED_SECS]                              VARCHAR (50)    NULL,
    [FF_STATE_BUSY_SECS]                                  VARCHAR (50)    NULL,
    [FF_STATE_NR_SECS]                                    VARCHAR (50)    NULL,
    [FF_STATE_NR_01_SECS]                                 VARCHAR (50)    NULL,
    [FF_STATE_NR_02_SECS]                                 VARCHAR (50)    NULL,
    [FF_STATE_NR_03_SECS]                                 VARCHAR (50)    NULL,
    [FF_STATE_NR_04_SECS]                                 VARCHAR (50)    NULL,
    [FF_STATE_NR_05_SECS]                                 VARCHAR (50)    NULL,
    [FF_STATE_NR_06_SECS]                                 VARCHAR (50)    NULL,
    [FF_STATE_NR_07_SECS]                                 VARCHAR (50)    NULL,
    [FF_STATE_DIAL_PENDING_SECS]                          VARCHAR (50)    NULL,
    [FF_STATE_UNKNOWN_SECS]                               VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_ASSIGNED_SECS]                  VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_ASSIGNED_FAILED_SECS]           VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_ANS_SECS]                       VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_AGT_CALLS_TRANS_SECS]                  VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_COMPLETED_CALL_TALK_SECS]       VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_COMPLETED_CALL_TIME_SECS]       VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_AGT_CALLS_HOLD_SECS]                   VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_COMPLETED_CALL_CONNECTED_SECS]  VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_CALLS_HANDLE_SECS]              VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_TALK_SECS]      VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_TIME_SECS]      VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_CONNECTED_SECS] VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_ASSIGNED_CT]                    VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_ASSIGNED_FAILED_CT]             VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_ANS_CT]                         VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_AGT_CALLS_HOLD_CT]                     VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_AGT_CALLS_ON_HOLD_CT]                  VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_AGT_CALLS_TRANS_CT]                    VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_CALLS_HANDLE_CT]                VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_IN_AGT_COMPLETED_CT]                   VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_OUT_AGT_CALL_ANS_CT]                  VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_OUT_AGT_CALL_ATTEMPT_CT]              VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_OUT_AGT_CALL_OTHER_SECS]               VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_OUT_AGT_CALL_ANS_CALL_TALK_SECS]       VARCHAR (50)    NOT NULL,
    [FF_Q_IN_CALLS_OUT_AGT_CALL_ANS_CALL_TIME_SECS]       VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_OUT_AGT_CALL_RNA_SECS]                 VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_OUT_AGT_CALLS_HANDLE_SECS]             VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_OUT_AGT_CALL_BUSY_SECS]                VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_OUT_DIALED_DELAY_SECS]                 VARCHAR (50)    NULL,
    [FF_Q_IN_CALLS_OUT_AGT_CALL_ANS_CALL_CONNECTED_SECS]  VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_AGT_CALLS_HOLD_SECS]                  VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_AGT_CALLS_TRANS_SECS]                 VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_OUT_AGT_CALL_ANS_CALL_CONNECTED_SECS] VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_OUT_AGT_CALL_BUSY_SECS]               VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_OUT_AGT_CALL_RNA_SECS]                VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_OUT_AGT_CALL_ANS_CALL_TALK_SECS]      VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_OUT_AGT_CALL_ANS_CALL_TIME_SECS]      VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_OUT_AGT_CALL_OTHER_SECS]              VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_OUT_AGT_CALLS_HANDLE_SECS]            VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_OUT_DIALED_DELAY_SECS]                VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_IN_AGT_COMPLETED_CALL_TIME_SECS]      VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_IN_AGT_COMPLETED_CALL_TALK_SECS]      VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_IN_AGT_ASSIGNED_SECS]                 VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_IN_AGT_COMPLETED_CALL_CONNECTED_SECS] VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_IN_AGT_CALLS_HANDLE_SECS]             VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_IN_AGT_ANS_SECS]                      VARCHAR (50)    NULL,
    [FF_Q_OUT_CALLS_IN_AGT_ASSIGNED_FAILED_SECS]          VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_AGT_CALLS_HOLD_SECS]                  VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_AGT_CALLS_TRANS_SECS]                 VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_OUT_AGT_CALL_BUSY_SECS]               VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_OUT_AGT_CALL_OTHER_SECS]              VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_OUT_AGT_CALL_RNA_SECS]                VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_IN_AGT_COMPLETED_CALL_TIME_SECS]      VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_IN_AGT_ANS_SECS]                      VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_IN_AGT_ATTEMPT_SECS]                  VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_IN_AGT_COMPLETED_CALL_TALK_SECS]      VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_IN_AGT_ATTEMPT_FAILED_SECS]           VARCHAR (50)    NULL,
    [FF_NON_Q_CALLS_IN_AGT_COMPLETED_CALL_CONNECTED_SECS] VARCHAR (50)    NULL,
    [SEQNO_ADDED_TIME]                                    DATETIME        NOT NULL,
    [SEQNO]                                               INT             NOT NULL,
    [FTP_FILE_NAME]                                       VARCHAR (100)   NOT NULL,
    [DATETIME]                                            DATETIME        NULL,
    [HOUR_INTERVAL]                                       INT             NULL,
    [RESOURCE_NAME]                                       VARCHAR (100)   NULL,
    [LOGGED_IN_SECS]                                      DECIMAL (10, 2) NULL,
    [READY_SECS]                                          DECIMAL (10, 2) NULL,
    [ASSIGNED_SECS]                                       DECIMAL (10, 2) NULL,
    [BUSY_SECS]                                           DECIMAL (10, 2) NULL,
    [NOT_READY_SECS]                                      DECIMAL (10, 2) NULL,
    [AGENT_UNRESPONSIVE_SECS]                             DECIMAL (10, 2) NULL,
    [POST_LOGIN_SECS]                                     DECIMAL (10, 2) NULL,
    [BREAK_SECS]                                          DECIMAL (10, 2) NULL,
    [WRAP_SECS]                                           DECIMAL (10, 2) NULL,
    [NR_05_SECS]                                          DECIMAL (10, 2) NULL,
    [NR_06_SECS]                                          DECIMAL (10, 2) NULL,
    [NR_07_SECS]                                          DECIMAL (10, 2) NULL,
    [DIAL_PENDING_SECS]                                   DECIMAL (10, 2) NULL,
    [STATE_UNKNOWN_SECS]                                  DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_ASSIGNED_SECS]                     DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_ASSIGNED_FAILED_SECS]              DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_ANS_SECS]                          DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_AGT_CALLS_TRANS_SECS]                     DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_COMPLETED_CALL_TALK_SECS]          DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_COMPLETED_CALL_TIME_SECS]          DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_AGT_CALLS_HOLD_SECS]                      DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_COMPLETED_CALL_CONNECTED_SECS]     DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_CALLS_HANDLE_SECS]                 DECIMAL (10, 2) NULL,
    [NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_TALK_SECS]         DECIMAL (10, 2) NULL,
    [NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_TIME_SECS]         DECIMAL (10, 2) NULL,
    [NON_Q_CALLS_OUT_AGT_CALL_ANS_CALL_CONNECTED_SECS]    DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_ASSIGNED_CT]                       DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_ASSIGNED_FAILED_CT]                DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_ANS_CT]                            DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_AGT_CALLS_HOLD_CT]                        DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_AGT_CALLS_ON_HOLD_CT]                     DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_AGT_CALLS_TRANS_CT]                       DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_CALLS_HANDLE_CT]                   DECIMAL (10, 2) NULL,
    [Q_IN_CALLS_IN_AGT_COMPLETED_CT]                      DECIMAL (10, 2) NULL,
    [NON_Q_CALLS_OUT_AGT_CALL_ANS_CT]                     DECIMAL (10, 2) NULL,
    [NON_Q_CALLS_OUT_AGT_CALL_ATTEMPT_CT]                 DECIMAL (10, 2) NULL,
    [TOTAL_CALLS]                                         DECIMAL (10, 2) NULL,
    [AUTHORIZED_WRAP]                                     DECIMAL (10, 2) NULL,
    [CPROD]                                               DECIMAL (10, 2) NULL,
    [MINIMUM_GUARANTEE]                                   DECIMAL (10, 2) NULL,
    [AUTHORIZED_MINUTES]                                  DECIMAL (10, 2) NULL,
    [EMAIL]                                               VARCHAR (100)   NULL,
    [ID_EXT]                                              VARCHAR (3)     NULL,
    [SCHEDULER_ACL_NAME]                                  VARCHAR (50)    NULL,
    [STD_TENANT_START_DATE_TIME_KEY]                      INT             NULL,
    [CAL_DATE]                                            DATETIME        NULL,
    [TENANT_KEY]                                          INT             NULL,
    [AIR_DAY_TYPE]                                        VARCHAR (1)     NULL,
    [AIR_ACW_FONT_COLOR]                                  VARCHAR (50)    NULL,
    [MIN_GUARANTEE_MINUTES]                               DECIMAL (6, 3)  NULL,
    [MIN_GUARANTEE_TYPE]                                  VARCHAR (50)    NULL,
    [AUTHORIZED_TO_INVOICE_TYPE]                          VARCHAR (50)    NULL,
    [HAS_HOLIDAYS]                                        VARCHAR (1)     NULL,
    [INCLUDE_IN_CAS]                                      VARCHAR (1)     NULL,
    [READY_FOR_XML]                                       VARCHAR (1)     NULL,
    [SHOW_ID_EXTS]                                        VARCHAR (1)     NULL,
    [INVOICE_ID]                                          VARCHAR (50)    NULL,
    [ID]                                                  INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_HUMACH_INVOICING_1] PRIMARY KEY CLUSTERED ([ID] ASC)
);

