CREATE PROCEDURE [dbo].[uspIMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@PSW                VARCHAR(10)  --IGNORED.  JUST THERE TO KEEP REPORT FROM RUNNING IMMEDIATELY AFTER SELECTED.
,@RPT_TYPE           VARCHAR(3)  
AS
SET NOCOUNT ON
--PURPOSE:  SHOW WHAT PROBLEMS THE RECENTLY IMPORTED AIA AGENT MAPPING FILE HAD DURING THE IMPORT/CLEANUP PROCESS.
--THIS USP IS DATA SOURCE FOR SRS GRID ON "AIA AGENT MAPPING" IMPORTS STATUS REPORT!!!

--  EXECUTE [dbo].[uspIMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS] '06/01/2014','06/10/2014','','R'

--  SELECT * FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS
--  SELECT * FROM YZ_TB_ERRORS_FOUND  --STILL NOT TOTALLY DEPENDANT BETWEEN OF OTHER CLIENTS/TENANTS.

--==================================
DECLARE 
 @TENANT_KEY      INT
,@SUB_GROUP_NAME  VARCHAR(50)
SET @TENANT_KEY     = 900700
SET @SUB_GROUP_NAME = 'DATALOT_AIA_AGENT_MAPPING'

--==================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--==================================
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
,@DTM_END_M1 AS DATETIME
IF @DATE_BEG < '01/01/1901' OR @RPT_TYPE = 'M' BEGIN     
--	IF @TIME_INTERVAL IN ('15','30','HR','DY') BEGIN
--	    SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 1,101) AS DATETIME)  --!!! HAVE TO CHANGE '-1' IF NEED TO PULL FILE FOR PREVIOUS DATE OTHER THAN YESTERDAY.!!!
--		SET @DTM_END = @DTM_BEG -- + 1
--	END
--	ELSE BEGIN
--		IF @TIME_INTERVAL IN ('WK') BEGIN  --SQL Job will run SRS Subscription on Sunday for previous Sunday to Saturday date range:
--		    SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 7,101) AS DATETIME)  --!!! HAVE TO CHANGE '-7' IF NEED TO PULL FILE FOR PREVIOUS DATE OTHER THAN YESTERDAY.!!!
--		    SET @DTM_END = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 1,101) AS DATETIME)  --!!! HAVE TO CHANGE '-1' IF NEED TO PULL FILE FOR PREVIOUS DATE OTHER THAN YESTERDAY.!!!
--		END
--		ELSE BEGIN  --'MO'  --SQL Job will run SRS Subscription on 1st of each month for previous Month date range:
			--SELECT DATEDIFF(dd,CAST('05/02/11' AS DATETIME),dbo.getdate())  --SELECT DATEADD(mm,1,dbo.getdate())

			--dates passed in are for previous day:
		    SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) 
			SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1
			--IF DATEDIFF(dd,@DTM_END,dbo.getdate()) > 6 BEGIN  --IF RPT DATE > 6 DAYS FROM CURRENT DATE THEN:
				SET @DTM_END      = CAST(CAST(DATEPART(mm  ,@DTM_BEG - 0) AS VARCHAR(2)) 
		                      + '/01/' + CAST(DATEPART(yyyy,@DTM_BEG - 0) AS VARCHAR(4)) AS DATETIME)    -- - 0 Will need to change when days previous is more than 1 day...
				SET @DTM_END = DATEADD(mm,1,@DTM_END) 
				--Subtract one day from 1st day of current date, which gives us last day of previous month:
				SET @DTM_END      = DATEADD(dd,-1,@DTM_END)
				--Get 1st day of previous month from previous end date value:
				SET @DTM_BEG      = CAST(DATEPART(mm,@DTM_END) AS VARCHAR(2)) + '/01/' + CAST(DATEPART(yyyy,@DTM_END) AS VARCHAR(4))

				IF @DTM_END >  dbo.getdate() - 1 BEGIN  --dbo.getdate() -1 IS GOING TO ALSO INCLUDE SOME TIME AFTER MIDNIGHT.  THIS IS CORRECT !
					SET @DTM_END = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 1,101) AS DATETIME)
				END

			--END
			--ELSE BEGIN
			--	SET @DTM_END      = CAST(CAST(DATEPART(mm  ,dbo.getdate() - 0) AS VARCHAR(2)) 
		    --                  + '/01/' + CAST(DATEPART(yyyy,dbo.getdate() - 0) AS VARCHAR(4)) AS DATETIME)    -- - 0 Will need to change when days previous is more than 1 day...
			--	--Subtract one day from 1st day of current date, which gives us last day of previous month:
			--	SET @DTM_END      = DATEADD(dd,-1,@DTM_END)
			--	--Get 1st day of previous month from previous end date value:
			--	SET @DTM_BEG      = CAST(DATEPART(mm,@DTM_END) AS VARCHAR(2)) + '/01/' + CAST(DATEPART(yyyy,@DTM_END) AS VARCHAR(4))
			--END
