
CREATE PROCEDURE [dbo].[uspIMPORTS_APFM_DEFAULT_INVOICE_GROUPS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@TENANT_KEY         VARCHAR(150)
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspIMPORTS_APFM_DEFAULT_INVOICE_GROUPS] '05/12/2014','05/12/2014','0'
--  EXECUTE [dbo].[uspIMPORTS_APFM_DEFAULT_INVOICE_GROUPS] '05/12/2014','05/12/2014','152,153'    --select @tenant_key  --152,153
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) 
SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) + 1
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SET @TENANT_KEY = ',' + LTRIM(RTRIM(@TENANT_KEY)) + ','  --already passed in with commas around keys...
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
SELECT
 UA.INVOICE_GROUP_KEY
,UA.SCHEDULER_ACL_NAME
FROM 
(	SELECT
	 YT.INVOICE_GROUP_KEY
	,YT.SCHEDULER_ACL_NAME
	--  SELECT *
	FROM YZ_TB_IMPORTS_APFM_SD_INVOICE_GROUPS YT

	WHERE ( YT.WS_END_TIME >= @DTM_BEG AND YT.WS_START_TIME <  @DTM_END )
	  AND ( @TENANT_KEY IN (',,',',0,') OR CHARINDEX(',' + CAST(YT.TENANT_KEY AS VARCHAR(10)) + ',',@TENANT_KEY) > 0 )

	GROUP BY
	 YT.INVOICE_GROUP_KEY
	,YT.SCHEDULER_ACL_NAME

--	--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--	UNION ALL  --UUUUUUUUUUNNNNNNNNNNIIIIIIIIIIOOOOOOOOOONNNNNNNNNN
--	--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--
--	SELECT
--	 0                     AS INVOICE_GROUP_KEY
--	,' ALL INVOICE GROUPS' AS SCHEDULER_ACL_NAME  --MUST KEEP SPACE IN FRONT OF ' ALL TENANTS' !!!
) UA
ORDER BY UA.SCHEDULER_ACL_NAME

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~