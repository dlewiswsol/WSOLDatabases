﻿
CREATE PROCEDURE [dbo].[uspWSOL_SSRS_AGENT_DETAILS]
 @DATE_BEG			DATETIME
,@DATE_END			DATETIME
,@STATE_ID			VARCHAR(2500)	--Vis. Def='ALL'
,@STATUS_ID			VARCHAR(2500)	--Vis. Def='ALL'
,@PSW				VARCHAR(10)		--Hid. Def='NONE'
,@EXECUTIONER		VARCHAR(3)		--Hid. Def='MAN'  MANual,SUBscription
,@RPT_TYPE			VARCHAR(3)		--Hid. Def='DLY'  
AS
BEGIN
SET NOCOUNT ON 

--  EXECUTE [dbo].[uspWSOL_SSRS_AGENT_DETAILS] '06/19/2017','06/19/2017','ALL','ALL','','MAN','DLY'

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

SET @DTM_END    = @DTM_END + 1  --EVERYTHING ABOVE, @DTM_END IS FOR EXACT DATE RANGE NEEDED. ONE IS ADDED SO WHERE CLAUSE " < @DTM_END" WORKS.

--=======================================================================================
--	SET MULTI-VALUE PARAMETERS:
--=======================================================================================
SET @STATE_ID	= ',' + LTRIM(RTRIM(REPLACE(@STATE_ID	,'ALL','0'))) + ','
SET @STATUS_ID	= ',' + LTRIM(RTRIM(REPLACE(@STATUS_ID	,'ALL','0'))) + ','

--==================================
--	CREATE TMP TABLE:
--==================================
IF OBJECT_ID('TEMPDB..#WSOL_SSRS_AGENT_DETAILS') IS NOT NULL BEGIN
   DROP TABLE #WSOL_SSRS_AGENT_DETAILS
END
CREATE TABLE #WSOL_SSRS_AGENT_DETAILS
(AGENT_FIRST_NAME				VARCHAR(100)
,AGENT_MIDDLE_NAME				VARCHAR(100)
,AGENT_LAST_NAME				VARCHAR(100)
,RESOURCE_NAME					VARCHAR(200)
,CORPORATE_NAME					VARCHAR(250)
,CATS_ID						VARCHAR(50)
,EMAIL_ADDRESS					VARCHAR(150)
,CITY							VARCHAR(100)
,STATE_ID						VARCHAR(20)
,STATE_NAME						VARCHAR(100)
,ZIP_CODE						VARCHAR(50)
,STATUS_ID						VARCHAR(50)
,AGENT_STATUS					VARCHAR(150)
)

INSERT INTO #WSOL_SSRS_AGENT_DETAILS
SELECT
 ISNULL(DAT.AGENT_FIRST_NAME	,'' )
,ISNULL(DAT.AGENT_MIDDLE_NAME	,'' )
,ISNULL(DAT.AGENT_LAST_NAME		,'' )
,ISNULL(DAT.RESOURCE_NAME		,'' )
,ISNULL(DAT.CORPORATE_NAME		,'' )
,ISNULL(DAT.CATS_ID				,'0')
,ISNULL(DAT.EMAIL_ADDRESS		,'' )
,ISNULL(DAT.CITY				,'' )
,ISNULL(DAT.STATE_ID			,'0')
,ISNULL(DAT.STATE_NAME			,'' )
,ISNULL(DAT.ZIP_CODE			,'' )
,ISNULL(DAT.STATUS_ID			,'0')
,ISNULL(DAT.AGENT_STATUS		,'' )
FROM
(	
	SELECT
	 APP.FIRSTNAME					AS AGENT_FIRST_NAME
	,APP.MIDDLINIT					AS AGENT_MIDDLE_NAME
	,APP.LASTNAME					AS AGENT_LAST_NAME
	,CASE WHEN ISNULL(APP.MIDDLINIT,'') = ''
		  THEN CONCAT(APP.FIRSTNAME,' ',APP.LASTNAME)
		  ELSE CONCAT(APP.FIRSTNAME,' ',APP.MIDDLINIT,' ',APP.LASTNAME)
	 END							AS RESOURCE_NAME
	,CASE WHEN APP.CORPORATEW9 = 'Y'
		  THEN APP.CORPORATNAME
		  ELSE ''
	 END							AS CORPORATE_NAME
	,APP.AGENTIDENTNUM				AS CATS_ID
	,APP.EMAIL						AS EMAIL_ADDRESS
	,APP.CITY						AS CITY
	,APP.IDSTATE					AS STATE_ID
	,STA.[NAME]						AS STATE_NAME
	,APP.ZIP						AS ZIP_CODE
	,APP.IDAPPSTATUS				AS STATUS_ID
	,AST.[NAME]						AS AGENT_STATUS
	FROM	 APPLICANT	APP
			,[STATE]	STA
			,APPSTATUS	AST
	WHERE	APP.IDSTATE		= STA.IDSTATE
	  AND	APP.IDAPPSTATUS	= AST.IDAPPSTATUS
	  AND	( @STATE_ID	 IN (',0,') OR CHARINDEX(',' + RTRIM(APP.IDSTATE)	  + ',',@STATE_ID)  > 0   ) --APP.IDSTATE = @STATE_ID
	  AND	( @STATUS_ID IN (',0,') OR CHARINDEX(',' + RTRIM(APP.IDAPPSTATUS) + ',',@STATUS_ID) > 0   ) --APP.IDAPPSTATUS = @STATUS_ID
) DAT

--=================================================================================================
--	RETURN DATASET:
--=================================================================================================

SELECT 
 CONVERT(VARCHAR(10),@DTM_BEG,101) + '-' + CONVERT(VARCHAR(10),@DTM_END - 1,101)  AS DATE_RANGE
,V.*
FROM	#WSOL_SSRS_AGENT_DETAILS		V
ORDER BY 
 V.AGENT_STATUS
,V.STATE_NAME
,V.RESOURCE_NAME

--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1

END

GO