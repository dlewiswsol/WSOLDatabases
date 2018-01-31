﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_WV_SD_INVOICE_GROUPS] (
    [SCHEDULER_ACL_NAME]               VARCHAR (100)  NOT NULL,
    [ID_EXT]                           VARCHAR (3)    NOT NULL,
    [TENANT_KEY]                       INT            NOT NULL,
    [include_in_cas]                   VARCHAR (1)    NOT NULL,
    [ready_for_xml]                    VARCHAR (1)    NULL,
    [has_holidays]                     VARCHAR (1)    NOT NULL,
    [show_id_exts]                     VARCHAR (1)    NOT NULL,
    [include_in_universe_agent_invo]   VARCHAR (1)    NULL,
    [include_in_wsinet_usage]          VARCHAR (1)    NULL,
    [include_in_wslive_billing]        VARCHAR (1)    NULL,
    [include_in_olympics]              VARCHAR (1)    NULL,
    [include_in_novatel]               VARCHAR (1)    NULL,
    [include_in_wsol_exports]          VARCHAR (1)    NULL,
    [min_guarantee_minutes]            DECIMAL (6, 3) NULL,
    [min_guarantee_type]               VARCHAR (50)   NULL,
    [authorized_to_invoice_type]       VARCHAR (50)   NULL,
    [min_guarantee_flds]               VARCHAR (150)  NULL,
    [minguar_form]                     VARCHAR (500)  NULL,
    [invoice_formula]                  VARCHAR (500)  NULL,
    [pay_rate_standard]                DECIMAL (6, 3) NULL,
    [pay_rate_holiday]                 DECIMAL (6, 3) NULL,
    [is_client_team]                   VARCHAR (1)    NULL,
    [is_production_team]               VARCHAR (1)    NULL,
    [client_billing_master_group_name] VARCHAR (150)  NULL,
    [DLY_GRP_TOT_NME]                  VARCHAR (150)  NULL,
    [WTD_GRP_TOT_NME]                  VARCHAR (150)  NULL,
    [MTD_GRP_TOT_NME]                  VARCHAR (150)  NULL,
    [WS_START_TIME]                    DATETIME       NULL,
    [WS_END_TIME]                      DATETIME       NULL,
    [WS_ROW_CREATED_TIME]              DATETIME       NULL,
    [WS_ROW_UPDATED_TIME]              DATETIME       NULL,
    [ID]                               INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_WV_SD_INVOICE_GROUPS] PRIMARY KEY CLUSTERED ([ID] ASC)
);

