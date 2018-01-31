
CREATE PROCEDURE [dbo].[uspIMPORTS_WV_AIA_AGENT_MAPPING_IMPORT]
AS
SET NOCOUNT ON  -- EXECUTE [dbo].[uspIMPORTS_WV_AIA_AGENT_MAPPING_IMPORT]

--  DELETE FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1

--  SELECT * FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1

--  Data Loading FTP Pathway
--  FTP server   = sftp.workingsol.com
--  FTP Username = WorldVentures
--  FTP Password = Welcome2016!
--  FTP Pathway  = /World_Ventures/AIA_AGENT_MAPPING

--  USES WSOL_TB_IMPORT_ERRORS_FOUND.  NOT TOTALLY INDEPENDANT OF OTHER CLIENTS/TENANTS...

--=================================================================================================
DECLARE
 @TENANT_KEY      INT
,@SUB_GROUP_NAME  VARCHAR(50)
SET @TENANT_KEY		= 900902  --WORLD VENTURES
SET @SUB_GROUP_NAME = 'WORLD_VENTURES_AIA_AGENT_MAPPING'
--===========================================================================================================================================================================================
--WHEN RUNNING MANUALLY DURING TESTING:DELETE FROM WSOL_TB_IMPORT_ERRORS_FOUND WHERE TENANT_KEY = 900902  AND SUB_GROUP_NAME = 'WORLD_VENTURES_AIA_AGENT_MAPPING'
DELETE FROM WSOL_TB_IMPORT_ERRORS_FOUND
WHERE TENANT_KEY = @TENANT_KEY
  AND SUB_GROUP_NAME = @SUB_GROUP_NAME  --'WORLD_VENTURES_AIA_AGENT_MAPPING'    --  SELECT * FROM WSOL_TB_IMPORT_ERRORS_FOUND WHERE TENANT_KEY = 900902
--===========================================================================================================================================================================================
--WHEN RUNNING MANUALLY DURING TESTING:DELETE FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS WHERE TENANT_KEY = 900900  AND IMPORT_SUB_GROUP_NAME = 'WESTERN_DENTAL_AIA_AGENT_MAPPING'
DELETE FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS
WHERE IMPORT_SUB_GROUP_NAME = @SUB_GROUP_NAME  --'WORLD_VENTURES_AIA_AGENT_MAPPING' --SELECT * FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS WHERE TENANT_KEY = 900902
--===========================================================================================================================================================================================
UPDATE WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1 SET
 INVOICE_MAP_KEY	= RTRIM(LTRIM(REPLACE(ISNULL(INVOICE_MAP_KEY,''),' ',' ')))
,FF_EMAIL_MAP_KEY	= RTRIM(LTRIM(REPLACE(ISNULL(FF_EMAIL_MAP_KEY,''),' ',' ')))    
,FF_EMAIL_ADDRESS	= RTRIM(LTRIM(REPLACE(ISNULL(FF_EMAIL_ADDRESS,''),' ',' ')))
,FF_INVOICE_GROUP	= RTRIM(LTRIM(REPLACE(ISNULL(FF_INVOICE_GROUP,''),' ',' ')))
,FF_PAY_GROUP		= RTRIM(LTRIM(REPLACE(ISNULL(FF_PAY_GROUP,''),' ',' ')))
						  
--  SELECT * FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS
--======================================================================
--PROCESS DUPLICATES:
--======================================================================
INSERT INTO WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS
SELECT
 W1.RESOURCE_NAME
,W1.INVOICE_MAP_KEY
,w1.FF_EMAIL_MAP_KEY
,W1.FF_EMAIL_ADDRESS
,W1.FF_INVOICE_GROUP
,W1.FF_PAY_GROUP
,W1.FTP_FILE_NAME
,dbo.getdate()																		--WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  --,'WORLD_VENTURES_AIA_AGENT_MAPPING'							--IMPORT_SUB_GROUP_NAME
,'DUP'																			--ERROR_TAG
,'The World Ventures Agent ID exists more than once in the agent mapping file.'	--ERROR_MSG
--  SELECT *  
FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1  W1
INNER JOIN
(	SELECT
	 INVOICE_MAP_KEY
	,ROW_NUMBER() over (partition by INVOICE_MAP_KEY
                            order by INVOICE_MAP_KEY) ROWNO
	FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1
) TNM  ON TNM.INVOICE_MAP_KEY = W1.INVOICE_MAP_KEY

LEFT OUTER JOIN WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS AME   ON AME.INVOICE_MAP_KEY = W1.INVOICE_MAP_KEY

