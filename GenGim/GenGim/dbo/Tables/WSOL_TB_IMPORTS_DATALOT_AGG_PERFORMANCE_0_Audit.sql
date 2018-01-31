﻿CREATE TABLE [dbo].[WSOL_TB_IMPORTS_DATALOT_AGG_PERFORMANCE_0_Audit] (
    [FF_LOCATION]             VARCHAR (50)  NULL,
    [FF_OUTBOUND_CAMPAIGN]    VARCHAR (100) NULL,
    [FF_DIAL_NUMBER]          VARCHAR (50)  NULL,
    [FF_COUNT]                VARCHAR (50)  NULL,
    [FF_XFERS]                VARCHAR (50)  NULL,
    [FF_BILLABLE_XFER]        VARCHAR (50)  NULL,
    [FF_XFER_RATE]            VARCHAR (50)  NULL,
    [FF_BILLABLE_PERCENTAGE]  VARCHAR (50)  NULL,
    [FF_BILLABLE_XFER_RATE]   VARCHAR (50)  NULL,
    [FF_3_MIN_XFERS]          VARCHAR (50)  NULL,
    [FF_EXPECTED_3_MIN_XFERS] VARCHAR (50)  NULL,
    [FF_EXCESS_3MIN_XFER]     VARCHAR (50)  NULL,
    [FF_3_MIN_RATE]           VARCHAR (50)  NULL,
    [FF_EXCESS_RATE]          VARCHAR (50)  NULL,
    [FF_RETAIL_3_MIN_XFERS]   VARCHAR (50)  NULL,
    [FF_RETAIL_3_MIN_RATE]    VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME]        DATETIME      NOT NULL,
    [SEQNO]                   INT           NOT NULL,
    [FTP_FILE_NAME]           VARCHAR (100) NOT NULL,
    [ID]                      INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_DATALOT_AGG_PERFORMANCE_0_Audit] PRIMARY KEY CLUSTERED ([ID] ASC)
);

