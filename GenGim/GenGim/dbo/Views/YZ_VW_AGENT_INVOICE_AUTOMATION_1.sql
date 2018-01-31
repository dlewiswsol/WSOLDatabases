﻿CREATE VIEW [dbo].[YZ_VW_AGENT_INVOICE_AUTOMATION]
AS
SELECT     MAX(PLATFORM) AS PLATFORM, MAX(STATUS) AS STATUS, INVOICE_MAP_KEY, FIELD_NAME, MAX(SCHEDULER_PROJECT_ID) 
                      AS SCHEDULER_PROJECT_ID, SCHEDULER_ACL_NAME, MAX(ACD_ID_EXTENSION) AS ACD_ID_EXTENSION, MAX(OFFICIAL_WSOL_CLIENT_ID) 
                      AS OFFICIAL_WSOL_CLIENT_ID, MAX(OFFICIAL_WSOL_CLIENT_NAME) AS OFFICIAL_WSOL_CLIENT_NAME, MAX(OFFICIAL_ACD_CLIENT_ID) 
                      AS OFFICIAL_ACD_CLIENT_ID, MAX(OFFICIAL_ACD_CLIENT_NAME) AS OFFICIAL_ACD_CLIENT_NAME, MAX(PRIMARY_PROJECT_MANAGER_ID) 
                      AS PRIMARY_PROJECT_MANAGER_ID, MAX(DIRECTOR_OF_PROJECT_MANAGEMENT_ID) AS DIRECTOR_OF_PROJECT_MANAGEMENT_ID, 
                      MAX(AGENT_TECHNOLOGY_MANAGER_ID) AS AGENT_TECHNOLOGY_MANAGER_ID, MAX(CONTRACTOR_SUPPORT_PATHWAY) 
                      AS CONTRACTOR_SUPPORT_PATHWAY, INVOICE_SYSTEM_ID, MAX(HOLIDAY_INVOICE_ID) AS HOLIDAY_INVOICE_ID, MAX(HOLIDAY) AS HOLIDAY, 
                      MAX(FILE_FORMAT_OF_PUSH) AS FILE_FORMAT_OF_PUSH, MAX(AGENT_PREPARATION_INVOICE_ID) AS AGENT_PREPARATION_INVOICE_ID, 
                      MAX(NEW_ACL) AS NEW_ACL, MAX(CURRENT_CATS) AS CURRENT_CATS, MAX(CATS_ID) AS CATS_ID, MAX(PATS_ID) AS PATS_ID, 
                      MAX(SMART_ELIGIBLE) AS SMART_ELIGIBLE, MAX(SMART_TIER_1) AS SMART_TIER_1, MAX(SMART_TIER_2) AS SMART_TIER_2, 
                      MAX(SMART_TIER_3) AS SMART_TIER_3, MAX(INTERVAL) AS INTERVAL, DATE, MAX(HOD_INTERVAL) AS HOD_INTERVAL, 
                      SUM(AU_DK_LOGGED_IN_DURATION) AS AU_DK_LOGGED_IN_DURATION, SUM(AU_DK_AVAILABLE_DURATION) AS AU_DK_AVAILABLE_DURATION, 
                      SUM(AU_DK_TALK_DURATION) AS AU_DK_TALK_DURATION, SUM(AU_DK_IB_TALK_DURATION) AS AU_DK_IB_TALK_DURATION, 
                      SUM(AU_DK_OB_TALK_DURATION) AS AU_DK_OB_TALK_DURATION, SUM(AU_DK_CONVENTIONAL_ACW) AS AU_DK_CONVENTIONAL_ACW, 
                      SUM(AU_DK_NR_DURATION) AS AU_DK_NR_DURATION, SUM(AU_DK_PSEUDO_PRODUCTIVE_DURATION) 
                      AS AU_DK_PSEUDO_PRODUCTIVE_DURATION, SUM(AU_DK_ADJUSTED_NR_DURATION) AS AU_DK_ADJUSTED_NR_DURATION, 
                      SUM(AU_DK_TOTAL_PRODUCTIVE_DURATION) AS AU_DK_TOTAL_PRODUCTIVE_DURATION, SUM(AU_DK_WPSEUDO_PRODUCTIVE_DURATIONS) 
                      AS AU_DK_WPSEUDO_PRODUCTIVE_DURATIONS, SUM(AU_DK_XFER_COUNT) AS AU_DK_XFER_COUNT, SUM(AU_DK_HOLD_COUNT) 
                      AS AU_DK_HOLD_COUNT, SUM(AU_DK_CONFERENCE_COUNT) AS AU_DK_CONFERENCE_COUNT, SUM(AU_DK_CONSULT_COUNT) 
                      AS AU_DK_CONSULT_COUNT, SUM(AU_DK_PUP_COUNT) AS AU_DK_PUP_COUNT, SUM(AU_DK_OFFERED_COUNT) AS AU_DK_OFFERED_COUNT, 
                      SUM(AU_DK_HANDLED_COUNT) AS AU_DK_HANDLED_COUNT, SUM(AU_DK_IB_HANDLE_COUNT) AS AU_DK_IB_HANDLE_COUNT, 
                      SUM(AU_DK_OB_HANDLE_COUNT) AS AU_DK_OB_HANDLE_COUNT, SUM(AU_DK_RONA_COUNT) AS AU_DK_RONA_COUNT, 
                      SUM(AU_DK_AWR_COUNT) AS AU_DK_AWR_COUNT, SUM(MINIMUM_GUARANTEE) AS MINIMUM_GUARANTEE, SUM(AUTHORIZED_TO_INVOICE) 
                      AS AUTHORIZED_TO_INVOICE, MAX(WEEK_ENDING_DATE) AS WEEK_ENDING_DATE, MAX(PAY_CYCLE_CLOSURE_DATE) 
                      AS PAY_CYCLE_CLOSURE_DATE, MAX(CAL_DATE) AS CAL_DATE, MAX(TENANT_KEY) AS TENANT_KEY, INVOICE_ID, MAX(WS_ROW_CREATED_TIME) 
                      AS CST_ROW_CREATED_TIME, 0 AS SCHEDULED, 0 AS CONFIRMED, 0 AS CANCELLED, RESOURCE_NAME, MAX(FTP_FILE_NAME) 
                      AS FTP_FILE_NAME, MAX(STD_TENANT_START_DATE_TIME_KEY) AS STD_TENANT_START_DATE_TIME_KEY
FROM         dbo.WSOL_TB_IMPORTS_GAR_UV_ANT_AIA
GROUP BY INVOICE_SYSTEM_ID, DATE, INVOICE_ID, INVOICE_MAP_KEY, FIELD_NAME, SCHEDULER_ACL_NAME, RESOURCE_NAME
