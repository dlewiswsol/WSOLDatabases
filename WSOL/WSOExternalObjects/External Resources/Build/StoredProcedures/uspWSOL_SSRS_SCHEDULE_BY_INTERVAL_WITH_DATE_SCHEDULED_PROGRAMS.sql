﻿

CREATE PROCEDURE [dbo].[uspWSOL_SSRS_SCHEDULE_BY_INTERVAL_WITH_DATE_SCHEDULED_PROGRAMS]
 @DATE_BEG		DATETIME
,@DATE_END		DATETIME
,@DATE_INS		DATETIME
,@CLIENT_ID		VARCHAR(150)
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspWSOL_SSRS_SCHEDULE_BY_INTERVAL_WITH_DATE_SCHEDULED_PROGRAMS] '08/31/2017','08/31/2017','08/25/2017','106'

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
,@DTM_INS AS DATETIME
SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) 
SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) + 1
SET @DTM_INS = CAST(CONVERT(VARCHAR(10),@DATE_INS,101) AS DATETIME)
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SET @CLIENT_ID = ',' + LTRIM(RTRIM(@CLIENT_ID)) + ','

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT
 PRO.PROGRAM_ID
,PRO.[PROGRAM_NAME]
FROM 
(	SELECT
	 S.IDPROGR	AS PROGRAM_ID
	,P.[NAME]	AS [PROGRAM_NAME]
	-- SELECT *
	FROM SCHTIMES_AGENT S
	LEFT JOIN PROGRAM	P ON S.IDPROGR = P.ID

	WHERE ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) <  @DTM_END )
	  AND ( @CLIENT_ID IN (',,',',0,') OR CHARINDEX(',' + CAST(P.IDCLIENT AS VARCHAR(10)) + ',',@CLIENT_ID) > 0 )
	  AND ( P.ISSHOW = 1 )
	  AND ( S.DATEINS >= @DTM_INS )

	GROUP BY
	  S.IDPROGR
	 ,P.[NAME]

) PRO
ORDER BY PRO.PROGRAM_ID DESC

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GO