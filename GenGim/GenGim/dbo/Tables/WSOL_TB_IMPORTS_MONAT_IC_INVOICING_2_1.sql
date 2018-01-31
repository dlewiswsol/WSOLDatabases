﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_MONAT_IC_INVOICING_2] (
    [FF_DATE]                               VARCHAR (50)    NULL,
    [FF_INTERVAL_30_MINUTES]                VARCHAR (50)    NULL,
    [FF_AGENT_NAME]                         VARCHAR (100)   NULL,
    [FF_UNAVAILABLE_CODE]                   VARCHAR (100)   NULL,
    [FF_SKILL_NAME]                         VARCHAR (50)    NULL,
    [FF_TEAM_NAME]                          VARCHAR (50)    NOT NULL,
    [FF_LOGIN_TIME]                         DECIMAL (10, 2) NULL,
    [FF_AVAILABLE_TIME]                     DECIMAL (10, 2) NULL,
    [FF_UNAVAILABLE_TIME_MINUS_ACW]         DECIMAL (10, 2) NULL,
    [FF_TALK_TIME]                          DECIMAL (10, 2) NULL,
    [FF_HOLD_TIME]                          DECIMAL (10, 2) NULL,
    [FF_ACW_TIME]                           DECIMAL (10, 2) NULL,
    [FF_HELD_PARTY_ABANDONS]                DECIMAL (10, 2) NULL,
    [FF_INBOUND_HANDLED]                    DECIMAL (10, 2) NULL,
    [FF_OUTBOUND_HANDLED]                   DECIMAL (10, 2) NULL,
    [SEQNO_ADDED_TIME]                      DATETIME        NOT NULL,
    [SEQNO]                                 INT             NOT NULL,
    [FTP_FILE_NAME]                         VARCHAR (100)   NOT NULL,
    [DATETIME]                              DATETIME        NULL,
    [HOUR_INTERVAL]                         INT             NULL,
    [AGENT_NAME]                            VARCHAR (50)    NULL,
    [UNAVAILABLE_CODE]                      VARCHAR (100)   NULL,
    [SKILL_NAME]                            VARCHAR (50)    NULL,
    [TEAM_NAME]                             VARCHAR (50)    NULL,
    [INBOUND_HANDLED_COUNT]                 DECIMAL (10, 2) NULL,
    [OUTBOUND_HANDLED_COUNT]                DECIMAL (10, 2) NULL,
    [TOTAL_CALL_COUNT]                      DECIMAL (10, 2) NULL,
    [HELD_PARTY_ABANDON_COUNT]              DECIMAL (10, 2) NULL,
    [LOGIN_TIME]                            DECIMAL (10, 2) NULL,
    [AVAILABLE_TIME]                        DECIMAL (10, 2) NULL,
    [UNAVAILABLE_EMAIL_TIME]                DECIMAL (10, 2) NULL,
    [UNAVAILABLE_WSOL_EMAIL_TIME]           DECIMAL (10, 2) NULL,
    [UNAVAILABLE_FLOOR_SUPPORT_TIME]        DECIMAL (10, 2) NULL,
    [UNAVAILABLE_SPECIAL_PROJECT_TIME]      DECIMAL (10, 2) NULL,
    [UNAVAILABLE_HELD_PARTY_ABANDONED_TIME] DECIMAL (10, 2) NULL,
    [UNAVAILABLE_IT_SYS_ISSUE_TIME]         DECIMAL (10, 2) NULL,
    [UNAVAILABLE_IDLE_TIME]                 DECIMAL (10, 2) NULL,
    [UNAVAILABLE_REFUSED_TIME]              DECIMAL (10, 2) NULL,
    [UNAVAILABLE_SYSTEM_PENDING_TIME]       DECIMAL (10, 2) NULL,
    [UNAVAILABLE_OUTBOUND_CALL_TIME]        DECIMAL (10, 2) NULL,
    [UNAVAILABLE_TIME_MINUS_ACW]            DECIMAL (10, 2) NULL,
    [TALK_TIME]                             DECIMAL (10, 2) NULL,
    [HOLD_TIME]                             DECIMAL (10, 2) NULL,
    [ACW_TIME]                              DECIMAL (10, 2) NULL,
    [AUTHORIZED_ACW_TIME]                   DECIMAL (10, 2) NULL,
    [TRUE_OUTBOUND_TALK_TIME]               DECIMAL (10, 2) NULL,
    [TOTAL_TALK]                            DECIMAL (10, 2) NULL,
    [HANDLE_TIME]                           DECIMAL (10, 2) NULL,
    [CPROD]                                 DECIMAL (10, 2) NULL,
    [MINIMUM_GUARANTEE]                     DECIMAL (10, 2) NULL,
    [AUTHORIZED_TO_INVOICE]                 DECIMAL (10, 2) NULL,
    [EMAIL]                                 VARCHAR (100)   NULL,
    [ID_EXT]                                VARCHAR (3)     NULL,
    [SCHEDULER_ACL_NAME]                    VARCHAR (100)   NULL,
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
    [INVOICE_ID]                            VARCHAR (100)   NULL,
    [RESOURCE_NAME]                         VARCHAR (100)   NULL,
    [AIRITKDUR]                             INT             NULL,
    [AIRIACDUR]                             INT             NULL,
    [PAY_GROUP]                             INT             NULL,
    [WS_ROW_CREATED_TIME]                   DATETIME        NULL,
    [WS_ROW_UPDATED_TIME]                   DATETIME        NULL,
    [ID]                                    INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_MONAT_IC_INVOICING_2] PRIMARY KEY CLUSTERED ([ID] ASC)
);

