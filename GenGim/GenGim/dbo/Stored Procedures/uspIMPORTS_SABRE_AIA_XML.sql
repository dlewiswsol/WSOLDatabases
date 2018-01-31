﻿CREATE PROCEDURE [dbo].[uspIMPORTS_SABRE_AIA_XML]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@TENANT_KEY         VARCHAR(150) --No multiples even though filter below is setup for multiples.
,@SCHEDULER_GROUP    VARCHAR(150) --Hid. Def=' '
,@ID_EXT             VARCHAR(300)
,@RESOURCE_KEY       VARCHAR(10)  --Hid. Def='0'
,@TIME_INTERVAL      VARCHAR(10)  --Hid. Def='HR'  HR,DY,DR   FOR SUB: MD(Month by Day),MR(Month Range)  15 and 30 not possible !!!!
,@SHOW_RESOURCE      VARCHAR(1)   --Hid. Def='Y'
,@DUR_IN             VARCHAR(2)   --Hid. Def='MM' 
,@RESOURCE_FORMAT    VARCHAR(2)   --Hid. Def='NM' --'NM'=NAME + (employee id),  'ID'=ID
,@SHOW_HOLIDAY       VARCHAR(1)   --Hid. Def='N'
,@PSW                VARCHAR(10)  --Hid. Def='NONE'
,@EXECUTIONER        VARCHAR(3)   --Hid. Def='MAN'-Manual - when users run report - what SRS reports are defaulted to.  MAN means use date range that user specified.  The exception is when a report is defined with PTD/YTD and MTD rows in it.
                                  --         'NEW'-Subscription - what SRS subscriptions are defaulted to.  NEW means set date range @vars based on @TIME_INTERVAL. (since date range in SRS Subscription can't be set correctly)
,@RPT_TYPE_GRP       VARCHAR(3)   --Hid. Def='AIA'-Agent Invoice Automation - what Sergey uses for/in Scheduler...
,@RPT_TYPE           VARCHAR(3)   --Hid. Def='XML'-AIA RPT (DETAIL) (XML FILE/EXPORT),
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspIMPORTS_SABRE_AIA_XML] '05/26/2015','05/26/2015','0',' ','Y','0','W14','Y','MM','ID','Y','4','NEW','AIA','XML' --in test mode

--  SELECT * FROM WSOL_TB_IMPORTS_SABRE_SD_INVOICE_GROUPS

SET @TENANT_KEY = 900704  --Used below for file name !!! In SSIS !!

--==================================
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
IF @DATE_BEG < '01/01/1901' BEGIN     
    SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 1,101) AS DATETIME)  
    SET @DTM_END = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 0,101) AS DATETIME)  
END
ELSE BEGIN
    SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) 
    SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) + 1
END

--IF @EXECUTIONER = 'MAN', DON'T CHANGE DATES -- THE REPORT IS BEING RAN MANUALLY, AND THE DATE RANGE WANTED BY THE USER IS BEING SET MANUALLY.

