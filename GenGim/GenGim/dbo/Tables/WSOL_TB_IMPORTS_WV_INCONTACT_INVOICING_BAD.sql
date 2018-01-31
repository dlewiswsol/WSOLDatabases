﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_WV_INCONTACT_INVOICING_BAD] (
    [BAD_IMPORTS_NO]                        VARCHAR (3)     NOT NULL,
    [BAD_IMPORTS_FILE_TYPE]                 VARCHAR (3)     NULL,
    [WS_ROW_CREATED_TIME]                   DATETIME        NOT NULL,
    [FF_DATE]                               VARCHAR (50)    NULL,
    [FF_INTERVAL_30_MINUTES]                VARCHAR (50)    NULL,
    [FF_AGENT_NAME]                         VARCHAR (100)   NULL,
    [FF_UNAVAILABLE_CODE]                   VARCHAR (100)   NULL,
    [FF_SKILL_NAME]                         VARCHAR (50)    NULL,
    [FF_TEAM_NAME]                          VARCHAR (50)    NOT NULL,
    [FF_LOGIN_TIME]                         VARCHAR (50)    NULL,
    [FF_AVAILABLE_TIME]                     VARCHAR (50)    NULL,
    [FF_UNAVAILABLE_TIME_MINUS_ACW]         VARCHAR (50)    NULL,
    [FF_TALK_TIME]                          VARCHAR (50)    NULL,
    [FF_HOLD_TIME]                          VARCHAR (50)    NULL,
    [FF_ACW_TIME]                           VARCHAR (50)    NULL,
    [FF_CONSULT_TIME]                       VARCHAR (50)    NULL,
    [SEQNO_ADDED_TIME]                      DATETIME        NOT NULL,
    [SEQNO]                                 INT             NOT NULL,
    [FTP_FILE_NAME]                         VARCHAR (100)   NOT NULL,
    [DATETIME]                              DATETIME        NULL,
    [HOUR_INTERVAL]                         INT             NULL,
    [AGENT_NAME]                            VARCHAR (50)    NULL,
    [UNAVAILABLE_CODE]                      VARCHAR (100)   NULL,
    [SKILL_NAME]                            VARCHAR (50)    NULL,
    [TEAM_NAME]                             VARCHAR (50)    NULL,
    [LOGIN_TIME]                            DECIMAL (10, 2) NULL,
    [AVAILABLE_TIME]                        DECIMAL (10, 2) NULL,
    [UNAVAILABLE_EMAIL_TIME]                DECIMAL (10, 2) NULL,
    [UNAVAILABLE_SUPERVISOR_TIME]           DECIMAL (10, 2) NULL,
    [UNAVAILABLE_SYSTEM_PENDING_TIME]       DECIMAL (10, 2) NULL,
    [UNAVAILABLE_HELD_PARTY_ABANDONED_TIME] DECIMAL (10, 2) NULL,
    [UNAVAILABLE_MANUAL_OUTBOUND_TIME]      DECIMAL (10, 2) NULL,
    [UNAVAILABLE_NON_BILLABLE_TIME]         DECIMAL (10, 2) NULL,
    [UNAVAILABLE_TIME_MINUS_ACW]            DECIMAL (10, 2) NULL,
    [TALK_TIME]                             DECIMAL (10, 2) NULL,
    [HOLD_TIME]                             DECIMAL (10, 2) NULL,
    [ACW_TIME]                              DECIMAL (10, 2) NULL,
    [CONSULT_TIME]                          DECIMAL (10, 2) NULL,
    [TRUE_OUTBOUND_TALK_TIME]               DECIMAL (10, 2) NULL,
    [TOTAL_TALK]                            DECIMAL (10, 2) NULL,
    [CPROD]                                 DECIMAL (10, 2) NULL,
    [MING]                                  DECIMAL (10, 2) NULL,
    [AUT2]                                  DECIMAL (10, 2) NULL,
    [EMAIL]                                 VARCHAR (100)   NULL,
    [ID_EXT]                                VARCHAR (3)     NULL,
    [SCHEDULER_ACL_NAME]                    VARCHAR (50)    NULL,
    [STD_TENANT_START_DATE_TIME_KEY]        INT             NULL,
    [CAL_DATE]                              DATETIME        NULL,
    [TENANT_KEY]                            INT             NULL,
    [AIR_DAY_TYPE]                          VARCHAR (1)     NULL,
    [AIR_ACW_FONT_COLOR]                    VARCHAR (50)    NULL,
    [MIN_GUARANTEE_MINUTES]                 DECIMAL (6, 3)  NULL,
    [MIN_GUARANTEE_TYPE]                    VARCHAR (50)    NULL,
    [AUTHORIZED_TO_INVOICE_TYPE]            VARCHAR (50)    NULL,
    [HAS_HOLIDAYS]                          VARCHAR (1)     NULL,
    [INCLUDE_IN_CAS]                        VARCHAR (1)     NULL,
    [READY_FOR_XML]                         VARCHAR (1)     NULL,
    [SHOW_ID_EXTS]                          VARCHAR (1)     NULL,
    [INVOICE_ID]                            VARCHAR (50)    NULL,
    [RESOURCE_NAME]                         VARCHAR (100)   NULL,
    [AIRITKDUR]                             INT             NULL,
    [AIRIACDUR]                             INT             NULL,
    [PAY_GROUP]                             INT             NULL,
    [ID]                                    INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_WV_INCONTACT_INVOICING_BAD] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_WV_INCONTACT_INVOICING_BAD] UNIQUE NONCLUSTERED ([BAD_IMPORTS_NO] ASC, [WS_ROW_CREATED_TIME] ASC, [SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

