﻿
CREATE PROCEDURE [dbo].[uspWSOL_DATALOT_SCORECARD]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME

AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspWSOL_DATALOT_SCORECARD] '04/01/2016'

DECLARE
 @DTM_BEG	AS DATETIME
,@DTM_END	AS DATETIME
,@DTM_TEMP	AS DATETIME

SET @DTM_TEMP = CAST('2016/04/16' AS DATETIME)

SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) 

--	IF DAY(@DTM_BEG) = 1 BEGIN
--		SET @DTM_END = DATEADD(DD, 14, @DTM_BEG)
--	END
--	ELSE BEGIN
--		SET @DTM_END = DATEADD(DD,-16,DATEADD(MM, 1, @DTM_BEG))
--	END

SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1
SET @DTM_END = @DTM_END + 1  --EVERYTHING ABOVE, @DTM_END IS FOR EXACT DATE RANGE NEEDED. ONE IS ADDED SO WHERE CLAUSE " < @DTM_END" WORKS.


IF OBJECT_ID('TEMPDB..#WSOL_DATALOT_SCORECARD') IS NOT NULL BEGIN
	DROP TABLE #WSOL_DATALOT_SCORECARD
END
CREATE TABLE #WSOL_DATALOT_SCORECARD
(FF_DATE					VARCHAR(50)
,FF_AGENT_ID				VARCHAR(50)
,ONLINE_TIME				DECIMAL(10,2)
,CONNECTED_TIME				DECIMAL(10,2)
,WRAP_TIME					DECIMAL(10,2)
,WAITING_TIME				DECIMAL(10,2)
,THREE_MIN_TRANSFERS		INT
,INBOUND_CALLS				INT
,OUTBOUND_CALLS				INT
,WRAP_ADJ_TIME				DECIMAL(10,2)
,TOTAL_TRANSFERS			INT
,AUTHORIZED_WRAP			DECIMAL(10,2)
,AUTHORIZED_MINUTES			DECIMAL(10,2)
,BASE_3_MINUTE_TRANSFER		DECIMAL(10,2)
,[3_MINUTE_TRANSFER_BONUS]	DECIMAL(10,2)
,ELIGIBLE_FOR_XFER_BONUS	VARCHAR(1)
,ACTUAL_XFER_BONUS_PAY		DECIMAL(10,2)
,[DATETIME]					DATETIME
,ID_EXT						VARCHAR(3)
)

INSERT INTO #WSOL_DATALOT_SCORECARD
SELECT
 AIA.FF_DATE
,AIA.FF_AGENT_ID
,AIA.ONLINE_TIME
,AIA.CONNECTED_TIME
,AIA.WRAP_TIME
,AIA.WAITING_TIME
,AIA.THREE_MIN_TRANSFERS
,AIA.INBOUND_CALLS
,AIA.OUTBOUND_CALLS
,AIA.WRAP_ADJ_TIME
,AIA.TOTAL_TRANSFERS
,AIA.AUTHORIZED_WRAP
,AIA.AUTHORIZED_MINUTES
,AIA.BASE_3_MINUTE_TRANSFER
,AIA.[3_MINUTE_TRANSFER_BONUS]
,AIA.ELIGIBLE_FOR_XFER_BONUS
,NULL AS ACTUAL_XFER_BONUS_PAY
,AIA.[DATETIME]
,AIA.ID_EXT

FROM YZ_TB_IMPORTS_DATALOT_INVOICING	AIA

WHERE [DATETIME] >= @DTM_BEG AND [DATETIME] <= @DTM_END


IF OBJECT_ID('TEMPDB..#WSOL_DATALOT_SCORECARD_XFER_BONUS') IS NOT NULL BEGIN
   DROP TABLE #WSOL_DATALOT_SCORECARD_XFER_BONUS
END
CREATE TABLE #WSOL_DATALOT_SCORECARD_XFER_BONUS
(INVOICE_MAP_KEY				VARCHAR(50)
,LOGGED_IN_HOURS				DECIMAL(10,3)
,THREE_MINUTE_XFERS				INT
,THREE_MINUTE_XFERS_PER_HOUR	DECIMAL(10,3)
,ELIGIBLE_FOR_XFER_BONUS		VARCHAR(1)
,ID_EXTENSION					VARCHAR(3)
)

INSERT INTO #WSOL_DATALOT_SCORECARD_XFER_BONUS
SELECT
 AIA.FF_AGENT_ID																														AS INVOICE_MAP_KEY
,CASE WHEN @DTM_END = @DTM_TEMP THEN
		SUM(ISNULL(AIA.ONLINE_TIME,0.00)) / 60.00
	  ELSE
		(SUM(ISNULL(AIA.ONLINE_TIME,0.00)) + SUM(ISNULL(AIA.WRAP_ADJ_TIME,0.00))) / 60.00
	  END																																AS LOGGED_IN_HOURS
