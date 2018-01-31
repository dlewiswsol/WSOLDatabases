﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_SABRE_INVOICING_BAD] (
    [BAD_IMPORTS_NO]                 TINYINT         NOT NULL,
    [BAD_IMPORTS_FILE_TYPE]          VARCHAR (3)     NULL,
    [WS_ROW_CREATED_TIME]            DATETIME        NOT NULL,
    [FF_DATETIME]                    VARCHAR (50)    NULL,
    [FF_FULL_NAME]                   VARCHAR (100)   NULL,
    [FF_CLIENT_USER_ID]              VARCHAR (50)    NULL,
    [FF_USERNAME]                    VARCHAR (50)    NULL,
    [FF_LOGIN_ID]                    VARCHAR (50)    NULL,
    [FF_ACD_CALLS]                   VARCHAR (50)    NULL,
    [FF_EXTN_IN_CALLS]               VARCHAR (50)    NULL,
    [FF_EXTN_OUT_CALLS]              VARCHAR (50)    NULL,
    [FF_STAFFED_TIME]                VARCHAR (50)    NULL,
    [FF_AGENT_RING_TIME]             VARCHAR (50)    NULL,
    [FF_IACD_TIME]                   VARCHAR (50)    NULL,
    [FF_IACW_TIME]                   VARCHAR (50)    NULL,
    [FF_IACW_OUT_TIME]               VARCHAR (50)    NULL,
    [FF_EXTN_IN_TIME]                VARCHAR (50)    NULL,
    [FF_EXTN_OUT_TIME]               VARCHAR (50)    NULL,
    [FF_HOLD_TIME]                   VARCHAR (50)    NULL,
    [FF_IACD_AUX_OUT_TIME]           VARCHAR (50)    NULL,
    [FF_TOTAL_AUX_TIME]              VARCHAR (50)    NULL,
    [FF_IAUX_OUT_TIME]               VARCHAR (50)    NULL,
    [FF_AVAIL_TIME]                  VARCHAR (50)    NULL,
    [SEQNO_ADDED_TIME]               DATETIME        NOT NULL,
    [SEQNO]                          INT             NOT NULL,
    [FTP_FILE_NAME]                  VARCHAR (100)   NOT NULL,
    [DATETIME]                       DATETIME        NULL,
    [ACD_CALLS]                      INT             NULL,
    [EXTN_IN_CALLS]                  INT             NULL,
    [EXTN_OUT_CALLS]                 INT             NULL,
    [STAFFED_TIME]                   DECIMAL (10, 2) NULL,
    [AGENT_RING_TIME]                DECIMAL (10, 2) NULL,
    [IACD_TIME]                      DECIMAL (10, 2) NULL,
    [IACW_TIME]                      DECIMAL (10, 2) NULL,
    [IACW_OUT_TIME]                  DECIMAL (10, 2) NULL,
    [EXTN_IN_TIME]                   DECIMAL (10, 2) NULL,
    [EXTN_OUT_TIME]                  DECIMAL (10, 2) NULL,
    [HOLD_TIME]                      DECIMAL (10, 2) NULL,
    [IACD_AUX_OUT_TIME]              DECIMAL (10, 2) NULL,
    [TOTAL_AUX_TIME]                 DECIMAL (10, 2) NULL,
    [IAUX_OUT_TIME]                  DECIMAL (10, 2) NULL,
    [AVAIL_TIME]                     DECIMAL (10, 2) NULL,
    [HANDLED_CALLS]                  INT             NULL,
    [ADJUSTED_ACW_TIME]              DECIMAL (10, 2) NULL,
    [AUTHORIZED_ACW_TIME]            DECIMAL (10, 2) NULL,
    [ADJUSTED_HOLD_TIME]             DECIMAL (10, 2) NULL,
    [ADJUSTED_NOT_READY_TIME]        DECIMAL (10, 2) NULL,
    [TOTAL_TALK]                     DECIMAL (10, 2) NULL,
    [CPROD]                          DECIMAL (10, 2) NULL,
    [MING]                           DECIMAL (10, 2) NULL,
    [AUT2]                           DECIMAL (10, 2) NULL,
    [EMAIL]                          VARCHAR (100)   NULL,
    [ID_EXT]                         VARCHAR (3)     NULL,
    [SCHEDULER_ACL_NAME]             VARCHAR (50)    NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT             NULL,
    [CAL_DATE]                       DATETIME        NULL,
    [TENANT_KEY]                     INT             NULL,
    [AIR_DAY_TYPE]                   VARCHAR (1)     NULL,
    [AIR_ACW_FONT_COLOR]             VARCHAR (50)    NULL,
    [MIN_GUARANTEE_RATE]             DECIMAL (6, 3)  NULL,
    [MIN_GUARANTEE_TYPE]             VARCHAR (50)    NULL,
    [AUTHORIZED_TO_INVOICE_TYPE]     VARCHAR (50)    NULL,
    [HAS_HOLIDAYS]                   VARCHAR (1)     NULL,
    [INCLUDE_IN_CAS]                 VARCHAR (1)     NULL,
    [READY_FOR_XML]                  VARCHAR (1)     NULL,
    [SHOW_ID_EXTS]                   VARCHAR (1)     NULL,
    [INVOICE_ID]                     VARCHAR (50)    NULL,
    [RESOURCE_NAME]                  VARCHAR (100)   NULL,
    [AIRITKDUR]                      INT             NULL,
    [AIRIACDUR]                      INT             NULL,
    [PAY_GROUP]                      INT             NULL,
    [ID]                             INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_SABRE_INVOICING_BAD] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_SABRE_INVOICING_BAD] UNIQUE NONCLUSTERED ([BAD_IMPORTS_NO] ASC, [WS_ROW_CREATED_TIME] ASC, [SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

