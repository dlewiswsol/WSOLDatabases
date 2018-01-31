
CREATE PROCEDURE [dbo].[uspIMPORTS_GAR_DEFAULT_INVOICE_GROUPS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@TENANT_KEY         VARCHAR(150)
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspIMPORTS_GAR_DEFAULT_INVOICE_GROUPS] '05/12/2014','05/12/2014','0'
--  EXECUTE [dbo].[uspIMPORTS_GAR_DEFAULT_INVOICE_GROUPS] '05/12/2014','05/12/2014','152,153'    --select @tenant_key  --152,153
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) 
SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) + 1
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SET @TENANT_KEY = 900705 -- GAR
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT
 UA.ID_EXT
FROM 
(	SELECT
	 YT.ID_EXT
	-- SELECT *
	FROM WSOL_TB_IMPORTS_GAR_SD_INVOICE_GROUPS YT

	WHERE ( YT.WS_END_TIME >= @DTM_BEG AND YT.WS_START_TIME <  @DTM_END )

	GROUP BY
	 YT.ID_EXT
) UA
ORDER BY UA.ID_EXT

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~