IF @EXECUTIONER = 'NEW' BEGIN -- NEW BI-MONTHLY PAYMENT CYCLE 1ST AND 16TH OF EACH MONTH
	IF @TIME_INTERVAL = 'W14' BEGIN
		IF DAY(dbo.getdate()) = 1 BEGIN
			IF MONTH(dbo.getdate()) = 1 BEGIN
				SET @DTM_BEG = CONVERT(DATETIME,CONVERT(VARCHAR(6),'12/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate())-1))
			END
			ELSE BEGIN
				SET @DTM_BEG = CONVERT(DATETIME,CONVERT(VARCHAR(2),MONTH(dbo.getdate() - 1)) + CONVERT(VARCHAR(4),'/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate())))
			END
		END		
		ELSE IF DAY(dbo.getdate()) = 16 BEGIN
			SET @DTM_BEG = CONVERT(DATETIME,CONVERT(VARCHAR(2),MONTH(dbo.getdate())) + CONVERT(VARCHAR(4),'/01/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate())))
		END
		ELSE IF DAY(dbo.getdate()) > 1 AND DAY(dbo.getdate()) < 16 BEGIN
			SET @DTM_BEG = CONVERT(DATETIME,CONVERT(VARCHAR(2),MONTH(dbo.getdate())) + CONVERT(VARCHAR(4),'/01/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate())))
		END
		ELSE BEGIN
			SET @DTM_BEG = CONVERT(DATETIME,CONVERT(VARCHAR(2),MONTH(dbo.getdate())) + CONVERT(VARCHAR(4),'/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate())))
		END
	END
END

--==========================================================================================
--FORMAT 'MULTIPLES' "IN THAT" VALUES:  (Referring to CHARINDEX(search for this, in that))
--==========================================================================================
--SET @TENANT_KEY      = ',' + LTRIM(RTRIM(@TENANT_KEY))      + ','
--SET @SCHEDULER_GROUP = ',' + LTRIM(RTRIM(@SCHEDULER_GROUP)) + ','
SET @ID_EXT          = ',' + LTRIM(RTRIM(@ID_EXT)) + ','


--==================================
--SET AMOUNT TO DIVIDE BY:
--================================== 60.0 OR 60.00 MAKES NO DIFFERENCE.
DECLARE @DS DECIMAL(10,2)  --INT  --SECONDS TO DIVIDE BY.
IF @DUR_IN = 'SS' BEGIN
    SET @DS = 1.0       --DIVIDE SECONDS BY 1 TO GET SECONDS.
END
IF @DUR_IN = 'MM' BEGIN
	SET @DS = 60.0    --DIVIDE SECONDS BY 60 TO GET MINUTES.
END
IF @DUR_IN = 'HH' BEGIN
	SET @DS = 3600.0  --DIVIDE SECONDS BY 3600 TO GET HOURS.
END

--==================================
IF @RPT_TYPE_GRP = 'AIA' BEGIN

	--POPULATES XML REPORT.  SRS SUBSCRIPTION EXPORTS TO XML.  SSIS RENAMES AND MOVES XML FILE TO FTP.  SERGEY PICKS UP FILE.
	
	IF @RPT_TYPE = 'XML' BEGIN  --AIA REPORT  --EXACTLY WHAT IS IN XML FILE AND/OR AIA TABLE.
		--==================================		--CREATE TMP TABLE:
		IF OBJECT_ID('TEMPDB..#IMPORTS_SABRE_AIA_XML') IS NOT NULL BEGIN
		   DROP TABLE #IMPORTS_SABRE_AIA_XML
		END
		CREATE TABLE #IMPORTS_SABRE_AIA_XML
		([PLATFORM]                   VARCHAR(50)
		,[STATUS]                     VARCHAR(50) 
		,INVOICE_MAP_KEY              VARCHAR(50) 
		,FIELD_NAME                   VARCHAR(50) 
		,SCHEDULER_PROJECT_ID         VARCHAR(50) 
		,SCHEDULER_ACL_NAME           VARCHAR(50) 
		,ACD_ID_EXTENSION             VARCHAR(50) 
		,OFFICIAL_WSOL_CLIENT_ID      VARCHAR(50) 
		,OFFICIAL_WSOL_CLIENT_NAME    VARCHAR(50) 
		,OFFICIAL_ACD_CLIENT_ID       VARCHAR(50) 
		,OFFICIAL_ACD_CLIENT_NAME     VARCHAR(50) 
		,PRIMARY_PROJECT_MANAGER_ID   VARCHAR(500) 
		,DIRECTOR_OF_PROJECT_MANAGEMENT_ID VARCHAR(500) 
		,AGENT_TECHNOLOGY_MANAGER_ID  VARCHAR(500) 
		,CONTRACTOR_SUPPORT_PATHWAY   VARCHAR(500) 
		,INVOICE_SYSTEM_ID            VARCHAR(50) 
		,HOLIDAY_INVOICE_ID           VARCHAR(50) 
		,HOLIDAY                      VARCHAR(50) 
		,FILE_FORMAT_OF_PUSH          VARCHAR(50) 
		,AGENT_PREPARATION_INVOICE_ID VARCHAR(50) 
		,NEW_ACL                      VARCHAR(50) 
		,CURRENT_CATS                 VARCHAR(50) 
		,CATS_ID                      VARCHAR(50) 
		,PATS_ID                      VARCHAR(50) 
		,SMART_ELIGIBLE               VARCHAR(50) 
		,SMART_TIER_1                 VARCHAR(50) 
		,SMART_TIER_2                 VARCHAR(50) 
		,SMART_TIER_3                 VARCHAR(50) 
		,INTERVAL                     VARCHAR(50) 
		,DATE                         VARCHAR(50) 
		,HOD_INTERVAL                 VARCHAR(50) 
		,AU_DK_LOGGED_IN_DURATION     DECIMAL(10,2)  --INT 
		,AU_DK_AVAILABLE_DURATION     DECIMAL(10,2)  --INT 
		,AU_DK_TALK_DURATION          DECIMAL(10,2)  --INT 
		,AU_DK_IB_TALK_DURATION       DECIMAL(10,2)  --INT 
		,AU_DK_OB_TALK_DURATION       DECIMAL(10,2)  --INT 
		,AU_DK_CONVENTIONAL_ACW       DECIMAL(10,2)  --INT 
		,AU_DK_NR_DURATION            DECIMAL(10,2)  --INT 
		,AU_DK_PSEUDO_PRODUCTIVE_DURATION   DECIMAL(10,2)  --INT 
		,AU_DK_ADJUSTED_NR_DURATION         DECIMAL(10,2)  --INT 
		,AU_DK_TOTAL_PRODUCTIVE_DURATION    DECIMAL(10,2)  --INT 
		,AU_DK_WPSEUDO_PRODUCTIVE_DURATIONS DECIMAL(10,2)  --INT 
		,AU_DK_XFER_COUNT             INT 
		,AU_DK_HOLD_COUNT             INT 
		,AU_DK_CONFERENCE_COUNT       INT 
		,AU_DK_CONSULT_COUNT          INT 
		,AU_DK_PUP_COUNT              INT 
		,AU_DK_OFFERED_COUNT          INT 
		,AU_DK_HANDLED_COUNT          INT 
		,AU_DK_IB_HANDLE_COUNT        INT 
		,AU_DK_OB_HANDLE_COUNT        INT 
		,AU_DK_RONA_COUNT             INT 
		,AU_DK_AWR_COUNT              INT 
		,MINIMUM_GUARANTEE            DECIMAL(10,2) 
		,AUTHORIZED_TO_INVOICE        DECIMAL(10,2) 
		,WEEK_ENDING_DATE             VARCHAR(50) 
		,PAY_CYCLE_CLOSURE_DATE       VARCHAR(50) 
		,CAL_DATE                     DATETIME
		,TENANT_KEY                   INT 
		,INVOICE_ID                   VARCHAR(50) 
		,CST_ROW_CREATED_TIME         DATETIME
		)
		--==================================
		INSERT INTO #IMPORTS_SABRE_AIA_XML
		SELECT --AIA.*
		 AIA.[PLATFORM]
		,AIA.[STATUS]                       
		,AIA.INVOICE_MAP_KEY              
		,AIA.FIELD_NAME                   
		,AIA.SCHEDULER_PROJECT_ID         
		,AIA.SCHEDULER_ACL_NAME           
		,AIA.ACD_ID_EXTENSION             
		,AIA.OFFICIAL_WSOL_CLIENT_ID      
		,AIA.OFFICIAL_WSOL_CLIENT_NAME    
		,AIA.OFFICIAL_ACD_CLIENT_ID       
		,AIA.OFFICIAL_ACD_CLIENT_NAME     
		,AIA.PRIMARY_PROJECT_MANAGER_ID   
		,AIA.DIRECTOR_OF_PROJECT_MANAGEMENT_ID 
		,AIA.AGENT_TECHNOLOGY_MANAGER_ID  
		,AIA.CONTRACTOR_SUPPORT_PATHWAY   
		,AIA.INVOICE_SYSTEM_ID            
		,AIA.HOLIDAY_INVOICE_ID           
		,AIA.HOLIDAY                      
		,AIA.FILE_FORMAT_OF_PUSH          
		,AIA.AGENT_PREPARATION_INVOICE_ID 
		,AIA.NEW_ACL                      
		,AIA.CURRENT_CATS                 
		,AIA.CATS_ID                      
		,AIA.PATS_ID                      
		,AIA.SMART_ELIGIBLE               
		,AIA.SMART_TIER_1                 
		,AIA.SMART_TIER_2                 
		,AIA.SMART_TIER_3                 
		,AIA.INTERVAL                     
		,AIA.DATE                         
		,AIA.HOD_INTERVAL                 
		,CAST( ( 1.0 * (AIA.AU_DK_LOGGED_IN_DURATION) ) / @DS AS DECIMAL(10,2)) --AS AU_DK_LOGGED_IN_DURATION
		,CAST( ( 1.0 * (AIA.AU_DK_AVAILABLE_DURATION) ) / @DS AS DECIMAL(10,2)) --AS AU_DK_AVAILABLE_DURATION
		,CAST( ( 1.0 * (AIA.AU_DK_TALK_DURATION) )      / @DS AS DECIMAL(10,2)) --AS AU_DK_TALK_DURATION
		,CAST( ( 1.0 * (AIA.AU_DK_IB_TALK_DURATION) )   / @DS AS DECIMAL(10,2)) --AS AU_DK_IB_TALK_DURATION
		,CAST( ( 1.0 * (AIA.AU_DK_OB_TALK_DURATION) )   / @DS AS DECIMAL(10,2)) --AS AU_DK_OB_TALK_DURATION
		,CAST( ( 1.0 * (AIA.AU_DK_CONVENTIONAL_ACW) )   / @DS AS DECIMAL(10,2)) --AS AU_DK_CONVENTIONAL_ACW
		,CAST( ( 1.0 * (AIA.AU_DK_NR_DURATION) )        / @DS AS DECIMAL(10,2)) --AS AU_DK_NR_DURATION
		,CAST( ( 1.0 * (AIA.AU_DK_PSEUDO_PRODUCTIVE_DURATION) )   / @DS AS DECIMAL(10,2)) --AS AU_DK_PSEUDO_PRODUCTIVE_DURATION
		,CAST( ( 1.0 * (AIA.AU_DK_ADJUSTED_NR_DURATION) )         / @DS AS DECIMAL(10,2)) --AS AU_DK_ADJUSTED_NR_DURATION
		,CAST( ( 1.0 * (AIA.AU_DK_TOTAL_PRODUCTIVE_DURATION) )    / @DS AS DECIMAL(10,2)) --AS AU_DK_TOTAL_PRODUCTIVE_DURATION
		,CAST( ( 1.0 * (AIA.AU_DK_WPSEUDO_PRODUCTIVE_DURATIONS) ) / @DS AS DECIMAL(10,2)) --AS AU_DK_WPSEUDO_PRODUCTIVE_DURATIONS
		,(AIA.AU_DK_XFER_COUNT)         --AS AU_DK_XFER_COUNT
		,(AIA.AU_DK_HOLD_COUNT)         --AS AU_DK_HOLD_COUNT
		,(AIA.AU_DK_CONFERENCE_COUNT)   --AS AU_DK_CONFERENCE_COUNT
		,(AIA.AU_DK_CONSULT_COUNT)      --AS AU_DK_CONSULT_COUNT
		,(AIA.AU_DK_PUP_COUNT)          --AS AU_DK_PUP_COUNT
		,(AIA.AU_DK_OFFERED_COUNT)      --AS AU_DK_OFFERED_COUNT
		,(AIA.AU_DK_HANDLED_COUNT)      --AS AU_DK_HANDLED_COUNT
		,(AIA.AU_DK_IB_HANDLE_COUNT)    --AS AU_DK_IB_HANDLE_COUNT
		,(AIA.AU_DK_OB_HANDLE_COUNT)    --AS AU_DK_OB_HANDLE_COUNT
		,(AIA.AU_DK_RONA_COUNT)         --AS AU_DK_RONA_COUNT
		,(AIA.AU_DK_AWR_COUNT)          --AS AU_DK_AWR_COUNT
		,CAST( ( 1.0 * (AIA.MINIMUM_GUARANTEE) )     / @DS AS DECIMAL(10,2)) --AS MINIMUM_GUARANTEE
		,CAST( ( 1.0 * (AIA.AUTHORIZED_TO_INVOICE) ) / @DS AS DECIMAL(10,2)) --AS AUTHORIZED_TO_INVOICE
		,AIA.WEEK_ENDING_DATE             
		,AIA.PAY_CYCLE_CLOSURE_DATE       
		,AIA.CAL_DATE                     
		,AIA.TENANT_KEY                   
		,AIA.INVOICE_ID                   
		,AIA.WS_ROW_CREATED_TIME         

		--  SELECT *
		FROM            WSOL_TB_IMPORTS_SABRE_UV_ANT_AIA     AIA
		INNER JOIN      DATE_TIME                            DT    ON DT.DATE_TIME_KEY      = AIA.STD_TENANT_START_DATE_TIME_KEY

		WHERE ( DT.CAL_DATE >= @DTM_BEG AND DT.CAL_DATE <  @DTM_END )
		--AND ( @TENANT_KEY      IN (',0,',',,') OR CHARINDEX(',' + CAST(AIA.TENANT_KEY       AS VARCHAR(10)) + ',',@TENANT_KEY)      > 0 )
		--AND ( @ID_EXT          IN (',0,',',,') OR CHARINDEX(',' + IG.ID_EXT + ',',@ID_EXT) > 0 )

		  AND AIA.STATUS = 'Active'
		  AND ISNULL(AIA.EMAIL,'') <> '' --<----Used to filter out those that were not in the AIA Agent Mapping table!
		  AND ( (ISNULL(AIA.READY_FOR_XML,'') = 'Y')  --<----Maintain this field, and the AIA will populate the XML correctly every time!!!!!!!!!
				OR (@ID_EXT = 'Y') )  --<----In Test Mode (ignore what ready_for_xml is set to).
		  AND ( ISNULL(AIA.INVOICE_ID,'') <> '' )  --INSURANCE, IN CASE BLANK ID EXTENSION SLIPS THROUGH...:

		ORDER BY 
		 AIA.OFFICIAL_ACD_CLIENT_NAME
		--,AIA.SCHEDULER_ACL_NAME
		,AIA.INVOICE_ID

		,AIA.ACD_ID_EXTENSION     
		,AIA.INVOICE_MAP_KEY
		,AIA.DATE
		,AIA.HOD_INTERVAL


		--==================================!!!--INSERT RECORD FOR REPORT SO SSIS KNOWS DATE OF DATA IN DATASET:
		--Have to include 'D??' or 'W??' because SRS Subscriptions are being ran at about same time in one sql job step.
		--  If one subscription takes longer than the other, the wrong date will get used/pulled from the YZ_TB_FILENAMES_FOR_SSIS in the ssis. and so on.
		IF CHARINDEX('D',@TIME_INTERVAL) > 0 BEGIN
			INSERT INTO YZ_TB_FILENAMES_FOR_SSIS
			(SQL_JOB_NAME
,FILENM
,CST_ROW_CREATED_TIME)
			SELECT  --FOR THE .XML FILES FOR EACH DATE:
			 'iNetAIA_' + LTRIM(RTRIM(@TIME_INTERVAL))  --'iNetAIA_D09' for internal wsinet tenants 9 days from current date.  --SQL_JOB_NAME
			,REPLACE(CONVERT(VARCHAR(10),@DTM_END - 1,1),'/','')  --INCLUDE FOR INTRADAY REPORTS:  + '_' + REPLACE(CONVERT(VARCHAR(10),dbo.getdate(),108),':','') --+ '.xls'  --FILENM
			,dbo.getdate()  --CST_ROW_CREATED_TIME
		END
		ELSE BEGIN  --'W' MEANING NEED TO PASS/POPULATE WITH DATE RANGE, LIKE 'MMDDYY_MMDDYY'. -- FOR GAR AND NW.
			INSERT INTO YZ_TB_FILENAMES_FOR_SSIS
						(SQL_JOB_NAME
,FILENM
,CST_ROW_CREATED_TIME)
			SELECT  --FOR GETAROOM AND NINE_WEST:    --old:-- 'AGENT_INVOICE_AIA_XML'  --SQL_JOB_NAME 
			 'iNetAIA_' + LTRIM(RTRIM(@TIME_INTERVAL)) + '_' + REPLACE(LTRIM(RTRIM(CAST(@TENANT_KEY AS VARCHAR(10)))),',','')  --'iNetAIA_W14_900595' for GAR  --SQL_JOB_NAME
			,REPLACE(CONVERT(VARCHAR(10),@DTM_BEG,1),'/','') + '_' + REPLACE(CONVERT(VARCHAR(10),@DTM_END - 1,1),'/','')  --INCLUDE FOR INTRADAY REPORTS:  + '_' + REPLACE(CONVERT(VARCHAR(10),dbo.getdate(),108),':','') --+ '.xls'  --FILENM
			,dbo.getdate()  --CST_ROW_CREATED_TIME
		END
		--  SELECT * FROM YZ_TB_FILENAMES_FOR_SSIS ORDER BY CST_ROW_CREATED_TIME DESC

		--==================================!!!--RETURN DATASET TO REPORT:
		SELECT *
		FROM #IMPORTS_SABRE_AIA_XML
		ORDER BY 
		 OFFICIAL_ACD_CLIENT_NAME
		--,SCHEDULER_ACL_NAME
		,INVOICE_ID

		,ACD_ID_EXTENSION     
		,INVOICE_MAP_KEY
		,DATE
		,HOD_INTERVAL
	END  --AIA_XML



END  --IF @RPT_TYPE_GRP = 'AIA'


--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1
--==================================