﻿
CREATE PROCEDURE [dbo].[uspIMPORTS_DAILY_SCHEDULE_TENANT_NAMES]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
--,@TENANT_KEY         VARCHAR(150)
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspIMPORTS_DAILY_SCHEDULE_TENANT_NAMES] '09/01/2016','09/27/2016'
--  EXECUTE [dbo].[uspIMPORTS_DAILY_SCHEDULE_TENANT_NAMES] '07/01/2016','07/10/2016','152,153'    --select @tenant_key  --152,153
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) 
SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) + 1
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--SET @TENANT_KEY = ',' + LTRIM(RTRIM(@TENANT_KEY)) + ','  --already passed in with commas around keys...
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT
	ISNULL(SC.TENANT_NAME, WK.TENANT_NAME) AS TENANT_NAME
	--  SELECT *
	FROM WSOL_TB_IMPORTS_WORK_HOURS_ALL	WK
	FULL OUTER JOIN	WSOL_TB_IMPORTS_DAILY_SCHEDULE	SC
	
	 ON WK.OFFICIAL_ACL_NAME				= SC.OFFICIAL_ACL_NAME
	AND WK.FIELD_MAP_ID						= SC.FIELD_MAP_ID
	AND WK.STD_TENANT_START_DATE_TIME_KEY	= SC.STD_TENANT_START_DATE_TIME_KEY
	AND WK.TENANT_NAME						= SC.TENANT_NAME

	WHERE ISNULL(WK.DATETIME,SC.DATETIME) >= @DTM_BEG AND ISNULL(WK.DATETIME,SC.DATETIME) <  @DTM_END

	GROUP BY
	 ISNULL(SC.TENANT_NAME, WK.TENANT_NAME)

	ORDER BY
	 ISNULL(SC.TENANT_NAME, WK.TENANT_NAME)
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~