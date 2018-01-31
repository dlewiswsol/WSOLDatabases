CREATE PROCEDURE [dbo].[uspIMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@PSW                VARCHAR(10)  --IGNORED.  JUST THERE TO KEEP REPORT FROM RUNNING IMMEDIATELY AFTER SELECTED.
,@RPT_TYPE           VARCHAR(3)  
AS
SET NOCOUNT ON
--PURPOSE:  SHOW WHICH AGENT NAME VALUES EXIST IN THE ACTIVITY FILES WITHOUT A VALID ID EXTENSION.
--            WHEN NO VALID ID EXTENSION, THEN NO 'SCHEDULER' INVOICING.
--THIS USP IS DATA SOURCE FOR SRS GRID ON "ACTIVITY IMPORTS" STATUS REPORT!!!

--  EXECUTE [dbo].[uspIMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS] '08/16/2015','08/31/2015','900705','GAR_AIA_AGENT_MAPPING','','B'

--===========================================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--===========================================================
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
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) -- - 13  --@DATE_BEG already starting at yesterday's date.
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1 --done below. 

		SET @DTM_BEG = DATEADD(DD,14 - (DATEDIFF(DD,CAST('07/06/2012' AS DATETIME),@DTM_END) % 14),@DTM_END) - 14
		SET @DTM_END = DATEADD(DD,14 - (DATEDIFF(DD,CAST('07/06/2012' AS DATETIME),@DTM_END) % 14),@DTM_END) - 1  -- + 1    (1 ADDED BELOW)
		--SELECT @DTM_BEG, @DTM_END
		IF @DTM_END >  dbo.getdate() - 1 BEGIN  --dbo.getdate() -1 IS GOING TO ALSO INCLUDE SOME TIME AFTER MIDNIGHT.  THIS IS CORRECT !
			SET @DTM_END = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 1,101) AS DATETIME)
		END
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

IF OBJECT_ID('TEMPDB..#IMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS') IS NOT NULL BEGIN
   DROP TABLE #IMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS
END
CREATE TABLE #IMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS
(FILEDATETIME          VARCHAR(50)
,FTP_FILE_NAME         VARCHAR(100)
,WS_ROW_CREATED_TIME   DATETIME
,INVOICE_MAP_KEY       VARCHAR(50)
,RESOURCE_NAME         VARCHAR(100)
,RCD_CNT               INT
)
INSERT INTO #IMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS
SELECT
 DT.CAL_DATE_STRING  --CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) AS FILEDATETIME
,REPLACE(I.FTP_FILE_NAME,'N3w_','') AS FTP_FILE_NAME  --It will confuse them if they see 'N3w_' in file name !!!
,I.WS_ROW_CREATED_TIME
,I.FF_AGENT_NAME  AS INVOICE_MAP_KEY
,I.RESOURCE_NAME AS RESOURCE_NAME
,COUNT(*)  --AS RCD_CNT    --  SELECT *   --  SELECT TOP 100 *
FROM            WSOL_TB_IMPORTS_GAR_INVOICING               I   
INNER JOIN      DATE_TIME                                 DT   ON DT.DATE_TIME_KEY        = I.STD_TENANT_START_DATE_TIME_KEY
WHERE DT.CAL_DATE >= @DTM_BEG AND DT.CAL_DATE <  @DTM_END
  AND (
		(ISNULL(I.ID_EXT,'') = '')
	 OR (ISNULL(I.ID_EXT,'') NOT IN ('GBS','GRS','GBA','GBR','GBB','SVR','SRA'))
	  )
GROUP BY
 DT.CAL_DATE_STRING  --CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) --AS FILEDATETIME
--,I.FTP_FILE_NAME
,REPLACE(I.FTP_FILE_NAME,'N3w_','') --AS FTP_FILE_NAME  --It will confuse them if they see 'N3w_' in file name !!!
,I.WS_ROW_CREATED_TIME
,I.FF_AGENT_NAME
,I.RESOURCE_NAME

--==================================
UPDATE #IMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS SET
 FILEDATETIME = REPLACE(CONVERT(VARCHAR(10),ISNULL(FILEDATETIME,'1/1/1900'),102),'/',' . ')

--=============================================
DECLARE
 @RCD_CNT  INT
SET @RCD_CNT  = 0 
SET @RCD_CNT = (SELECT COUNT(*) FROM #IMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS)
--=============================================
DECLARE @BG_COLOR VARCHAR(25)
SET @BG_COLOR = '#4CB748'		-- WSOL SUCCESS GREEN
IF @RCD_CNT > 0 BEGIN
	SET @BG_COLOR = '#D6323A'	-- WSOL DANGER RED
END
IF @RCD_CNT = 0 BEGIN
	INSERT INTO #IMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS
	SELECT
	 ''  --DT.CAL_DATE_STRING  --CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) AS FILEDATETIME
	,''  --I.FTP_FILE_NAME
	,dbo.getdate()  --I.WS_ROW_CREATED_TIME
	,''  --I.FF_AGENT_NAME  AS INVOICE_MAP_KEY
	,''  --I.RESOURCE_NAME
	,0   --COUNT(*)  --AS RCD_CNT    --  SELECT *   --  SELECT TOP 100 *
END
--=============================================
DECLARE @MSG1 VARCHAR(2500)
SET @MSG1 = ''
IF @RCD_CNT = 0 BEGIN  --@RCD_CNT WILL BE 0 STILL, EVEN THOUGH ONE BLANK RECORD WAS ADDED...
	SET @MSG1 = @MSG1 + 'There are No Missing AIA Agent Mappings.'
END
ELSE BEGIN
IF @RPT_TYPE = 'B' BEGIN

	SET @MSG1 = ''
	
	IF @RCD_CNT = 0 BEGIN
		SET @MSG1 = @MSG1 + 'There are NO missing AIA agent mappings!'
	END
	ELSE BEGIN
		IF DAY(dbo.getdate()) = 16 OR DAY(dbo.getdate()) = 1 BEGIN
			SET @MSG1 = 'Today, ' + CONVERT(VARCHAR(10),dbo.getdate(),101) + ', is Invoice Processing Day. ' + CHAR(10) + CHAR(13) + CHAR(10) + CHAR(13)
		END
		SET @MSG1 = @MSG1 + 'The list below contains Agent Name values for agents that are associated with activity for the report date range, but ' + CHAR(10) + CHAR(13)
		SET @MSG1 = @MSG1 + 'who have a missing or invalid ID extension. ' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)

		SET @MSG1 = @MSG1 + 'Agents who are on this list will not be invoiced (for activity dates shown), unless a special request is made and received '
		SET @MSG1 = @MSG1 + 'with plenty of time before the automated invoice process begins.  The analyst will need to manually update the system when this scenario occurs. ' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)

		SET @MSG1 = @MSG1 + 'Also, Project Management may need to add or update agent information in their system '
		SET @MSG1 = @MSG1 + 'before the Analyst can correctly update agent data. ' + CHAR(13) + CHAR(10)
	END

END
END

--==================================
--RETURN DATA:
--==================================
SELECT 
 *
,@MSG1       AS MSG1        
,@BG_COLOR   AS BG_COLOR    

FROM #IMPORTS_GAR_AIA_AGENT_MAPPING_MISSING_AGENTS 

ORDER BY
 INVOICE_MAP_KEY
,FTP_FILE_NAME

--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1