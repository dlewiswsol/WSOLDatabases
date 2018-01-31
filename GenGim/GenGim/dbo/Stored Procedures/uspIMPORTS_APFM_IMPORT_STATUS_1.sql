CREATE PROCEDURE [dbo].[uspIMPORTS_APFM_IMPORT_STATUS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@PSW                VARCHAR(10)  --IGNORED.  JUST THERE TO KEEP REPORT FROM RUNNING IMMEDIATELY AFTER SELECTED.
,@RPT_TYPE           VARCHAR(3)  
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspIMPORTS_APFM_IMPORT_STATUS] '06/01/2017','06/09/2017','','B'

--==============================================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--==============================================================
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME

IF @DATE_BEG < '01/01/1901' OR @RPT_TYPE = 'B' BEGIN     
			--Dates passed in are for previous day:
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

ELSE BEGIN  --DAILY - Run report for YESTERDAY, 1 Day ONLY.
	SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME)     -- @DATE_BEG already starting at yesterday's date.
	SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME)		-- + 1 --Done Below.
END

SET @DTM_END    = @DTM_END + 1  --EVERYTHING ABOVE, @DTM_END IS FOR EXACT DATE RANGE NEEDED. ONE IS ADDED SO WHERE CLAUSE " < @DTM_END" WORKS.


--=======================================================================================
--	CREATE TEMP TABLE:
--=======================================================================================
IF OBJECT_ID('TEMPDB..#IMPORTS_APFM_IMPORT_STATUS') IS NOT NULL BEGIN
   DROP TABLE #IMPORTS_APFM_IMPORT_STATUS
END
CREATE TABLE #IMPORTS_APFM_IMPORT_STATUS
(FILEDATETIME          VARCHAR(20)
,FTP_FILE_NAME         VARCHAR(100)
,CST_ROW_CREATED_TIME  DATETIME
,RCD_CNT               INT
)

--================================================================================================================
--	INSERT RECORDS INTO TEMP TABLE:
--================================================================================================================
INSERT INTO #IMPORTS_APFM_IMPORT_STATUS
SELECT 
	 REPLACE(CONVERT(VARCHAR(10),ISNULL(UA.FILEDATETIME,'1/1/1900'),102),'.',' . ')	AS FILEDATETIME
	,ISNULL(UA.FTP_FILE_NAME,'')													AS FTP_FILE_NAME
	,ISNULL(UA.WS_ROW_CREATED_TIME,'')												AS CST_ROW_CREATED_TIME
	,ISNULL(UA.RCD_CNT,0)															AS RCD_CNT
FROM
	(	
	SELECT
		 CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME)						AS FILEDATETIME
		,REPLACE(C.FTP_FILE_NAME,'N3w_','')											AS FTP_FILE_NAME
		,C.WS_ROW_CREATED_TIME														AS WS_ROW_CREATED_TIME
		,COUNT(*)																	AS RCD_CNT
		--  SELECT TOP 100 * FROM WSOL_TB_IMPORTS_APFM_INVOICING
	FROM		WSOL_TB_IMPORTS_APFM_INVOICING  C
	
	INNER JOIN	DATE_TIME						DT  ON DT.DATE_TIME_KEY = C.STD_TENANT_START_DATE_TIME_KEY
	WHERE DT.CAL_DATE >= @DTM_BEG AND DT.CAL_DATE <  @DTM_END

	GROUP BY
		 CAST(CONVERT(VARCHAR(10),DT.CAL_DATE,101) AS DATETIME)						--AS FILEDATETIME
		,REPLACE(C.FTP_FILE_NAME,'N3w_','')											--AS FTP_FILE_NAME
		,C.WS_ROW_CREATED_TIME														--AS WS_ROW_CREATED_TIME
	) UA

--=============================================================================
--	CHECK FOR BAD DATA FOUND IN IMPORT .CSV FILES:
--=============================================================================
DECLARE
 @ERR_CNT  INT
,@RCD_CNT  INT
,@MISS_DT_STR VARCHAR(2500)
,@FILEDATETIME VARCHAR(20)
SET @ERR_CNT  = 0 
SET @RCD_CNT  = 0 
SET @MISS_DT_STR  = ''
SET @FILEDATETIME = ''

--CREATE CURSOR, POPULATE CURSOR FOR 2 WEEK DATE RANGE, SPIN THROUGH EACH OF 14 RECORDS, CONCATENATING TO STRING FOR EACH DATE MISSING.

DECLARE crsT CURSOR FOR
SELECT DT.FILEDATETIME
FROM
(	
	SELECT	REPLACE(CONVERT(VARCHAR(10),DT.CAL_DATE,102),'.',' . ') AS FILEDATETIME
	FROM	DATE_TIME DT
	WHERE	DT.CAL_DATE >= @DTM_BEG AND DT.CAL_DATE <  @DTM_END
	GROUP BY
			REPLACE(CONVERT(VARCHAR(10),DT.CAL_DATE,102),'.',' . ') --AS FILEDATETIME
) DT 

LEFT OUTER JOIN #IMPORTS_APFM_IMPORT_STATUS  I	ON I.FILEDATETIME = DT.FILEDATETIME