WHERE TNM.ROWNO > 1   

  AND ISNULL(AME.ERROR_TAG,'') = ''

--===============================================
--CHECK FOR BAD DATA FOUND IN IMPORT .CSV FILES:
--===============================================
--WHEN RUNNING MANUALLY DURING TESTING:INSERT INTO WSOL_TB_IMPORT_ERRORS_FOUND SELECT 900902,'WORLD_VENTURES_AIA_AGENT_MAPPING',''              
DECLARE
 @ERR_CNT  INT
,@RCD_CNT  INT
,@MSG1     VARCHAR(2500)
SET @ERR_CNT  = 0 
SET @RCD_CNT  = 0 
SET @MSG1     = ''
--SQL won't insert special characters!!!  + CHAR(9)  --CHAR(10) + CHAR(13)
--Check #1:  ===================================================================================================
	SET @RCD_CNT = (SELECT COUNT(*) FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1)
	IF @RCD_CNT < 1 BEGIN
		SET @MSG1 = @MSG1 + '1) File Import Failed.  No Records Were/Could Be Imported.   |   ' 
		SET @ERR_CNT = @ERR_CNT + 1
	END

--=============================== INSERT INTO PERMANENT TABLE (No errors) OR SKIP AND GO TO END (Errors):
IF @ERR_CNT > 0 BEGIN
	--SSIS reads WSOL_TB_IMPORT_ERRORS_FOUND table where TENANT_KEY = 900900, and if record exists, outputs results/error_msg field in an email.
	INSERT INTO WSOL_TB_IMPORT_ERRORS_FOUND
	SELECT 
	 @TENANT_KEY											--TENANT_KEY
	,@SUB_GROUP_NAME  --'WESTERN_DENTAL_AIA_AGENT_MAPPING'	--SUB_GROUP_NAME
	,@MSG1													--ERROR_MSG
	--===========================
	GOTO EARLY_EXIT
	--===========================
END
ELSE BEGIN
	--=============================================
	INSERT INTO WSOL_TB_IMPORT_ERRORS_FOUND
	SELECT 
	 @TENANT_KEY											--TENANT_KEY
	,@SUB_GROUP_NAME  --'WESTERN_DENTAL_AIA_AGENT_MAPPING'	--SUB_GROUP_NAME
	,''														--ERROR_MSG			--NEVER SET THIS TO @MSG1 !!!  MUST BE ''.
END

--======================================================================
--PROCESS BAD INVOICE GROUP VALUES:
--======================================================================
INSERT INTO WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS
SELECT
 W1.RESOURCE_NAME
,W1.INVOICE_MAP_KEY
,W1.FF_EMAIL_MAP_KEY
,W1.FF_EMAIL_ADDRESS
,W1.FF_INVOICE_GROUP
,W1.FF_PAY_GROUP
,W1.FTP_FILE_NAME
,dbo.getdate()																	--WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  --,'WORLD_VENTURES_AIA_AGENT_MAPPING'						--IMPORT_SUB_GROUP_NAME
,'IIG'																		--ERROR_TAG --INVALID INVOICE GROUP
,'The RESOURCE identifier found in the AIA Agent Mapping file is invalid.'	--ERROR_MSG
--  SELECT *  
FROM            WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1			W1

LEFT JOIN       WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS		AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
WHERE ISNULL(W1.FF_INVOICE_GROUP,'') NOT IN ('','Resource','Nesting','Spanish')

  AND ISNULL(AME.ERROR_TAG,'') = ''

--======================================================================
--PROCESS MISSING INVOICE MAP KEY VALUES:
--======================================================================
INSERT INTO WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS
SELECT
 W1.RESOURCE_NAME
,W1.INVOICE_MAP_KEY
,W1.FF_EMAIL_MAP_KEY
,W1.FF_EMAIL_ADDRESS
,W1.FF_INVOICE_GROUP
,W1.FF_PAY_GROUP
,W1.FTP_FILE_NAME
,dbo.getdate()														--WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  --,'WORLD_VENTURES_AIA_AGENT_MAPPING'				--IMPORT_SUB_GROUP_NAME
,'MAP'																--ERROR_TAG
,'The INVOICE MAP KEY is missing in the AIA Agent Mapping file.'	--ERROR_MSG
--  SELECT *  
FROM            WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1			W1

LEFT JOIN       WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS		AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
WHERE ISNULL(W1.INVOICE_MAP_KEY,'') = ''  -- CURRENTLY SET TO CISCO AGENT ID

  AND ISNULL(AME.ERROR_TAG,'') = ''