--		END
--	END
END
ELSE BEGIN  --Remember:  'From' and 'To' dates are 1 day previous to yesterday.
	IF @RPT_TYPE = 'W' BEGIN  --Weekly - Run report for 7 days from current day to current day.
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) -- - 13  --@DATE_BEG already starting at yesterday's date.
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1 --done below. 

		--TO TEST:
		--DECLARE
		-- @DTM_BEG DATETIME
		--,@DTM_END DATETIME
		----SET @DTM_BEG = CAST('07/25/2012' AS DATETIME)  
		----SET @DTM_END = CAST('07/25/2012' AS DATETIME)  
		----SET @DTM_BEG = CAST('08/02/2012' AS DATETIME)
		----SET @DTM_END = CAST('08/02/2012' AS DATETIME)
		--SET @DTM_BEG = CAST('08/03/2012' AS DATETIME)
		--SET @DTM_END = CAST('08/03/2012' AS DATETIME)

		--!!! 07/06/12 IS A FRIDAY.!!! IT IS THE BASE.  0 - 13 IS RETURNED BY DATEDIFF(...) % 14.  RAN FOR PREVIOUS, PREVIOUS FRI. TO THU. AND PREVIOUS FRI. TO THU..
		SET @DTM_BEG = DATEADD(DD,14 - (DATEDIFF(DD,CAST('09/27/2013' AS DATETIME),@DTM_END) % 14),@DTM_END) - 14
		SET @DTM_END = DATEADD(DD,14 - (DATEDIFF(DD,CAST('09/27/2013' AS DATETIME),@DTM_END) % 14),@DTM_END) - 1  -- + 1    (1 ADDED BELOW)
		--SELECT @DTM_BEG, @DTM_END
		IF @DTM_END >  dbo.getdate() - 1 BEGIN  --dbo.getdate() -1 IS GOING TO ALSO INCLUDE SOME TIME AFTER MIDNIGHT.  THIS IS CORRECT !
			SET @DTM_END = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 1,101) AS DATETIME)
		END

		--WHEN RAN ON FRI, 01/04/13, THE RESULTS RETURNS:  2012.12.21 - 2013.01.03    --FRI-THU   CORRECT!!!
		--SELECT CONVERT(VARCHAR(10),(DATEADD(DD,14 - (DATEDIFF(DD,CAST('07/06/2012' AS DATETIME),dbo.getdate()-1) % 14),dbo.getdate()-1) - 14),102) + ' - ' +
		--       CONVERT(VARCHAR(10),(DATEADD(DD,14 - (DATEDIFF(DD,CAST('07/06/2012' AS DATETIME),dbo.getdate()-1) % 14),dbo.getdate()-1) - 1),102)
	END
	ELSE IF @RPT_TYPE = 'B' BEGIN -- Bi-Monthly - Run for 1-15 or 16-EOM
		IF DAY(dbo.getdate()) > 1 AND DAY(dbo.getdate()) <= 16 BEGIN
			SET @DTM_BEG = CAST(CONVERT(VARCHAR(10), (CONVERT(VARCHAR(2),MONTH(dbo.getdate())) + CONVERT(VARCHAR(4),'/01/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate()))),101) AS DATETIME)
		END
		ELSE IF DAY(dbo.getdate()) = 1 BEGIN
			IF MONTH(dbo.getdate()) = 1 BEGIN
				SET @DTM_BEG = CONVERT(DATETIME,CONVERT(VARCHAR(6),'12/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate())-1))
			END
			ELSE BEGIN
				SET @DTM_BEG = CAST(CONVERT(VARCHAR(10), (CONVERT(VARCHAR(2),MONTH(dbo.getdate())-1) + CONVERT(VARCHAR(4),'/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate()))),101) AS DATETIME)
			END
		END
		ELSE BEGIN
			SET @DTM_BEG = CAST(CONVERT(VARCHAR(10), (CONVERT(VARCHAR(2),MONTH(dbo.getdate())) + CONVERT(VARCHAR(4),'/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate()))),101) AS DATETIME)
		END
		
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME)

	END
	ELSE BEGIN  --Daily - Run report for yesterday, 1 day only.
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME)      --@DATE_BEG already starting at yesterday's date.
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1 --done below.
	END
END
SET @DTM_END_M1 = @DTM_END      --FOR WEEKLY DATE FIELD.
SET @DTM_END    = @DTM_END + 1  --EVERYTHING ABOVE, @DTM_END IS FOR EXACT DATE RANGE NEEDED. ONE IS ADDED SO WHERE CLAUSE " < @DTM_END" WORKS.




IF OBJECT_ID('TEMPDB..#IMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS') IS NOT NULL BEGIN
   DROP TABLE #IMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS
END
CREATE TABLE #IMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS
(	[RESOURCE_NAME] [varchar](100) NULL,
	[EMAIL] [varchar](100) NULL,
	[FF_USERNAME] [varchar] (50) NOT NULL,
	[FF_AGENT_ID] [varchar] (50) NULL,
	[INVOICE_MAP_KEY] [varchar](50) NOT NULL,
	[FF_RESOURCE] [varchar](50) NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NULL,
	[PAY_GROUP] [varchar] (50) NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[IMPORT_SUB_GROUP_NAME] [varchar](100) NULL,
	[ERROR_TAG] [varchar](50) NULL,
	[ERROR_MSG] [varchar](2500) NULL
)
INSERT INTO #IMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS
SELECT
 RESOURCE_NAME
,[EMAIL]
,FF_USERNAME
,FF_AGENT_ID
,INVOICE_MAP_KEY
,FF_RESOURCE
--,FTP_FILE_NAME
,REPLACE(FTP_FILE_NAME,'N3w_','') AS FTP_FILE_NAME  --It will confuse them if they see 'N3w_' in file name !!!
,PAY_GROUP
,WS_ROW_CREATED_TIME
,IMPORT_SUB_GROUP_NAME
,ERROR_TAG
,ERROR_MSG

FROM            YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS     I   



--==================================
--ALTER TABLE IF DURATIONS WANTED IN SECONDS:  --TABLE FIRST CREATED WITH FIELDS DEFINED AS "DECIMAL(10,2)"...
--==================================
--IF @DUR_IN = 'SS' BEGIN
--	ALTER TABLE #IMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS ALTER COLUMN LOGIN_DUR     INT
--END

--=============================================
DECLARE
 @RCD_CNT  INT
SET @RCD_CNT  = 0 
SET @RCD_CNT = (SELECT COUNT(*) FROM #IMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS)
--=============================================
DECLARE @BG_COLOR VARCHAR(25)
SET @BG_COLOR = '#4CB748'		-- WSOL SUCCESS GREEN
IF @RCD_CNT > 0 BEGIN
	SET @BG_COLOR = '#D6323A'	-- WSOL DANGER RED
END
--=============================================
IF @RCD_CNT = 0 BEGIN
	INSERT INTO #IMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS
	SELECT
	 ''  --RESOURCE_NAME
	,''  --[EMAIL]
	,''  --FF_USERNAME
	,''  --FF_AGENT_ID
	,''  --INVOICE_MAP_KEY
	,''  --FF_RESOURCE
	,''  --FTP_FILE_NAME
	,''  --PAY_GROUP
	,dbo.getdate()  --WS_ROW_CREATED_TIME
	,''  --IMPORT_SUB_GROUP_NAME
	,''  --ERROR_TAG
	,''  --ERROR_MSG
END 
--=============================================
DECLARE @MSG1 VARCHAR(2500)
SET @MSG1 = ''
IF @RCD_CNT = 0 BEGIN  --IF @RCD_CNT = 0 HERE,IT ACTUALLY EQUALS THE ONE INSERTED STATING 'No Prolems.' IN ERROR_MSG.
	SET @MSG1 = @MSG1 + 'There were No DataLot AIA Agent Mapping Import Errors Found.'
END
ELSE BEGIN
	--IF (DATEDIFF(DD,CAST('01/20/2012' AS DATETIME),dbo.getdate()) % 14) = 0 BEGIN 
	--IF (DATEDIFF(DD,CAST('09/27/2013' AS DATETIME),@DTM_END) % 14) = 0 BEGIN 
	IF (DATEDIFF(DD,CAST('05/23/2014' AS DATETIME),@DTM_END) % 14) = 0 BEGIN 
		--This is an Invoice Friday:
		IF (DATEDIFF(DD,CAST('05/23/2014' AS DATETIME),dbo.getdate()) % 14) = 0 BEGIN  --end date + 1 may not be today, so dbo.getdate() is checked...
			SET @MSG1 = 'Today, '
		END
		SET @MSG1 = @MSG1 + CONVERT(VARCHAR(10),@DTM_END,101) + ', is Invoice Friday. ' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)
	END
	SET @MSG1 = @MSG1 + 'The list below contains errors found during the process of importing the DataLot AIA Agent Mapping .csv file. ' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)
	SET @MSG1 = @MSG1 + 'Project Management will need to add, remove, or update agent information in their DataLot AIA Agent Mapping .csv/"living" documents '
	SET @MSG1 = @MSG1 + 'and copy them to the FTP directory in order for these agents to be invoiced through the Scheduler system. ' + CHAR(13) + CHAR(10)

	--This put directly in report at bottom, in new table, with different font size...:
	--SET @MSG1 = @MSG1 + CHAR(10) + CHAR(13) + 'Please forward any questions or problems with this notification to dthola@wslive.com.  Thanks.'
END

IF @RPT_TYPE = 'B' BEGIN

	SET @MSG1 = ''

	IF @RCD_CNT = 0 BEGIN
		SET @MSG1 = @MSG1 + 'There were No DataLot AIA Agent Mapping Import Errors Found.'
	END
	ELSE BEGIN
		IF DAY(dbo.getdate()) = 16 OR DAY(dbo.getdate()) = 1 BEGIN
			SET @MSG1 = 'Today, ' + CONVERT(VARCHAR(10),dbo.getdate(),101) + ', is Invoice Posting Day. ' + CHAR(10) + CHAR(13) + CHAR(10) + CHAR(13)
		END

		SET @MSG1 = @MSG1 + 'The list below contains errors found during the process of importing the DataLot AIA Agent Mapping .csv file. ' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)
		SET @MSG1 = @MSG1 + 'Project Management will need to add, remove, or update agent information in their DataLot AIA Agent Mapping .csv/"living" documents '
		SET @MSG1 = @MSG1 + 'and copy them to the FTP directory in order for these agents to be invoiced through the Scheduler system. ' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)
	END
END

--=============================================
DECLARE @IMPORT_ERRORS_MSG VARCHAR(2500)
DECLARE @TODAY_1030 DATETIME
SET @TODAY_1030 = CAST(CONVERT(VARCHAR(10),dbo.getdate(),101) + ' 10:30:00' AS DATETIME)
IF dbo.getdate() >  @TODAY_1030 AND dbo.getdate() <  DATEADD(mi,30,@TODAY_1030) BEGIN
	--Can only do this if the Import process/job/usp was executed within the last 15 minutes !!!!!!:
	--If dbo.getdate() after 10:30am and before 11:00am, then can do this:  (Import sql job runs every 15 minutes from 6:00am - 6:01pm.)

	SET @IMPORT_ERRORS_MSG = ( SELECT TOP 1 ERROR_MSG FROM YZ_TB_ERRORS_FOUND 
							   WHERE TENANT_KEY = @TENANT_KEY AND SUB_GROUP_NAME = @SUB_GROUP_NAME )
	IF LEN(LTRIM(RTRIM(@IMPORT_ERRORS_MSG))) > 0 BEGIN

		SET @BG_COLOR = '#D6323A'	-- WSOL DANGER RED

		SET @MSG1 = @MSG1 + CHAR(10) + CHAR(13) + 'Some problems were noticed during the DataLot AIA Agent Mapping import process.  They are:  '  + CHAR(10) + CHAR(13)
			+ '      ' + @IMPORT_ERRORS_MSG + CHAR(10) + CHAR(13)
		SET @MSG1 = @MSG1 + CHAR(10) + CHAR(13) + 'And any in list below.'
	END
END



--==================================
--RETURN DATA:
--==================================
SELECT 
 *
,@MSG1       AS MSG1        
,@BG_COLOR   AS BG_COLOR    

FROM #IMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT_STATUS 

ORDER BY
 INVOICE_MAP_KEY

--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1