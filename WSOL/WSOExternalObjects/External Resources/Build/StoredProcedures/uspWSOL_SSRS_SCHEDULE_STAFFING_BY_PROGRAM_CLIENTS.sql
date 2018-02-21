﻿
CREATE PROCEDURE [dbo].[uspWSOL_SSRS_SCHEDULE_STAFFING_BY_PROGRAM_CLIENTS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspWSOL_SSRS_SCHEDULE_STAFFING_BY_PROGRAM_CLIENTS] '07/01/2017','07/31/2017'

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) 
SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) + 1
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SELECT
 CLI.ID		AS CLIENT_ID
,CLI.[NAME]	AS CLIENT_NAME
--SELECT *
FROM SCHTIMES_TL_SCHEDULE_TYPE SCH
LEFT JOIN PROGRAM	PRG ON SCH.IDPROGR	= PRG.ID
LEFT JOIN CLIENT	CLI ON PRG.IDCLIENT = CLI.ID
WHERE PRG.ISSHOW = 1
  AND ( CAST(SCH.DATESCH AS DATETIME) >= @DTM_BEG AND CAST(SCH.DATESCH AS DATETIME) < @DTM_END )
GROUP BY
 CLI.ID
,CLI.[NAME]
ORDER BY 
 CLI.[NAME]

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GO