﻿CREATE TABLE [dbo].[YZ_TB_IMPORTS_DATALOT_INVOICING_0_Audit] (
    [FF_USERNAME]           VARCHAR (50)  NULL,
    [FF_AGENT_ID]           VARCHAR (50)  NULL,
    [FF_DAY]                VARCHAR (50)  NULL,
    [FF_DATE]               VARCHAR (50)  NOT NULL,
    [FF_HOUR]               VARCHAR (50)  NULL,
    [FF_ONLINE_MINS]        VARCHAR (50)  NULL,
    [FF_CONNECTED_MINS]     VARCHAR (50)  NULL,
    [FF_WRAP_MINS]          VARCHAR (50)  NULL,
    [FF_WAITING_MINS]       VARCHAR (50)  NULL,
    [FF_SUCCESSFUL_XFERS]   VARCHAR (50)  NULL,
    [FF_INBOUNDS]           VARCHAR (50)  NULL,
    [FF_OUTBOUNDS]          VARCHAR (50)  NULL,
    [FF_WRAP_ADJUSTMENT]    VARCHAR (50)  NULL,
    [FF_TOTAL_XFERS]        VARCHAR (50)  NULL,
    [FF_3_MIN_XFERS]        VARCHAR (50)  NULL,
    [FF_3_MIN_RETAIL_XFERS] VARCHAR (50)  NULL,
    [SEQNO_ADDED_TIME]      DATETIME      NOT NULL,
    [SEQNO]                 INT           NOT NULL,
    [FTP_FILE_NAME]         VARCHAR (100) NOT NULL,
    [ID]                    INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_YZ_TB_IMPORTS_DATALOT_INVOICING_0_Audit] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQC_YZ_TB_IMPORTS_DATALOT_INVOICING_0_Audit] UNIQUE NONCLUSTERED ([SEQNO_ADDED_TIME] ASC, [SEQNO] ASC, [FTP_FILE_NAME] ASC)
);
