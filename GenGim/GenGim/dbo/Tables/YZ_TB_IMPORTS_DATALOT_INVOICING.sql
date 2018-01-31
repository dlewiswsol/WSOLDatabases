﻿CREATE TABLE [dbo].[YZ_TB_IMPORTS_DATALOT_INVOICING] (
    [FF_USERNAME]                    VARCHAR (50)    NULL,
    [FF_AGENT_ID]                    VARCHAR (50)    NOT NULL,
    [FF_DAY]                         VARCHAR (50)    NULL,
    [FF_DATE]                        VARCHAR (50)    NOT NULL,
    [FF_HOUR]                        VARCHAR (50)    NULL,
    [FF_ONLINE_MINS]                 VARCHAR (50)    NULL,
    [FF_CONNECTED_MINS]              VARCHAR (50)    NULL,
    [FF_WRAP_MINS]                   VARCHAR (50)    NULL,
    [FF_WAITING_MINS]                VARCHAR (50)    NULL,
    [FF_SUCCESSFUL_XFERS]            VARCHAR (50)    NULL,
    [FF_INBOUNDS]                    VARCHAR (50)    NULL,
    [FF_OUTBOUNDS]                   VARCHAR (50)    NULL,
    [FF_WRAP_ADJUSTMENT]             VARCHAR (50)    NULL,
    [FF_TOTAL_XFERS]                 VARCHAR (50)    NULL,
    [FF_3_MIN_XFERS]                 VARCHAR (50)    NULL,
    [FF_3_MIN_RETAIL_XFERS]          VARCHAR (50)    NULL,
    [SEQNO_ADDED_TIME]               DATETIME        NOT NULL,
    [SEQNO]                          INT             NOT NULL,
    [FTP_FILE_NAME]                  VARCHAR (100)   NULL,
    [DATETIME]                       DATETIME        NULL,
    [HOUR_INTERVAL]                  INT             NULL,
    [INBOUND_CALLS]                  INT             NULL,
    [OUTBOUND_CALLS]                 INT             NULL,
    [TOTAL_CALLS]                    INT             NULL,
    [SUCCESSFUL_TRANSFERS]           INT             NULL,
    [ONLINE_TIME]                    DECIMAL (10, 2) NULL,
    [CONNECTED_TIME]                 DECIMAL (10, 2) NULL,
    [WRAP_TIME]                      DECIMAL (10, 2) NULL,
    [WAITING_TIME]                   DECIMAL (10, 2) NULL,
    [WRAP_ADJ_TIME]                  DECIMAL (10, 2) NULL,
    [WRAP_ALLOWED]                   DECIMAL (10, 2) NULL,
    [AUTHORIZED_WRAP]                DECIMAL (10, 2) NULL,
    [CPROD]                          DECIMAL (10, 2) NULL,
    [MINIMUM_GUARANTEE]              DECIMAL (10, 2) NULL,
    [AUTHORIZED_MINUTES]             DECIMAL (10, 2) NULL,
    [BILLABLE_TALK]                  DECIMAL (10, 2) NULL,
    [BILLABLE_WRAP]                  DECIMAL (10, 2) NULL,
    [AUTHORIZED_TRANSFERS]           INT             NULL,
    [TOTAL_TRANSFERS]                INT             NULL,
    [THREE_MIN_TRANSFERS]            INT             NULL,
    [THREE_MIN_RETAIL_TRANSFERS]     INT             NULL,
    [BASE_3_MINUTE_TRANSFER]         DECIMAL (10, 2) NULL,
    [3_MINUTE_TRANSFER_BONUS]        DECIMAL (10, 2) NULL,
    [EMAIL]                          VARCHAR (100)   NULL,
    [ID_EXT]                         VARCHAR (3)     NOT NULL,
    [SCHEDULER_ACL_NAME]             VARCHAR (50)    NULL,
    [PAY_GROUP]                      INT             NULL,
    [ASA_NAME]                       VARCHAR (100)   NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT             NOT NULL,
    [CAL_DATE]                       DATETIME        NULL,
    [TENANT_KEY]                     INT             NULL,
    [AIR_DAY_TYPE]                   VARCHAR (1)     NULL,
    [AIR_ACW_FONT_COLOR]             VARCHAR (50)    NULL,
    [MIN_GUARANTEE_RATE]             DECIMAL (6, 3)  NULL,
    [MIN_GUARANTEE_MINUTES]          DECIMAL (6, 3)  NULL,
    [MIN_GUARANTEE_TYPE]             VARCHAR (50)    NULL,
    [WRAP_MINUTE_RATE]               DECIMAL (6, 3)  NULL,
    [BASE_3_MINUTE_XFER_RATE]        DECIMAL (6, 3)  NULL,
    [3_MINUTE_XFER_BONUS_RATE]       DECIMAL (6, 3)  NULL,
    [ELIGIBLE_FOR_XFER_BONUS]        VARCHAR (1)     NULL,
    [AUTHORIZED_TO_INVOICE_TYPE]     VARCHAR (50)    NULL,
    [TOTAL_AUTHORIZED_PAY]           DECIMAL (6, 3)  NULL,
    [TOTAL_AUTHORIZED_XFER_PAY]      DECIMAL (6, 3)  NULL,
    [HAS_HOLIDAYS]                   VARCHAR (1)     NULL,
    [PAY_RATE_STANDARD]              DECIMAL (6, 3)  NULL,
    [PAY_RATE_HOLIDAY]               DECIMAL (6, 3)  NULL,
    [INCLUDE_IN_CAS]                 VARCHAR (1)     NULL,
    [READY_FOR_XML]                  VARCHAR (1)     NULL,
    [SHOW_ID_EXTS]                   VARCHAR (1)     NULL,
    [INVOICE_ID]                     VARCHAR (50)    NULL,
    [RESOURCE_NAME]                  VARCHAR (100)   NULL,
    [XFER_ID_EXT]                    VARCHAR (3)     NULL,
    [WS_ROW_CREATED_TIME]            DATETIME        NULL,
    [WS_ROW_UPDATED_TIME]            DATETIME        NULL,
    [ID]                             INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_YZ_TB_IMPORTS_DATALOT_INVOICING] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_YZ_TB_IMPORTS_DATALOT_INVOICING] UNIQUE NONCLUSTERED ([FF_AGENT_ID] ASC, [ID_EXT] ASC, [STD_TENANT_START_DATE_TIME_KEY] ASC)
);

