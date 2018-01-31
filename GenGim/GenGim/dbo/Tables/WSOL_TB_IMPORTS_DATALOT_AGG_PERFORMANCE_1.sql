﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_DATALOT_AGG_PERFORMANCE_1] (
    [FF_LOCATION]                    VARCHAR (50)  NULL,
    [FF_OUTBOUND_CAMPAIGN]           VARCHAR (100) NULL,
    [FF_DIAL_NUMBER]                 VARCHAR (50)  NULL,
    [FF_COUNT]                       VARCHAR (50)  NULL,
    [FF_XFERS]                       VARCHAR (50)  NULL,
    [FF_BILLABLE_XFER]               VARCHAR (50)  NULL,
    [FF_XFER_RATE]                   VARCHAR (50)  NULL,
    [FF_BILLABLE_PERCENTAGE]         VARCHAR (50)  NULL,
    [FF_BILLABLE_XFER_RATE]          VARCHAR (50)  NULL,
    [FF_3_MIN_XFERS]                 VARCHAR (50)  NULL,
    [FF_EXPECTED_3_MIN_XFERS]        VARCHAR (50)  NULL,
    [FF_EXCESS_3MIN_XFER]            VARCHAR (50)  NULL,
    [FF_3_MIN_RATE]                  VARCHAR (50)  NULL,
    [FF_EXCESS_RATE]                 VARCHAR (50)  NULL,
    [FF_RETAIL_3_MIN_XFERS]          VARCHAR (50)  NULL,
    [FF_RETAIL_3_MIN_RATE]           VARCHAR (50)  NULL,
    [DATA_DATE]                      DATETIME      NULL,
    [SEQNO_ADDED_TIME]               DATETIME      NOT NULL,
    [SEQNO]                          INT           NOT NULL,
    [FTP_FILE_NAME]                  VARCHAR (100) NOT NULL,
    [DATETIME]                       DATETIME      NULL,
    [HOUR_INTERVAL]                  VARCHAR (50)  NULL,
    [STD_TENANT_START_DATE_TIME_KEY] INT           NULL,
    [TENANT_KEY]                     INT           NULL,
    [ID]                             INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_DATALOT_AGG_PERFORMANCE_1] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_WSOL_TB_IMPORTS_DATALOT_AGG_PERFORMANCE_1] UNIQUE NONCLUSTERED ([SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);

