CREATE PROCEDURE [dbo].[uspIMPORTS_SCHEDULE_MISSING_MAP_KEYS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@PSW                VARCHAR(10)  --IGNORED.  JUST THERE TO KEEP REPORT FROM RUNNING IMMEDIATELY AFTER SELECTED.
,@RPT_TYPE           VARCHAR(3)  
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspIMPORTS_SCHEDULE_MISSING_MAP_KEYS] '12/01/2016','12/12/2016','900555','WSOL_SCHEDULE','','W'

--==========================================================================================================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--==========================================================================================================================
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
,@DTM_END_M1 AS DATETIME
IF @DATE_BEG < '01/01/1901' OR @RPT_TYPE = 'M' BEGIN     
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
END
ELSE BEGIN  --Remember:  'From' and 'To' dates are 1 day previous to yesterday.
	IF @RPT_TYPE = 'W' BEGIN  --Weekly - Run report for 7 days from current day to current day.
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) -- @DATE_BEG already starting at yesterday's date.
		SET @DTM_BEG = CASE WHEN DATEPART(DW,@DTM_BEG) = 7 THEN @DTM_BEG
							ELSE DATEADD(DD,-(DATEPART(DW,@DTM_BEG)),@DTM_BEG) END	-- SET START DATE TO PAST SUNDAY
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1 --done below. 

		IF @DTM_END >  dbo.getdate() - 1 BEGIN  --dbo.getdate() -1 IS GOING TO ALSO INCLUDE SOME TIME AFTER MIDNIGHT.  THIS IS CORRECT !
			SET @DTM_END = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 1,101) AS DATETIME)
		END
	END
	ELSE BEGIN  --Daily - Run report for yesterday, 1 day only.
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME)      --@DATE_BEG already starting at yesterday's date.
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1 --done below.
	END
END
SET @DTM_END_M1 = @DTM_END      --FOR WEEKLY DATE FIELD.
SET @DTM_END    = @DTM_END + 1  --EVERYTHING ABOVE, @DTM_END IS FOR EXACT DATE RANGE NEEDED. ONE IS ADDED SO WHERE CLAUSE " < @DTM_END" WORKS.

--===================================================================
-- CREATE TMP TABLE
--===================================================================
--SELECT * FROM WSOL_TB_IMPORTS_DAILY_SCHEDULE_1

IF OBJECT_ID('TEMPDB..#IMPORTS_SCHEDULE_MISSING_MAP_KEYS') IS NOT NULL BEGIN
   DROP TABLE #IMPORTS_SCHEDULE_MISSING_MAP_KEYS
END
CREATE TABLE #IMPORTS_SCHEDULE_MISSING_MAP_KEYS
(FILEDATETIME          VARCHAR(50)
,FTP_FILE_NAME         VARCHAR(100)
,SEQNO_ADDED_TIME	   DATETIME
,OFFICIAL_ACL_NAME	   VARCHAR(100)
,[ROLE]				   VARCHAR(50)
,FIELD_MAP_ID	       VARCHAR(100)
,EMAIL_ADDRESS	       VARCHAR(150)
,AGENT_NAME			   VARCHAR(150)
,RCD_CNT               INT
)
INSERT INTO #IMPORTS_SCHEDULE_MISSING_MAP_KEYS
SELECT
 DT.CAL_DATE_STRING  --CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) AS FILEDATETIME
,REPLACE(I.FTP_FILE_NAME,'N3w_','') AS FTP_FILE_NAME
,I.SEQNO_ADDED_TIME
,I.FF_OFFICIAL_ACL_NAME	AS OFFICIAL_ACL_NAME
,I.FF_ROLE				AS [ROLE]
,I.FF_FIELD_MAP_ID		AS FIELD_MAP_ID
,I.FF_EMAIL				AS EMAIL_ADDRESS
,I.FF_AGENT_NAME		AS AGENT_NAME
,COUNT(*)  --AS RCD_CNT    --  SELECT *   --  SELECT TOP 100 *
FROM            WSOL_TB_IMPORTS_DAILY_SCHEDULE_1	I   
INNER JOIN      DATE_TIME							DT   ON DT.DATE_TIME_KEY = I.STD_TENANT_START_DATE_TIME_KEY
WHERE DT.CAL_DATE >= @DTM_BEG AND DT.CAL_DATE <  @DTM_END
  AND I.FF_FIELD_MAP_ID = '99999'	-- RECORDS WITH NO INVOICE MAP KEY
  AND I.FF_OFFICIAL_ACL_NAME <> 'getaroom.com Standard Agents'	--GAR STANDARD AGENTS ARE NOT FIELD MAPPED
GROUP BY
 DT.CAL_DATE_STRING  --CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) --AS FILEDATETIME
,REPLACE(I.FTP_FILE_NAME,'N3w_','')
,I.SEQNO_ADDED_TIME
,I.FF_OFFICIAL_ACL_NAME
,I.FF_ROLE
,I.FF_FIELD_MAP_ID
,I.FF_EMAIL
,I.FF_AGENT_NAME


--===========================================================================================================
UPDATE #IMPORTS_SCHEDULE_MISSING_MAP_KEYS SET
 FILEDATETIME = REPLACE(CONVERT(VARCHAR(10),ISNULL(FILEDATETIME,'1/1/1900'),102),'/',' . ')
--===========================================================================================================
DECLARE
 @RCD_CNT  INT
SET @RCD_CNT  = 0 
SET @RCD_CNT = (SELECT COUNT(*) FROM #IMPORTS_SCHEDULE_MISSING_MAP_KEYS)
--=============================================
DECLARE @BG_COLOR VARCHAR(25)
SET @BG_COLOR = '#4CB748'		-- WSOL SUCCESS GREEN
IF @RCD_CNT > 0 BEGIN
	SET @BG_COLOR = '#D6323A'	-- WSOL DANGER RED
END
IF @RCD_CNT = 0 BEGIN
	INSERT INTO #IMPORTS_SCHEDULE_MISSING_MAP_KEYS
	SELECT
	 ''  --DT.CAL_DATE_STRING  --CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) AS FILEDATETIME
	,''  --I.FTP_FILE_NAME
	,dbo.getdate()  --I.SEQNO_ADDED_TIME
	,''  --I.FF_OFFICIAL_ACL_NAME	AS OFFICIAL_ACL_NAME
	,''  --I.FF_ROLE				AS [ROLE]
	,''  --I.FF_FIELD_MAP_ID		AS FIELD_MAP_ID
	,''	 --I.FF_EMAIL				AS EMAIL_ADDRESS
	,''	 --I.FF_AGENT_NAME			AS AGENT_NAME
	,0   --COUNT(*)  --AS RCD_CNT    --  SELECT *   --  SELECT TOP 100 *
END
--=============================================
DECLARE @MSG1 VARCHAR(2500)
SET @MSG1 = ''
IF @RCD_CNT = 0 BEGIN  --@RCD_CNT WILL BE 0 STILL, EVEN THOUGH ONE BLANK RECORD WAS ADDED...
	SET @MSG1 = @MSG1 + 'There are NO invalid records.'
END
ELSE BEGIN
	SET @MSG1 = @MSG1 + 'The list below is the list of records with missing Field Map IDs.'  + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)
END

--==================================
--RETURN DATA:
--==================================
SELECT 
 *
,@MSG1       AS MSG1        
,@BG_COLOR   AS BG_COLOR    

FROM #IMPORTS_SCHEDULE_MISSING_MAP_KEYS

ORDER BY
 OFFICIAL_ACL_NAME
,AGENT_NAME
,FTP_FILE_NAME

--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1