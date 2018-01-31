﻿CREATE PROCEDURE [dbo].[uspIMPORTS_GAR_Summary]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@PSW                VARCHAR(10)  --IGNORED.  JUST THERE TO KEEP REPORT FROM RUNNING IMMEDIATELY AFTER SELECTED.
,@RPT_TYPE           VARCHAR(3)  
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspIMPORTS_GAR_Summary] '08/16/2015','08/31/2015','','B'
--  EXECUTE [dbo].[uspIMPORTS_GAR_Summary] '08/16/2015','08/31/2015','','B'

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
	IF @RPT_TYPE = 'W' BEGIN  --Weekly 
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) -- - 13  --@DATE_BEG already starting at yesterday's date.
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1 --done below. 

		SET @DTM_BEG = DATEADD(DD,14 - (DATEDIFF(DD,CAST('05/23/2014' AS DATETIME),@DTM_END) % 14),@DTM_END) - 14
		SET @DTM_END = DATEADD(DD,14 - (DATEDIFF(DD,CAST('05/23/2014' AS DATETIME),@DTM_END) % 14),@DTM_END) - 1  -- + 1    (1 ADDED BELOW)
		--SELECT @DTM_BEG, @DTM_END
		IF @DTM_END >  dbo.getdate() - 1 BEGIN  --dbo.getdate() -1 IS GOING TO ALSO INCLUDE SOME TIME AFTER MIDNIGHT.  THIS IS CORRECT !
			SET @DTM_END = CAST(CONVERT(VARCHAR(10),dbo.getdate() - 1,101) AS DATETIME)
		END

	END
	ELSE IF @RPT_TYPE = 'B' BEGIN -- Bi-Monthly - Run 1-15 or 16-EOM
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

--==================================
--CREATE TMP TABLE:
--==================================
IF OBJECT_ID('TEMPDB..#IMPORTS_GAR_Summary') IS NOT NULL BEGIN
   DROP TABLE #IMPORTS_GAR_Summary
END
CREATE TABLE #IMPORTS_GAR_Summary
(FILEDATETIME			VARCHAR(20)
,FTP_FILE_NAME			VARCHAR(100)
,CST_ROW_CREATED_TIME	DATETIME
,RCD_CNT				INT
,INT_CNT				INT
)

--==================================
--INSERT RECORDS INTO TMP TABLE:
--==================================
--IF @PSW = 
    INSERT INTO #IMPORTS_GAR_Summary
	SELECT 
	 REPLACE(CONVERT(VARCHAR(10),ISNULL(UA.FILEDATETIME,'1/1/1900'),102),'.',' . ') --AS FILEDATETIME
	,ISNULL(UA.FTP_FILE_NAME,'')       --AS FTP_FILE_NAME
	,ISNULL(UA.WS_ROW_CREATED_TIME,'') --AS CST_ROW_CREATED_TIME
	,ISNULL(UA.RCD_CNT,'')             --AS RCD_CNT
	,ISNULL(UA.INT_CNT,'')			   --AS INT_CNT
	FROM
	(	SELECT
		 CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) AS FILEDATETIME
		,REPLACE(C.FTP_FILE_NAME,'N3w_','') AS FTP_FILE_NAME  --It will confuse them if they see 'N3w_' in file name !!!
		,C.WS_ROW_CREATED_TIME
		,COUNT(*) AS RCD_CNT
		,COUNT(DISTINCT C.HOUR_INTERVAL) AS INT_CNT
		--  SELECT * 
		FROM            WSOL_TB_IMPORTS_GAR_INVOICING  C

		INNER JOIN      DATE_TIME                         DT  ON DT.DATE_TIME_KEY = C.STD_TENANT_START_DATE_TIME_KEY

		WHERE DT.CAL_DATE >= @DTM_BEG AND DT.CAL_DATE <  @DTM_END

		GROUP BY
		 CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) --AS FILEDATETIME
		,REPLACE(C.FTP_FILE_NAME,'N3w_','') --AS FTP_FILE_NAME  --It will confuse them if they see 'N3w_' in file name !!!
		,C.WS_ROW_CREATED_TIME
	) UA

--END  --IF @PSW...


--==================================
--RETURN DATA:
--==================================

SELECT 
 FTP_FILE_NAME
,FILEDATETIME           
,CST_ROW_CREATED_TIME
,RCD_CNT
,INT_CNT      
,'White' AS BG_COLOR

FROM #IMPORTS_GAR_Summary 

ORDER BY          
 FTP_FILE_NAME
,FILEDATETIME        
,CST_ROW_CREATED_TIME
,RCD_CNT 
,INT_CNT     


--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1