,SUM(ISNULL(AIA.THREE_MIN_TRANSFERS,0))																									AS THREE_MINUTE_XFERS
,CASE WHEN @DTM_END = @DTM_TEMP THEN
		SUM(ISNULL(AIA.THREE_MIN_TRANSFERS,0)) / (SUM(ISNULL(AIA.ONLINE_TIME,0.00) / 60.00))
	  ELSE
		SUM(ISNULL(AIA.THREE_MIN_TRANSFERS,0)) / ((SUM(ISNULL(AIA.ONLINE_TIME,0.00)) + SUM(ISNULL(AIA.WRAP_ADJ_TIME,0.00))) / 60.00)
	  END																																AS THREE_MINUTE_XFERS_PER_HOUR
,MAX(AIA.ELIGIBLE_FOR_XFER_BONUS)																										AS ELIGIBLE_FOR_XFER_BONUS
,AIA.ID_EXT																																AS ID_EXTENSION

FROM YZ_TB_IMPORTS_DATALOT_INVOICING	AIA

WHERE [DATETIME] >= @DTM_BEG AND [DATETIME] <= @DTM_END

GROUP BY
 AIA.FF_AGENT_ID
,AIA.ID_EXT

/*
UPDATE #WSOL_DATALOT_SCORECARD_XFER_BONUS SET
 ELIGIBLE_FOR_XFER_BONUS	= CASE WHEN THREE_MINUTE_XFERS_PER_HOUR >= 6 THEN 'Y'
								   ELSE 'N' END
*/

--SELECT * FROM #WSOL_DATALOT_SCORECARD_XFER_BONUS

UPDATE #WSOL_DATALOT_SCORECARD SET
 ELIGIBLE_FOR_XFER_BONUS = XFER.ELIGIBLE_FOR_XFER_BONUS
FROM		#WSOL_DATALOT_SCORECARD SCR
LEFT JOIN	#WSOL_DATALOT_SCORECARD_XFER_BONUS XFER	ON XFER.INVOICE_MAP_KEY = SCR.FF_AGENT_ID
												   AND XFER.ID_EXTENSION	= SCR.ID_EXT

UPDATE #WSOL_DATALOT_SCORECARD SET
 ACTUAL_XFER_BONUS_PAY = CASE WHEN ELIGIBLE_FOR_XFER_BONUS = 'Y' THEN
								[3_MINUTE_TRANSFER_BONUS]
							  ELSE 0.00 END

--SELECT * FROM #WSOL_DATALOT_SCORECARD

SELECT
 ID.FF_DATE						AS FF_DATE
