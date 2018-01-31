﻿
CREATE PROCEDURE [dbo].[uspIMPORTS_EGENCIA_IMPORT_STATUS_MISSING_DATA]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@PSW                VARCHAR(10)  --IGNORED.  JUST THERE TO KEEP REPORT FROM RUNNING IMMEDIATELY AFTER SELECTED.
,@RPT_TYPE           VARCHAR(3)  
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspIMPORTS_EGENCIA_IMPORT_STATUS_MISSING_DATA] '10/01/2017','10/09/2017','','B'

--==============================================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--==============================================================
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
,@DTM_END_M1 AS DATETIME

IF @RPT_TYPE = 'B'
	BEGIN -- Bi-Monthly - Run 1-15 or 16-EOM
		IF DAY(dbo.getdate()) > 1 AND DAY(dbo.getdate()) <= 16
			BEGIN
				SET @DTM_BEG = CAST(CONVERT(VARCHAR(10), (CONVERT(VARCHAR(2),MONTH(dbo.getdate())) + CONVERT(VARCHAR(4),'/01/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate()))),101) AS DATETIME)
			END
		ELSE IF DAY(dbo.getdate()) = 1
			BEGIN
				IF MONTH(dbo.getdate()) = 1
					BEGIN
						SET @DTM_BEG = CONVERT(DATETIME,CONVERT(VARCHAR(6),'12/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate())-1))
					END
				ELSE 
					BEGIN
						SET @DTM_BEG = CAST(CONVERT(VARCHAR(10), (CONVERT(VARCHAR(2),MONTH(dbo.getdate())-1) + CONVERT(VARCHAR(4),'/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate()))),101) AS DATETIME)
					END
			END
		ELSE
			BEGIN
				SET @DTM_BEG = CAST(CONVERT(VARCHAR(10), (CONVERT(VARCHAR(2),MONTH(dbo.getdate())) + CONVERT(VARCHAR(4),'/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate()))),101) AS DATETIME)
			END
		
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME)

	END
ELSE
	BEGIN  --Daily - Run report for yesterday, 1 day only.
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME)      --@DATE_BEG already starting at yesterday's date.
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1 --done below.
	END

SET @DTM_END_M1 = @DTM_END      --FOR WEEKLY DATE FIELD.
SET @DTM_END    = @DTM_END + 1  --EVERYTHING ABOVE, @DTM_END IS FOR EXACT DATE RANGE NEEDED. ONE IS ADDED SO WHERE CLAUSE " < @DTM_END" WORKS.

--========================================================================
--CREATE TMP TABLE:
--========================================================================
IF OBJECT_ID('TEMPDB..#IMPORTS_EGENCIA_IMPORT_STATUS_MISSING_DATA') IS NOT NULL BEGIN
   DROP TABLE #IMPORTS_EGENCIA_IMPORT_STATUS_MISSING_DATA
END
CREATE TABLE #IMPORTS_EGENCIA_IMPORT_STATUS_MISSING_DATA
(FILEDATETIME			VARCHAR(20)
,FTP_FILE_NAME			VARCHAR(100)
,CST_ROW_CREATED_TIME	DATETIME
,RCD_CNT				INT
)

--========================================================================
--INSERT RECORDS INTO TMP TABLE:
--========================================================================
    INSERT INTO #IMPORTS_EGENCIA_IMPORT_STATUS_MISSING_DATA
	SELECT 
	 REPLACE(CONVERT(VARCHAR(10),ISNULL(UA.FILEDATETIME,'1/1/1900'),102),'.',' . ') --AS FILEDATETIME
	,ISNULL(UA.FTP_FILE_NAME,'')													--AS FTP_FILE_NAME
	,ISNULL(UA.WS_ROW_CREATED_TIME,'')												--AS CST_ROW_CREATED_TIME
	,ISNULL(UA.RCD_CNT,'')															--AS RCD_CNT
	FROM
	(	SELECT
		 CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) AS FILEDATETIME
		,REPLACE(C.FTP_FILE_NAME,'N3w_','')						AS FTP_FILE_NAME
		,C.WS_ROW_CREATED_TIME
		,COUNT(*)												AS RCD_CNT
		--  SELECT * 
		FROM            WSOL_TB_IMPORTS_EGENCIA_INVOICING		C

		INNER JOIN      DATE_TIME								DT  ON DT.DATE_TIME_KEY = C.STD_TENANT_START_DATE_TIME_KEY

		WHERE DT.CAL_DATE >= @DTM_BEG AND DT.CAL_DATE <  @DTM_END

		GROUP BY
		 CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME) --AS FILEDATETIME
		,REPLACE(C.FTP_FILE_NAME,'N3w_','')						--AS FTP_FILE_NAME
		,C.WS_ROW_CREATED_TIME
	) UA


--==================================
--RETURN DATA:
--==================================

SELECT 
 FTP_FILE_NAME
,FILEDATETIME           
,CST_ROW_CREATED_TIME
,RCD_CNT
,'White' AS BG_COLOR

FROM #IMPORTS_EGENCIA_IMPORT_STATUS_MISSING_DATA

ORDER BY
 FTP_FILE_NAME
,FILEDATETIME        
,CST_ROW_CREATED_TIME
,RCD_CNT


--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1