WHERE ISNULL(I.RCD_CNT,0) = 0

ORDER BY 
 DT.FILEDATETIME

OPEN crsT
FETCH NEXT FROM crsT INTO @FILEDATETIME
WHILE @@FETCH_STATUS = 0 BEGIN
	SET @RCD_CNT = @RCD_CNT + 1 

    SET @MISS_DT_STR = @MISS_DT_STR + REPLACE(@FILEDATETIME,' . ','/') + ', '

    FETCH NEXT FROM crsT INTO @FILEDATETIME
END
CLOSE crsT
DEALLOCATE crsT

--======================================================================================================
SET @MISS_DT_STR = REPLACE(@MISS_DT_STR,'/','.')
IF LEN(@MISS_DT_STR) > 5 BEGIN
	SET @MISS_DT_STR = '(' + REPLACE(@MISS_DT_STR,', ','), (')
	SET @MISS_DT_STR = LEFT(@MISS_DT_STR,LEN(@MISS_DT_STR) - 3)  --TO REMOVE THE ENDING, ', ('
END

--======================================================================================================
DECLARE @BG_COLOR VARCHAR(25)
SET @BG_COLOR = '#4CB748'		-- WSOL SUCCESS GREEN
IF @RCD_CNT > 0 BEGIN
	SET @BG_COLOR = '#D6323A'	-- WSOL DANGER RED
END

--===========================================================================================================================================================================================
DECLARE @MSG1 VARCHAR(2500)
SET @MSG1 = ''

IF @RPT_TYPE = 'B' BEGIN

	SET @MSG1 = ''

	IF DAY(dbo.getdate()) = 16 OR DAY(dbo.getdate()) = 1 BEGIN
		SET @MSG1 = 'Today, ' + CONVERT(VARCHAR(10),dbo.getdate(),101) + ', is Invoice Processing Day. ' + CHAR(10) + CHAR(13) + CHAR(10) + CHAR(13)
		
		IF @RCD_CNT > 0 BEGIN
			SET @MSG1 = @MSG1 + 'Imported file(s) for the current invoice period show that the following date(s) might still be ' + CHAR(10) + CHAR(13)
			SET @MSG1 = @MSG1 + ' missing:  ' + @MISS_DT_STR + CHAR(10) + CHAR(13) + CHAR(10) + CHAR(13)

			SET @MSG1 = @MSG1 + 'The automated invoice processes begins at 10:00AM CST, today.' + CHAR(10) + CHAR(13) + CHAR(10) + CHAR(13)
			SET @MSG1 = @MSG1 + 'Any missing import files not on the SFTP server by 9:59AM CST will NOT be included in this period''s invoice data.' + CHAR(10) + CHAR(13)
		END
		ELSE BEGIN
			SET @MSG1 = @MSG1 + 'ALL date(s) appear to have been imported.   Thank you!' + CHAR(10) + CHAR(13)
		END
	END
	ELSE BEGIN
		SET @MSG1 = 'Imported file(s) from ' 
		+ CONVERT(VARCHAR(10),@DTM_BEG,101) + ' to ' + CONVERT(VARCHAR(10),@DTM_END - 1,101) + ' ' 
		IF @RCD_CNT > 0 BEGIN
			SET @MSG1 = @MSG1 + 'show the following date(s) might still be missing:  ' + @MISS_DT_STR + CHAR(10) + CHAR(13)  
		END
		ELSE BEGIN
			SET @MSG1 = @MSG1 + 'show no missing date(s).    Excellent!' + CHAR(10) + CHAR(13)
		END
	END
	
END

--===========================================================================================================================================================================================
DECLARE @IMPORT_ERRORS_MSG VARCHAR(2500)
DECLARE @TODAY_1030 DATETIME
SET @TODAY_1030 = CAST(CONVERT(VARCHAR(10),DBO.GETDATE(),101) + ' 10:30:00' AS DATETIME)
IF DBO.GETDATE() >  @TODAY_1030 AND DBO.GETDATE() <  DATEADD(mi,30,@TODAY_1030) BEGIN
	
	SET @IMPORT_ERRORS_MSG = ( SELECT TOP 1 ERROR_MSG FROM YZ_TB_ERRORS_FOUND
							   WHERE TENANT_KEY = 900626 AND SUB_GROUP_NAME = 'APFM_INVOICING' )  --<-- DO NOT CHANGE THIS !!!!!
	IF LEN(LTRIM(RTRIM(@IMPORT_ERRORS_MSG))) > 0 BEGIN

		SET @BG_COLOR = '#D6323A'	-- WSOL DANGER RED

		SET @MSG1 = @MSG1 + CHAR(10) + CHAR(13) + 'Some ERRORS were noticed during the import process.  They are:  '  + CHAR(10) + CHAR(13)
			+ '      ' + @IMPORT_ERRORS_MSG + CHAR(10) + CHAR(13)
	END
END

SELECT 
 @MSG1     AS MSG1
,@BG_COLOR AS BG_COLOR

--FROM #IMPORTS_APFM_IMPORT_STATUS 

--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1