--======================================================================
--PROCESS MISSING EMAIL MAP KEY VALUES:
--======================================================================
INSERT INTO WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS
SELECT
 W1.RESOURCE_NAME
,W1.INVOICE_MAP_KEY
,W1.FF_EMAIL_MAP_KEY
,W1.FF_EMAIL_ADDRESS
,W1.FF_INVOICE_GROUP
,W1.FF_PAY_GROUP
,W1.FTP_FILE_NAME
,dbo.getdate()													--WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  --,'WORLD_VENTURES_AIA_AGENT_MAPPING'			--IMPORT_SUB_GROUP_NAME
,'EMP'															--ERROR_TAG
,'The EMAIL MAP KEY is missing in the AIA Agent Mapping file.'	--ERROR_MSG
--  SELECT *  
FROM            WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1			W1

LEFT JOIN       WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS		AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
WHERE ISNULL(W1.FF_EMAIL_MAP_KEY,'') = ''  

  AND ISNULL(AME.ERROR_TAG,'') = ''

-- SELECT * FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING ORDER BY RESOURCE_NAME
--!!! UPDATING """PERMANENT""" TABLE HERE: !!!
--=======================================================================================================
--UPDATE PERMANENT TABLE WITH WORK TABLE DATA WHERE TENANT_KEY AND INVOICE_MAP_KEY FIELDS/VALUES MATCH:
--=======================================================================================================
UPDATE WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING SET
 RESOURCE_NAME			= W1.RESOURCE_NAME
,INVOICE_MAP_KEY		= W1.INVOICE_MAP_KEY
,EMAIL_MAP_KEY			= W1.FF_EMAIL_MAP_KEY
,[EMAIL]				= W1.FF_EMAIL_ADDRESS
,INVOICE_GROUP			= W1.FF_INVOICE_GROUP
,PAY_GROUP				= W1.FF_PAY_GROUP
,FTP_FILE_NAME			= W1.FTP_FILE_NAME
--,WS_ROW_CREATED_TIME
,CST_ROW_UPDATED_TIME	= dbo.getdate()
--  SELECT *
FROM            WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1			W1
--INNER JOIN MUST BE HERE.  NEVER CHANGE!
INNER JOIN      WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING			G     ON G.INVOICE_MAP_KEY        = W1.INVOICE_MAP_KEY
LEFT JOIN       WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS		AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
--Where Permanent table key fields match Work table key fields - then we want to update non-key fields!!!:
WHERE ISNULL(AME.ERROR_TAG,'') = ''
  AND (   ( G.RESOURCE_NAME		<> W1.RESOURCE_NAME )
	   OR ( G.EMAIL_MAP_KEY		<> W1.FF_EMAIL_MAP_KEY )
	   OR ( G.[EMAIL]			<> W1.FF_EMAIL_ADDRESS )
	   --OR ( G.INVOICE_MAP_KEY	<> W1.INVOICE_MAP_KEY )
	   OR ( G.INVOICE_GROUP		<> W1.FF_INVOICE_GROUP )
	   OR ( G.PAY_GROUP			<> W1.FF_PAY_GROUP )
	  )

--  SELECT * FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING
--!!! INSERTING INTO """PERMANENT""" TABLE HERE: !!!
--========================================================
--INSERT "NEW" DATA FROM WORK TABLE INTO PERMANENT TABLE: 
--========================================================
INSERT INTO WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING
SELECT
 W1.RESOURCE_NAME  
,W1.INVOICE_MAP_KEY
,W1.FF_EMAIL_MAP_KEY
,W1.FF_EMAIL_ADDRESS
,W1.FF_INVOICE_GROUP
,W1.FF_PAY_GROUP
,W1.FTP_FILE_NAME
,dbo.getdate()        --WS_ROW_CREATED_TIME
,NULL             --WS_ROW_UPDATED_TIME

FROM            WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_1			W1
LEFT JOIN       WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING			G     ON G.INVOICE_MAP_KEY        = W1.INVOICE_MAP_KEY
LEFT JOIN       WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING_ERRORS		AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY

--Where Permanent table is Null and Work table is not Null - then we want to add the data!!!:
WHERE ( G.INVOICE_MAP_KEY IS NULL AND ISNULL(W1.INVOICE_MAP_KEY,'') <> '' )

  AND ISNULL(AME.ERROR_TAG,'') = ''

--  SELECT * FROM WSOL_TB_IMPORTS_WV_AIA_AGENT_MAPPING    ORDER BY INVOICE_MAP_KEY 

--=============================================
EARLY_EXIT:
--=============================================