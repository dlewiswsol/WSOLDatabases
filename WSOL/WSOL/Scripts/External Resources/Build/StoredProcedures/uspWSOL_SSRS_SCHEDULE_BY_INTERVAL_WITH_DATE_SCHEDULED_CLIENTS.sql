﻿
CREATE PROCEDURE [dbo].[uspWSOL_SSRS_SCHEDULE_BY_INTERVAL_WITH_DATE_SCHEDULED_CLIENTS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@DATE_INS			 DATETIME
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspWSOL_SSRS_SCHEDULE_BY_INTERVAL_WITH_DATE_SCHEDULED_CLIENTS] '08/31/2017','08/31/2017','08/25/2017'

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
,@DTM_INS AS DATETIME
SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) 
SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) + 1
SET @DTM_INS = CAST(CONVERT(VARCHAR(10),@DATE_INS,101) AS DATETIME)
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT
 SCH.CLIENT_ID
,SCH.CLIENT_NAME
FROM 
(	SELECT
	 P.IDCLIENT	AS CLIENT_ID
	,C.[NAME]	AS CLIENT_NAME
	--  SELECT *
	FROM		SCHTIMES_AGENT	S
	LEFT JOIN	PROGRAM			P ON S.IDPROGR = P.ID
	LEFT JOIN	CLIENT			C ON P.IDCLIENT = C.ID

	WHERE P.ISSHOW = 1
	  AND ( CAST(S.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(S.DATESCH AS DATETIME) < @DTM_END )
	  AND ( S.DATEINS > = @DTM_INS )
	--WHERE YT.[DATETIME] >= @DTM_BEG AND YT.[DATETIME] <  @DTM_END

	GROUP BY
	 P.IDCLIENT
	,C.[NAME]
) SCH
ORDER BY SCH.CLIENT_NAME

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GO