-- =======================================================================
-- Author:		ISAAC GUARDIOLA
-- Create date:	2017-07-29
-- Description:	FUNCTION TO RETURN MANUAL MAP DATA KEYS (FIELD MAP KEYS)
-- =======================================================================
CREATE FUNCTION [dbo].[TVF_WSOL_MANUAL_MAP_DATA] 
(
	-- Add the parameters for the function here
	 @CLIENT_ID		VARCHAR(3500)
	,@PROGRAM_ID	VARCHAR(3500)
)
RETURNS 
@RESULTS_TABLE TABLE 
(
	-- Add the column definitions for the TABLE variable here
	 CLIENT_ID				VARCHAR(20)
	,IDAGENT				VARCHAR(20)
	,FIELD_MAP_KEY			VARCHAR(200)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set

	SET @CLIENT_ID	= ',' + LTRIM(RTRIM(REPLACE(@CLIENT_ID	,'ALL','0'))) + ','
	SET @PROGRAM_ID	= ',' + LTRIM(RTRIM(REPLACE(@PROGRAM_ID	,'ALL','0'))) + ','

	INSERT INTO @RESULTS_TABLE
	SELECT
	 PRG.IDCLIENT	AS CLIENT_ID
	,MAP.IDAGENT	AS IDAGENT
	,MAP.USERID		AS FIELD_MAP_KEY
	FROM MANUALMAPDATA MAP
	LEFT JOIN MANUALMAPFLD	FLD ON MAP.IDMANUALMAPFLD = FLD.IDMANUALMAPFLD
	LEFT JOIN PROGRAM		PRG ON FLD.IDPROGRAM	  = PRG.ID
	WHERE ISNULL(MAP.USERID,'') <> ''
	  AND FLD.STATUS = 'Active'
	  AND ( @CLIENT_ID	IN (',0,') OR CHARINDEX(',' + RTRIM(PRG.IDCLIENT)	   + ',',@CLIENT_ID) > 0   ) 
	GROUP BY
	 PRG.IDCLIENT
	,MAP.IDAGENT
	,MAP.USERID

	RETURN 
END

GO