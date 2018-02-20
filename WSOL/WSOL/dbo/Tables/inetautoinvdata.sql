﻿CREATE TABLE [dbo].[inetautoinvdata] (
    [idINetAutoInv]                      BIGINT        IDENTITY (7755522, 1) NOT NULL,
    [idINetAutoInvXMLFile]               BIGINT        NOT NULL,
    [PLATFORM]                           VARCHAR (500) NOT NULL,
    [STATUS]                             VARCHAR (500) NOT NULL,
    [INVOICE_MAP_KEY]                    VARCHAR (500) NOT NULL,
    [FIELD_NAME]                         VARCHAR (500) NOT NULL,
    [SCHEDULER_PROJECT_ID]               VARCHAR (500) NOT NULL,
    [SCHEDULER_ACL_NAME]                 VARCHAR (500) NOT NULL,
    [ACD_ID_EXTENSION]                   VARCHAR (500) NOT NULL,
    [OFFICIAL_WSOL_CLIENT_ID]            VARCHAR (500) NOT NULL,
    [OFFICIAL_WSOL_CLIENT_NAME]          VARCHAR (500) NOT NULL,
    [OFFICIAL_ACD_CLIENT_ID]             VARCHAR (500) NOT NULL,
    [OFFICIAL_ACD_CLIENT_NAME]           VARCHAR (500) NOT NULL,
    [PRIMARY_PROJECT_MANAGER_ID]         VARCHAR (500) NOT NULL,
    [DIRECTOR_OF_PROJECT_MANAGEMENT_ID]  VARCHAR (500) NOT NULL,
    [AGENT_TECHNOLOGY_MANAGER_ID]        VARCHAR (500) NOT NULL,
    [CONTRACTOR_SUPPORT_PATHWAY]         VARCHAR (500) NOT NULL,
    [INVOICE_SYSTEM_ID]                  VARCHAR (500) NOT NULL,
    [HOLIDAY_INVOICE_ID]                 VARCHAR (500) NOT NULL,
    [HOLIDAY]                            VARCHAR (500) NOT NULL,
    [FILE_FORMAT_OF_PUSH]                VARCHAR (500) NOT NULL,
    [AGENT_PREPARATION_INVOICE_ID]       VARCHAR (500) NOT NULL,
    [NEW_ACL]                            VARCHAR (500) NOT NULL,
    [CURRENT_CATS]                       VARCHAR (500) NOT NULL,
    [CATS_ID]                            VARCHAR (500) NOT NULL,
    [PATS_ID]                            VARCHAR (500) NOT NULL,
    [SMART_ELIGIBLE]                     VARCHAR (500) NOT NULL,
    [SMART_TIER_1]                       VARCHAR (500) NOT NULL,
    [SMART_TIER_2]                       VARCHAR (500) NOT NULL,
    [SMART_TIER_3]                       VARCHAR (500) NOT NULL,
    [INTERVALFLD]                        VARCHAR (500) NOT NULL,
    [DATEFLD]                            VARCHAR (500) NOT NULL,
    [HOD_INTERVAL]                       VARCHAR (500) NOT NULL,
    [AU_DK_LOGGED_IN_DURATION]           VARCHAR (500) NOT NULL,
    [AU_DK_AVAILABLE_DURATION]           VARCHAR (500) NOT NULL,
    [AU_DK_TALK_DURATION]                VARCHAR (500) NOT NULL,
    [AU_DK_IB_TALK_DURATION]             VARCHAR (500) NOT NULL,
    [AU_DK_OB_TALK_DURATION]             VARCHAR (500) NOT NULL,
    [AU_DK_CONVENTIONAL_ACW]             VARCHAR (500) NOT NULL,
    [AU_DK_NR_DURATION]                  VARCHAR (500) NOT NULL,
    [AU_DK_PSEUDO_PRODUCTIVE_DURATION]   VARCHAR (500) NOT NULL,
    [AU_DK_ADJUSTED_NR_DURATION]         VARCHAR (500) NOT NULL,
    [AU_DK_TOTAL_PRODUCTIVE_DURATION]    VARCHAR (500) NOT NULL,
    [AU_DK_WPSEUDO_PRODUCTIVE_DURATIONS] VARCHAR (500) NOT NULL,
    [AU_DK_XFER_COUNT]                   VARCHAR (500) NOT NULL,
    [AU_DK_HOLD_COUNT]                   VARCHAR (500) NOT NULL,
    [AU_DK_CONFERENCE_COUNT]             VARCHAR (500) NOT NULL,
    [AU_DK_CONSULT_COUNT]                VARCHAR (500) NOT NULL,
    [AU_DK_PUP_COUNT]                    VARCHAR (500) NOT NULL,
    [AU_DK_OFFERED_COUNT]                VARCHAR (500) NOT NULL,
    [AU_DK_HANDLED_COUNT]                VARCHAR (500) NOT NULL,
    [AU_DK_IB_HANDLE_COUNT]              VARCHAR (500) NOT NULL,
    [AU_DK_OB_HANDLE_COUNT]              VARCHAR (500) NOT NULL,
    [AU_DK_RONA_COUNT]                   VARCHAR (500) NOT NULL,
    [AU_DK_AWR_COUNT]                    VARCHAR (500) NOT NULL,
    [MINIMUM_GUARANTEE]                  VARCHAR (500) NOT NULL,
    [AUTHORIZED_TO_INVOICE]              VARCHAR (500) NOT NULL,
    [WEEK_ENDING_DATE]                   VARCHAR (500) NOT NULL,
    [PAY_CYCLE_CLOSURE_DATE]             VARCHAR (500) NOT NULL,
    [dateFldConv]                        DATE          NOT NULL,
    [idAgent]                            BIGINT        NOT NULL,
    [idProject]                          BIGINT        NOT NULL,
    [scheduleStatus]                     VARCHAR (10)  NOT NULL,
    [weekEndingDateConv]                 DATE          DEFAULT ('1970-01-01') NOT NULL,
    [datew]                              DATE          NOT NULL,
    [timew]                              TIME (7)      NOT NULL,
    CONSTRAINT [PK_inetautoinvdata_idINetAutoInv] PRIMARY KEY CLUSTERED ([idINetAutoInv] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_inetautoinvdata_528C9CDA8D82E32CC19F0E9C8F62CE5E]
    ON [dbo].[inetautoinvdata]([idProject] ASC)
    INCLUDE([ACD_ID_EXTENSION], [AGENT_PREPARATION_INVOICE_ID], [AGENT_TECHNOLOGY_MANAGER_ID], [AU_DK_ADJUSTED_NR_DURATION], [AU_DK_AVAILABLE_DURATION], [AU_DK_AWR_COUNT], [AU_DK_CONFERENCE_COUNT], [AU_DK_CONSULT_COUNT], [AU_DK_CONVENTIONAL_ACW], [AU_DK_HANDLED_COUNT], [AU_DK_HOLD_COUNT], [AU_DK_IB_HANDLE_COUNT], [AU_DK_IB_TALK_DURATION], [AU_DK_LOGGED_IN_DURATION], [AU_DK_NR_DURATION], [AU_DK_OB_HANDLE_COUNT], [AU_DK_OB_TALK_DURATION], [AU_DK_OFFERED_COUNT], [AU_DK_PSEUDO_PRODUCTIVE_DURATION], [AU_DK_PUP_COUNT], [AU_DK_RONA_COUNT], [AU_DK_TALK_DURATION], [AU_DK_TOTAL_PRODUCTIVE_DURATION], [AU_DK_WPSEUDO_PRODUCTIVE_DURATIONS], [AU_DK_XFER_COUNT], [AUTHORIZED_TO_INVOICE], [CATS_ID], [CONTRACTOR_SUPPORT_PATHWAY], [CURRENT_CATS], [DATEFLD], [dateFldConv], [datew], [DIRECTOR_OF_PROJECT_MANAGEMENT_ID], [FIELD_NAME], [FILE_FORMAT_OF_PUSH], [HOD_INTERVAL], [HOLIDAY], [HOLIDAY_INVOICE_ID], [idAgent], [idINetAutoInvXMLFile], [INTERVALFLD], [INVOICE_MAP_KEY], [INVOICE_SYSTEM_ID], [MINIMUM_GUARANTEE], [NEW_ACL], [OFFICIAL_ACD_CLIENT_ID], [OFFICIAL_ACD_CLIENT_NAME], [OFFICIAL_WSOL_CLIENT_ID], [OFFICIAL_WSOL_CLIENT_NAME], [PATS_ID], [PAY_CYCLE_CLOSURE_DATE], [PLATFORM], [PRIMARY_PROJECT_MANAGER_ID], [SCHEDULER_ACL_NAME], [SCHEDULER_PROJECT_ID], [scheduleStatus], [SMART_ELIGIBLE], [SMART_TIER_1], [SMART_TIER_2], [SMART_TIER_3], [STATUS], [timew], [WEEK_ENDING_DATE], [weekEndingDateConv]);


GO
CREATE NONCLUSTERED INDEX [nci_wi_inetautoinvdata_0E5C8828EEA24107EE2F97D75E180C39]
    ON [dbo].[inetautoinvdata]([idAgent] ASC, [idProject] ASC, [scheduleStatus] ASC, [dateFldConv] ASC)
    INCLUDE([ACD_ID_EXTENSION], [AGENT_PREPARATION_INVOICE_ID], [AGENT_TECHNOLOGY_MANAGER_ID], [AU_DK_ADJUSTED_NR_DURATION], [AU_DK_AVAILABLE_DURATION], [AU_DK_AWR_COUNT], [AU_DK_CONFERENCE_COUNT], [AU_DK_CONSULT_COUNT], [AU_DK_CONVENTIONAL_ACW], [AU_DK_HANDLED_COUNT], [AU_DK_HOLD_COUNT], [AU_DK_IB_HANDLE_COUNT], [AU_DK_IB_TALK_DURATION], [AU_DK_LOGGED_IN_DURATION], [AU_DK_NR_DURATION], [AU_DK_OB_HANDLE_COUNT], [AU_DK_OB_TALK_DURATION], [AU_DK_OFFERED_COUNT], [AU_DK_PSEUDO_PRODUCTIVE_DURATION], [AU_DK_PUP_COUNT], [AU_DK_RONA_COUNT], [AU_DK_TALK_DURATION], [AU_DK_TOTAL_PRODUCTIVE_DURATION], [AU_DK_WPSEUDO_PRODUCTIVE_DURATIONS], [AU_DK_XFER_COUNT], [AUTHORIZED_TO_INVOICE], [CATS_ID], [CONTRACTOR_SUPPORT_PATHWAY], [CURRENT_CATS], [DATEFLD], [datew], [DIRECTOR_OF_PROJECT_MANAGEMENT_ID], [FIELD_NAME], [FILE_FORMAT_OF_PUSH], [HOD_INTERVAL], [HOLIDAY], [HOLIDAY_INVOICE_ID], [idINetAutoInvXMLFile], [INTERVALFLD], [INVOICE_MAP_KEY], [INVOICE_SYSTEM_ID], [MINIMUM_GUARANTEE], [NEW_ACL], [OFFICIAL_ACD_CLIENT_ID], [OFFICIAL_ACD_CLIENT_NAME], [OFFICIAL_WSOL_CLIENT_ID], [OFFICIAL_WSOL_CLIENT_NAME], [PATS_ID], [PAY_CYCLE_CLOSURE_DATE], [PLATFORM], [PRIMARY_PROJECT_MANAGER_ID], [SCHEDULER_ACL_NAME], [SCHEDULER_PROJECT_ID], [SMART_ELIGIBLE], [SMART_TIER_1], [SMART_TIER_2], [SMART_TIER_3], [STATUS], [timew], [WEEK_ENDING_DATE], [weekEndingDateConv]);


GO
CREATE NONCLUSTERED INDEX [INetAutoInvDatai05]
    ON [dbo].[inetautoinvdata]([idProject] ASC);


GO
ALTER INDEX [INetAutoInvDatai05]
    ON [dbo].[inetautoinvdata] DISABLE;


GO
CREATE NONCLUSTERED INDEX [INetAutoInvDatai02]
    ON [dbo].[inetautoinvdata]([datew] ASC);


GO
ALTER INDEX [INetAutoInvDatai02]
    ON [dbo].[inetautoinvdata] DISABLE;


GO
CREATE NONCLUSTERED INDEX [INetAutoInvDatai01]
    ON [dbo].[inetautoinvdata]([dateFldConv] ASC);


GO
ALTER INDEX [INetAutoInvDatai01]
    ON [dbo].[inetautoinvdata] DISABLE;