,SUM(ID.ONLINE_MINS)			AS ONLINE_MINS
,SUM(ID.CONNECTED_MINS)			AS CONNECTED_MINS
,SUM(ID.WRAP_MINS)				AS WRAP_MINS
,SUM(ID.WAITING_MINS)			AS WAITING_MINS
,SUM(ID.SUCCESSFUL_XFERS)		AS SUCCESSFUL_XFERS
,SUM(ID.INBOUNDS)				AS INBOUNDS
,SUM(ID.OUTBOUNDS)				AS OUTBOUNDS
,SUM(ID.WRAP_ADJ)				AS WRAP_ADJ
,SUM(ID.TOTAL_XFERS)			AS TOTAL_XFERS
,SUM(ID.AUTH_WRAP)				AS AUTH_WRAP
,SUM(ID.STD_BILLABLE_XFERS)		AS STD_BILLABLE_XFERS
,SUM(ID.RES_BILLABLE_XFERS)		AS RES_BILLABLE_XFERS
,SUM(ID.STD_MINS)				AS STD_MINS
,SUM(ID.RES_MINS)				AS RES_MINS
,SUM(ID.STD_CONNECTED_MINS)		AS STD_CONNECTED_MINS
,SUM(ID.RES_CONNECTED_MINS)		AS RES_CONNECTED_MINS
,SUM(ID.STD_WRAP_MINS)			AS STD_WRAP_MINS
,SUM(ID.RES_WRAP_MINS)			AS RES_WRAP_MINS
,SUM(ID.STD_TOTAL_ONLINE)		AS STD_TOTAL_ONLINE
,SUM(ID.RES_TOTAL_ONLINE)		AS RES_TOTAL_ONLINE
,SUM(ID.TOTAL_BASE_XFER_PAY)	AS TOTAL_BASE_XFER_PAY
,SUM(ID.TOTAL_XFER_BONUS_PAY)	AS TOTAL_XFER_BONUS_PAY
,SUM(ID.ACTUAL_XFER_BONUS_PAY)	AS ACTUAL_XFER_BONUS_PAY
--,MAX(ID.ID_EXT)			    AS ID_EXT
FROM (SELECT 
       FF_DATE AS FF_DATE
      ,SUM(ISNULL(ONLINE_TIME				,0.00)) AS ONLINE_MINS
      ,SUM(ISNULL(CONNECTED_TIME			,0.00)) AS CONNECTED_MINS
      ,SUM(ISNULL(WRAP_TIME					,0.00)) AS WRAP_MINS
      ,SUM(ISNULL(WAITING_TIME				,0.00)) AS WAITING_MINS
      ,SUM(ISNULL(THREE_MIN_TRANSFERS		,0))	AS SUCCESSFUL_XFERS	--FF_3_MIN_XFERS EFFECTIVE 8/1/15
      ,SUM(ISNULL(INBOUND_CALLS				,0))	AS INBOUNDS
      ,SUM(ISNULL(OUTBOUND_CALLS			,0))	AS OUTBOUNDS
      ,SUM(ISNULL(WRAP_ADJ_TIME				,0.00)) AS WRAP_ADJ
      ,SUM(ISNULL(TOTAL_TRANSFERS			,0))	AS TOTAL_XFERS
      ,SUM(ISNULL(AUTHORIZED_WRAP			,0.00)) AS AUTH_WRAP
	  ,CASE WHEN ID_EXT IN ('DLS','DLP') THEN SUM(ISNULL(THREE_MIN_TRANSFERS	,0	 )) ELSE 0 END AS STD_BILLABLE_XFERS	-- FF_3_MIN_XFERS EFFECTIVE 8/1/15
	  ,CASE WHEN ID_EXT  =  'DLR'		 THEN SUM(ISNULL(THREE_MIN_TRANSFERS	,0   )) ELSE 0 END AS RES_BILLABLE_XFERS	-- FF_3_MIN_XFERS EFFECTIVE 8/1/15
      ,CASE WHEN ID_EXT IN ('DLS','DLP') THEN SUM(ISNULL(AUTHORIZED_MINUTES		,0.00)) ELSE 0 END AS STD_MINS
      ,CASE WHEN ID_EXT  =  'DLR'		 THEN SUM(ISNULL(AUTHORIZED_MINUTES		,0.00)) ELSE 0 END AS RES_MINS
      ,CASE WHEN ID_EXT IN ('DLS','DLP') THEN SUM(ISNULL(CONNECTED_TIME			,0.00)) ELSE 0 END AS STD_CONNECTED_MINS
	  ,CASE WHEN ID_EXT  =  'DLR'		 THEN SUM(ISNULL(CONNECTED_TIME			,0.00)) ELSE 0 END AS RES_CONNECTED_MINS
	  ,CASE WHEN ID_EXT IN ('DLS','DLP') THEN SUM(ISNULL(WRAP_TIME				,0.00)) ELSE 0 END AS STD_WRAP_MINS
	  ,CASE WHEN ID_EXT  =  'DLR'		 THEN SUM(ISNULL(WRAP_TIME				,0.00)) ELSE 0 END AS RES_WRAP_MINS
	  ,CASE WHEN ID_EXT IN ('DLS','DLP') THEN SUM(ISNULL(ONLINE_TIME			,0.00)) + SUM(ISNULL(WRAP_ADJ_TIME ,0.00)) ELSE 0 END AS STD_TOTAL_ONLINE
	  ,CASE WHEN ID_EXT  =  'DLR'		 THEN SUM(ISNULL(ONLINE_TIME			,0.00)) + SUM(ISNULL(WRAP_ADJ_TIME ,0.00)) ELSE 0 END AS RES_TOTAL_ONLINE
	  ,SUM(ISNULL(BASE_3_MINUTE_TRANSFER	,0.00))	AS TOTAL_BASE_XFER_PAY
	  ,SUM(ISNULL([3_MINUTE_TRANSFER_BONUS]	,0.00))	AS TOTAL_XFER_BONUS_PAY
	  ,SUM(ISNULL(ACTUAL_XFER_BONUS_PAY		,0.00))	AS ACTUAL_XFER_BONUS_PAY
      ,ISNULL(ID_EXT,'') AS ID_EXT
--     FROM YZ_TB_IMPORTS_DATALOT_INVOICING 
	 FROM #WSOL_DATALOT_SCORECARD
--	 WHERE [DATETIME] >= @DTM_BEG AND [DATETIME] <= @DTM_END
     GROUP BY FF_DATE, ID_EXT) ID GROUP BY FF_DATE
--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1

--SELECT * FROM YZ_TB_IMPORTS_DATALOT_INVOICING ORDER BY WS_ROW_CREATED_TIME DESC




