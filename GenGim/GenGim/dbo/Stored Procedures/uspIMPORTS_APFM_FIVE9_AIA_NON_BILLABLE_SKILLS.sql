
CREATE PROCEDURE [dbo].[uspIMPORTS_APFM_FIVE9_AIA_NON_BILLABLE_SKILLS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@PSW                VARCHAR(10)  --IGNORED.  JUST THERE TO KEEP REPORT FROM RUNNING IMMEDIATELY AFTER SELECTED.
,@RPT_TYPE           VARCHAR(3)  
AS
SET NOCOUNT ON
--PURPOSE:  SHOW WHICH SKILL VALUES EXIST IN THE AGENT INVOICE REPORTS, BUT ARE NOT CURRENTLY SELECTED AS BILLABLE AGENT SKILLS.

--THIS USP IS DATA SOURCE FOR SRS GRID ON "ACTIVITY IMPORTS" STATUS REPORT!!!

--  EXECUTE [dbo].[uspIMPORTS_APFM_FIVE9_AIA_NON_BILLABLE_SKILLS] '10/25/2013','11/17/2013','900626','APFM_AIA_AGENT_MAPPING','','R'

--==================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--==================================
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

		--!!! 07/06/12 IS A FRIDAY.!!! IT IS THE BASE.  0 - 13 IS RETURNED BY DATEDIFF(...) % 14.  RAN FOR PREVIOUS, PREVIOUS FRI. TO THU. AND PREVIOUS FRI. TO THU..
		SET @DTM_BEG = DATEADD(DD,14 - (DATEDIFF(DD,CAST('07/06/2012' AS DATETIME),@DTM_END) % 14),@DTM_END) - 14
		SET @DTM_END = DATEADD(DD,14 - (DATEDIFF(DD,CAST('07/06/2012' AS DATETIME),@DTM_END) % 14),@DTM_END) - 1  -- + 1    (1 ADDED BELOW)
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

--SELECT * FROM YZ_TB_IMPORTS_APFM_FIVE9_INVOICING_BAD WHERE BAD_IMPORTS_NO = 35


IF OBJECT_ID('TEMPDB..#IMPORTS_APFM_FIVE9_AIA_NON_BILLABLE_SKILLS') IS NOT NULL BEGIN
   DROP TABLE #IMPORTS_APFM_FIVE9_AIA_NON_BILLABLE_SKILLS
END
CREATE TABLE #IMPORTS_APFM_FIVE9_AIA_NON_BILLABLE_SKILLS
(FILEDATETIME          VARCHAR(50)
,FTP_FILE_NAME         VARCHAR(100)
,WS_ROW_CREATED_TIME   DATETIME
--,INVOICE_MAP_KEY       VARCHAR(50)
,SKILL_NAME		       VARCHAR(500)
,RCD_CNT               INT
--,BAD_IMPORTS_NO		   VARCHAR(5)
)
INSERT INTO #IMPORTS_APFM_FIVE9_AIA_NON_BILLABLE_SKILLS
SELECT
 B.FF_DATE
,REPLACE(B.FTP_FILE_NAME,'N3w_','') AS FTP_FILE_NAME  --It will confuse them if they see 'N3w_' in file name !!!
,B.WS_ROW_CREATED_TIME
--,B.FF_AGENT_NAME					AS INVOICE_MAP_KEY
,B.FF_SKILL_AVAILABILITY			AS SKILL_NAME
,COUNT(*)  --AS RCD_CNT
--,B.BAD_IMPORTS_NO
FROM            WSOL_TB_IMPORTS_APFM_INVOICING	B
WHERE CAST(B.FF_DATE AS DATETIME) >= @DTM_BEG AND CAST(B.FF_DATE AS DATETIME) <  @DTM_END
  --AND (ISNULL(B.BAD_IMPORTS_NO,0) = 35)
  AND BILLABLE_SKILL_Y_N = 'N'
  AND (ISNULL(B.FF_AGENT_NAME,'') NOT IN ('Joshua Miller','Lynne Rochel','Jessica Sharp','Karen Ritter','Emily Beauchamp'))	-- FILTER OUT APFM EMPLOYEES
GROUP BY
 B.FF_DATE
,REPLACE(B.FTP_FILE_NAME,'N3w_','') --AS FTP_FILE_NAME  --It will confuse them if they see 'N3w_' in file name !!!
,B.WS_ROW_CREATED_TIME
,B.FF_SKILL_AVAILABILITY	--SKILL_NAME
--,B.FF_AGENT_NAME			--INVOICE_MAP_KEY
--,B.BAD_IMPORTS_NO

--==================================
UPDATE #IMPORTS_APFM_FIVE9_AIA_NON_BILLABLE_SKILLS SET
 FILEDATETIME = REPLACE(CONVERT(VARCHAR(10),ISNULL(FILEDATETIME,'1/1/1900'),102),'/',' . ')


--=============================================
DECLARE
 @RCD_CNT  INT
SET @RCD_CNT  = 0 
SET @RCD_CNT = (SELECT COUNT(*) FROM #IMPORTS_APFM_FIVE9_AIA_NON_BILLABLE_SKILLS)
--=============================================
DECLARE @BG_COLOR VARCHAR(25)
SET @BG_COLOR = '#4CB748'		-- WSOL SUCCESS GREEN
IF @RCD_CNT > 0 BEGIN
	SET @BG_COLOR = '#D6323A'	-- WSOL DANGER RED
END

--=============================================
DECLARE @MSG1 VARCHAR(2500)
SET @MSG1 = ''
IF @RPT_TYPE = 'B' BEGIN

	SET @MSG1 = ''
	
	IF @RCD_CNT = 0 BEGIN
		SET @MSG1 = @MSG1 + 'There are NO non-billable skill records!'
	END
	ELSE BEGIN
		IF DAY(dbo.getdate()) = 16 OR DAY(dbo.getdate()) = 1 BEGIN
			SET @MSG1 = 'Today, ' + CONVERT(VARCHAR(10),dbo.getdate(),101) + ', is Invoice Processing Day. ' + CHAR(10) + CHAR(13) + CHAR(10) + CHAR(13)
		END
		SET @MSG1 = @MSG1 + 'The list below contains agent skill values for agents that are associated with activity for the report date range, but ' + CHAR(10) + CHAR(13)
		SET @MSG1 = @MSG1 + 'these skills have not been identified as billable agent skills. ' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)

		SET @MSG1 = @MSG1 + 'Skills that are on this list will not be included as part of agent invoice statistics (for activity dates shown), unless a special request is made and received '
		SET @MSG1 = @MSG1 + 'with plenty of time before the automated invoice process begins.  The analyst will need to manually update the system when this scenario occurs. ' + CHAR(13) + CHAR(10)
	END

END

--==================================
--RETURN DATA:
--==================================
SELECT 
*
,@MSG1       AS MSG1        
,@BG_COLOR   AS BG_COLOR    

FROM #IMPORTS_APFM_FIVE9_AIA_NON_BILLABLE_SKILLS 

ORDER BY
 FILEDATETIME
,SKILL_NAME



--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1
