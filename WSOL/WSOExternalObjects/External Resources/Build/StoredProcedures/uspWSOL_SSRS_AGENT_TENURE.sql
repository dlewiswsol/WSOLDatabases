﻿CREATE PROCEDURE [dbo].[uspWSOL_SSRS_AGENT_TENURE]
 @DATE_BEG			DATETIME
,@DATE_END			DATETIME
,@YEARS_ACTIVE		INT			 --Vis. Def=1
,@DUR_IN			VARCHAR(1)	 --Vis. Def=Y
,@STATUS			VARCHAR(500) --Vis. Def='ALL'
,@PSW				VARCHAR(10)  --Hid. Def='NONE'
,@EXECUTIONER		VARCHAR(3)   --Hid. Def='MAN'  MANual,SUBscription
,@RPT_TYPE			VARCHAR(3)   --Hid. Def='DLY'  
AS
BEGIN
SET NOCOUNT ON 

--  EXECUTE [dbo].[uspWSOL_SSRS_AGENT_TENURE] '06/28/2017','01/01/2017',1,'Y','ALL','','MAN','DLY'

--=============================================================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--=============================================================================
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
	IF @DATE_BEG < '01/01/1901' OR @RPT_TYPE = 'WKL' BEGIN	--WEEKLY - Run report for 7 days from current day to current day.
			--Dates passed in are for PREVIOUS DAY:
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME)				-- @DATE_BEG already starting at yesterday's date.
		SET @DTM_BEG = CASE WHEN DATEPART(DW,@DTM_BEG) = 1 THEN @DTM_BEG				-- MONDAY
							ELSE DATEADD(DD,-6,@DTM_BEG) END								-- SET START DATE TO PAST MONDAY
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME)				-- + 1 --DONE BELOW. 

		IF @DTM_END >  DBO.GETDATE() - 1 BEGIN											--DBO.GETDATE() -1 IS GOING TO ALSO INCLUDE SOME TIME AFTER MIDNIGHT.  THIS IS CORRECT !
			SET @DTM_END = CAST(CONVERT(VARCHAR(10),DBO.GETDATE() - 1,101) AS DATETIME)
		END
	END
	ELSE BEGIN  --DAILY - Run report for YESTERDAY, 1 Day ONLY.
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME)				--@DATE_BEG already starting at yesterday's date.
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME)				-- + 1 --done below.
	END

SET @DTM_END    = @DTM_END

--=======================================================================================
--	SET MULTI-VALUE PARAMETERS:
--=======================================================================================
SET @STATUS = ',' + LTRIM(RTRIM(REPLACE(@STATUS	,'ALL','0'))) + ','

--==================================
--	CREATE TMP TABLE:
--==================================
--	SELECT TOP 100 * FROM APPLICANT
IF OBJECT_ID('TEMPDB..#WSOL_SSRS_AGENT_TENURE') IS NOT NULL BEGIN
   DROP TABLE #WSOL_SSRS_AGENT_TENURE
END
CREATE TABLE #WSOL_SSRS_AGENT_TENURE
(AGENT_FIRST_NAME				VARCHAR(100)
,AGENT_MIDDLE_NAME				VARCHAR(100)
,AGENT_LAST_NAME				VARCHAR(100)
,CORPORATE_NAME					VARCHAR(4000)  
,MAILING_ADDRESS				VARCHAR(5000)
,CITY							VARCHAR(100)
,STATE_CODE						VARCHAR(20)  
,COUNTRY_CODE					VARCHAR(100)
,ZIP_CODE						VARCHAR(50)
,EMAIL_ADDRESS					VARCHAR(200)
,W9_STATUS						VARCHAR(5)
,W9_CORPORATE_STATUS			VARCHAR(5)
,CURRENT_STATUS					VARCHAR(100)
,[START_DATE]					DATETIME
,TENURE							DECIMAL(10,3)
,RESOURCE_NAME					VARCHAR(200)
)

INSERT INTO #WSOL_SSRS_AGENT_TENURE
SELECT
 DAT.AGENT_FIRST_NAME
,DAT.AGENT_MIDDLE_NAME
,DAT.AGENT_LAST_NAME
,DAT.CORPORATE_NAME
,DAT.MAILING_ADDRESS
,DAT.CITY
,DAT.STATE_CODE
,DAT.COUNTRY_CODE
,DAT.ZIP_CODE
,DAT.EMAIL_ADDRESS
,DAT.W9_STATUS
,DAT.W9_CORPORATE_STATUS
,DAT.CURRENT_STATUS
,DAT.[START_DATE]
,DAT.TENURE
,DAT.RESOURCE_NAME
FROM
(	SELECT
	 A.FIRSTNAME	AS AGENT_FIRST_NAME	
	,A.MIDDLINIT	AS AGENT_MIDDLE_NAME
	,A.LASTNAME		AS AGENT_LAST_NAME
	,A.CORPORATNAME	AS CORPORATE_NAME
	,A.MAILADDR		AS MAILING_ADDRESS
	,A.CITY			AS CITY
	,A.IDSTATE		AS STATE_CODE
	,A.IDCOUNTRY	AS COUNTRY_CODE
	,A.ZIP			AS ZIP_CODE
	,A.EMAIL		AS EMAIL_ADDRESS
	,A.W9			AS W9_STATUS
	,A.CORPORATEW9	AS W9_CORPORATE_STATUS
	,S.[NAME]		AS CURRENT_STATUS
	,A.DATECREATED	AS [START_DATE]
	,CASE WHEN @DUR_IN = 'D' THEN DATEDIFF(DAY,A.DATECREATED,@DTM_END) /   1.000
		  WHEN @DUR_IN = 'Y' THEN DATEDIFF(DAY,A.DATECREATED,@DTM_END) / 365.000		
		  ELSE DATEDIFF(DAY,A.DATECREATED,@DTM_END) END				AS TENURE
	,CASE WHEN ISNULL(A.MIDDLINIT,'') = '' THEN
			CONCAT(A.FIRSTNAME,' ',A.LASTNAME)
		  ELSE
			CONCAT(A.FIRSTNAME,' ',A.MIDDLINIT,' ',A.LASTNAME) END	AS RESOURCE_NAME
	--SELECT *
	FROM
					APPLICANT A
		LEFT JOIN	APPSTATUS S ON A.IDAPPSTATUS = S.IDAPPSTATUS

	WHERE 
		( @STATUS IN (',0,') OR CHARINDEX(',' + RTRIM(S.IDAPPSTATUS) + ',',@STATUS) > 0 )
	AND ( DATEDIFF(DAY,A.DATECREATED,@DTM_END) / 365.000 >= @YEARS_ACTIVE		)
	AND ( DATEDIFF(DAY,A.DATECREATED,@DTM_END) / 365.000 <  @YEARS_ACTIVE + 1	)
) DAT

--=================================================================================================
--	RETURN DATASET:
--=================================================================================================

SELECT 
 CONVERT(VARCHAR(10),@DTM_BEG,101) + '-' + CONVERT(VARCHAR(10),@DTM_END - 1,101)  AS DATE_RANGE
,V.*
FROM	#WSOL_SSRS_AGENT_TENURE		V
ORDER BY 
 V.TENURE
,V.RESOURCE_NAME

--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1

END

GO