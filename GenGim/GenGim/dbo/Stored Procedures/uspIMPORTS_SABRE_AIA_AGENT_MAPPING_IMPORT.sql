﻿CREATE PROCEDURE [dbo].[uspIMPORTS_SABRE_AIA_AGENT_MAPPING_IMPORT]
AS
SET NOCOUNT ON  -- EXECUTE [dbo].[uspIMPORTS_SABRE_AIA_AGENT_MAPPING_IMPORT]

--  DELETE FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1

--  SELECT * FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1

--Data Loading FTP Pathway
--  FTP server   = ftp.workingsol.com
--  FTP Username = global_imports
--  FTP Password = Welcome2013
--  FTP Pathway  = /AIA/SABRE/AIA_AGENT_MAPPING

--USES YZ_TB_ERRORS_FOUND.  NOT TOTALLY INDEPENDANT OF OTHER CLIENTS/TENANTS...

--=============================================  --COPY AND REPLACE THESE VARIABLES WHEN CREATING NEW USP FROM THIS USP.
DECLARE
 @TENANT_KEY      INT
,@SUB_GROUP_NAME  VARCHAR(50)
SET @TENANT_KEY     =       900704  --SABRE    --will begin with 900+ for external tenants.  the '900' is NOT part of YZ_TB_TENANT_KEY in YZ_TB_TENANTS table.
SET @SUB_GROUP_NAME = 'SABRE_AIA_AGENT_MAPPING'
--=============================================
--WHEN RUNNING MANUALLY DURING TESTING:DELETE FROM YZ_TB_ERRORS_FOUND WHERE TENANT_KEY = 900704  AND SUB_GROUP_NAME = 'SABRE_AIA_AGENT_MAPPING'
DELETE FROM YZ_TB_ERRORS_FOUND 
WHERE TENANT_KEY = @TENANT_KEY
  AND SUB_GROUP_NAME = @SUB_GROUP_NAME  --'SABRE_AIA_AGENT_MAPPING'    --  SELECT * FROM YZ_TB_ERRORS_FOUND WHERE TENANT_KEY = 900704
--=============================================
--WHEN RUNNING MANUALLY DURING TESTING:DELETE FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS WHERE TENANT_KEY = 900704  AND IMPORT_SUB_GROUP_NAME = 'SABRE_AIA_AGENT_MAPPING'
DELETE FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS
WHERE IMPORT_SUB_GROUP_NAME = @SUB_GROUP_NAME  --'SABRE_AIA_AGENT_MAPPING' --SELECT * FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS
--=============================================

--===========================================================
--  SELECT * FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1
--===========================================================

--=============================================
--CLEANUP WORK (_1) TABLE:
--=============================================
DELETE FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1 
WHERE ( ISNULL(INVOICE_MAP_KEY,'') = '' )
   OR ( ISNULL(RESOURCE_NAME,'') = '' )
   --OR ( ISNULL(PAY_GROUP,'') = '' )

--==================================================================================
--THE ELIMINATION OF THE 'SPECIAL CHARACTER' !!!
--  This ' ' is a special character!! and maybe just a space!!!
--  Hightlight it and do ctl+f, on suspected data, you'll see it isn't a space !
--==================================================================================
UPDATE WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1 SET
 RESOURCE_NAME            = RTRIM(LTRIM(REPLACE(ISNULL(RESOURCE_NAME,''),' ',' ')))
,[EMAIL]                  = RTRIM(LTRIM(REPLACE(ISNULL([EMAIL],''),' ',' ')))
,INVOICE_MAP_KEY          = RTRIM(LTRIM(REPLACE(ISNULL(INVOICE_MAP_KEY,''),' ',' ')))    
,FF_RESOURCE              = RTRIM(LTRIM(REPLACE(ISNULL(FF_RESOURCE,''),' ',' ')))
,PAY_GROUP				  = RTRIM(LTRIM(REPLACE(ISNULL(PAY_GROUP,''),' ',' ')))

--======================================================================
--PROCESS DUPLICATES:
--======================================================================
INSERT INTO WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS
(RESOURCE_NAME
,EMAIL
,INVOICE_MAP_KEY
,FF_RESOURCE
,PAY_GROUP
,FTP_FILE_NAME
,WS_ROW_CREATED_TIME
,IMPORT_SUB_GROUP_NAME
,ERROR_TAG
,ERROR_MSG
)
SELECT
 W1.RESOURCE_NAME
,W1.[EMAIL]
,W1.INVOICE_MAP_KEY
,W1.FF_RESOURCE
,W1.PAY_GROUP
,W1.FTP_FILE_NAME
,dbo.getdate()        -- WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  -- 'SABRE_AIA_AGENT_MAPPING'  --IMPORT_SUB_GROUP_NAME
,'DUP'            -- ERROR_TAG
,'The Invoice Map Key (Avaya ID) exists more than once in the AIA AGENT MAPPING file.'  --ERROR_MSG
--  SELECT *  
FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1  W1
INNER JOIN
(	SELECT
	 INVOICE_MAP_KEY
	,ROW_NUMBER() over (partition by INVOICE_MAP_KEY
                            order by INVOICE_MAP_KEY) ROWNO
	FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1
) TNM  ON TNM.INVOICE_MAP_KEY = W1.INVOICE_MAP_KEY

LEFT OUTER JOIN WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS AME   ON AME.INVOICE_MAP_KEY = W1.INVOICE_MAP_KEY

WHERE TNM.ROWNO > 1   

  AND ISNULL(AME.ERROR_TAG,'') = ''   --THE JOIN TO AME AND THIS LINE IS NOT REALLY NECESSARY SINCE THIS IS FIRST INSERTS INTO AME.!!!

----============================================================================================================================================================
--  DON'T NEED TO DO DELETES, BECAUSE THE RECORDS NEEDING TO BE DELETED EXIST IN THE MAPPING ERRORS TABLE.
--  THE MAPPING ERRORS TABLE CAN BE USED BELOW WHEN DOING THE INSERT INTO THE PERMANENT TABLE, SO THAT THE BAD RECORDS IN THE WORK TABLE DON'T GET INSERTED.
--==============================================================================================================================================================

--=============================================	--Hopefully generic enough for all Tenant SSIS to use!
--CHECK FOR BAD DATA FOUND IN IMPORT .TXT FILES:
--=============================================
--WHEN RUNNING MANUALLY DURING TESTING:INSERT INTO YZ_TB_ERRORS_FOUND SELECT 900704,'SABRE_AIA_AGENT_MAPPING',''              
DECLARE
 @ERR_CNT  INT
,@RCD_CNT  INT
,@MSG1     VARCHAR(2500)
SET @ERR_CNT  = 0 
SET @RCD_CNT  = 0 
SET @MSG1     = ''
--SQL won't insert special characters!!!  + CHAR(9)  --CHAR(10) + CHAR(13)
--Check #1:  ===================================================================================================
	SET @RCD_CNT = (SELECT COUNT(*) FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1)
	IF @RCD_CNT < 1 BEGIN
		SET @MSG1 = @MSG1 + '1) File Import Failed.  No Records Were/Could Be Imported.   |   ' 
		SET @ERR_CNT = @ERR_CNT + 1
	END
--Check #2:  ===================================================================================================
	SET @RCD_CNT = (SELECT COUNT(*) FROM WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1 WHERE [EMAIL] = '')
	IF @RCD_CNT > 0 BEGIN
		SET @MSG1 = @MSG1 + '2) File Import Failed.  There are records with missing E-Mail addresses.   |    '
		SET @ERR_CNT = @ERR_CNT + 1
	END
--=============================== INSERT INTO PERMANENT TABLE (No errors) OR SKIP AND GO TO END (Errors):
IF @ERR_CNT > 0 BEGIN
	--SSIS reads YZ_TB_ERRORS_FOUND table where TENANT_KEY = 900704, and if record exists, outputs results/error_msg field in an email.
	INSERT INTO YZ_TB_ERRORS_FOUND
	(TENANT_KEY
,SUB_GROUP_NAME
,ERROR_MSG)
	SELECT 
	 @TENANT_KEY      -- TENANT_KEY
	,@SUB_GROUP_NAME  -- 'SABRE_AIA_AGENT_MAPPING'   --SUB_GROUP_NAME
	,@MSG1            -- ERROR_MSG
	--===========================
	GOTO EARLY_EXIT
	--===========================
END
ELSE BEGIN
	INSERT INTO YZ_TB_ERRORS_FOUND
	(TENANT_KEY
,SUB_GROUP_NAME
,ERROR_MSG)
	SELECT 
	 @TENANT_KEY      -- TENANT_KEY
	,@SUB_GROUP_NAME  -- 'SABRE_AIA_AGENT_MAPPING'   --SUB_GROUP_NAME
	,''               -- ERROR_MSG  --Never make this @MSG1 !!!  Must stay as ''.
	--Do NOT want to got to early exit here because data was good, according to 'checks'!  We want to import data into permanent table.
END
--IN SSIS, WOULD SELECT FROM TABLE WHERE TENANT_KEY = 900704 AND STORE IN SSIS VARIABLE.  IF VARIABLE NOT EMPTY, WILL SEND EMAIL AND END SSIS...
--=============================================

--======================================================================
--PROCESS BAD RESOURCE IDENTIFIER VALUES:
--======================================================================
INSERT INTO WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS
(RESOURCE_NAME
,EMAIL
,INVOICE_MAP_KEY
,FF_RESOURCE
,PAY_GROUP
,FTP_FILE_NAME
,WS_ROW_CREATED_TIME
,IMPORT_SUB_GROUP_NAME
,ERROR_TAG
,ERROR_MSG
)
SELECT
 W1.RESOURCE_NAME
,W1.[EMAIL]
,W1.INVOICE_MAP_KEY
,W1.FF_RESOURCE
,W1.PAY_GROUP
,W1.FTP_FILE_NAME
,dbo.getdate()        -- WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  -- 'SABRE_AIA_AGENT_MAPPING'  --IMPORT_SUB_GROUP_NAME
,'RES'            -- ERROR_TAG
,'The Resource Identifier is invalid in the AIA AGENT MAPPING file.'  --ERROR_MSG
--  SELECT *  
FROM            WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1		W1
LEFT JOIN       WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS	AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
WHERE ISNULL(W1.FF_RESOURCE,'') NOT IN ('','Resource','VGR Resource','VGR Standard','Vantage')  --Resource, VGR, Vantage, or Blank, where Blank becomes 'Standard Agent', Resource' becomes 'Resource Agent', 'Vantage' becomes 'Vantage Agnet', and 'VGR' becomes 'VGR Agent'.
  AND ISNULL(AME.ERROR_TAG,'') = ''

--======================================================================
--PROCESS MISSING PAY GROUP VALUES:
--======================================================================
INSERT INTO WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS
(RESOURCE_NAME
,EMAIL
,INVOICE_MAP_KEY
,FF_RESOURCE
,PAY_GROUP
,FTP_FILE_NAME
,WS_ROW_CREATED_TIME
,IMPORT_SUB_GROUP_NAME
,ERROR_TAG
,ERROR_MSG
)
SELECT
 W1.RESOURCE_NAME
,W1.[EMAIL]
,W1.INVOICE_MAP_KEY
,W1.FF_RESOURCE
,W1.PAY_GROUP
,W1.FTP_FILE_NAME
,dbo.getdate()        -- WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  -- 'SABRE_AIA_AGENT_MAPPING'  --IMPORT_SUB_GROUP_NAME
,'PAY'            -- ERROR_TAG
,'The PAY GROUP is missing in AIA Agent Mapping file.'  --ERROR_MSG
--  SELECT *  
FROM            WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1           W1
LEFT JOIN       WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS      AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
WHERE ISNULL(W1.PAY_GROUP,'') = ''  -- Currently 0 is original pay contract
  AND ISNULL(AME.ERROR_TAG,'') = ''

--==============================================================================================================================================================
--  DON'T NEED TO DO DELETES, BECAUSE THE RECORDS NEEDING TO BE DELETED EXIST IN THE MAPPING ERRORS TABLE.
--  THE MAPPING ERRORS TABLE CAN BE USED BELOW WHEN DOING THE INSERT INTO THE PERMANENT TABLE, SO THAT THE BAD RECORDS IN THE WORK TABLE DON'T GET INSERTED.
--==============================================================================================================================================================


--!!! UPDATING """PERMANENT""" TABLE HERE: !!!
--========================================================================================================
--UPDATE PERMANENT TABLE WITH WORK TABLE DATA WHERE TENANT_KEY AND INVOICE_MAP_KEY FIELDS/VALUES MATCH:
--========================================================================================================
UPDATE WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING SET
 RESOURCE_NAME    = W1.RESOURCE_NAME
,[EMAIL]          = W1.[EMAIL]
,INVOICE_MAP_KEY  = W1.INVOICE_MAP_KEY
,FF_RESOURCE      = W1.FF_RESOURCE
,PAY_GROUP        = W1.PAY_GROUP
,FTP_FILE_NAME    = W1.FTP_FILE_NAME
--,WS_ROW_CREATED_TIME
,CST_ROW_UPDATED_TIME = dbo.getdate()
--  SELECT *
FROM            WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1          W1
--INNER JOIN MUST BE HERE.  NEVER CHANGE!
INNER JOIN      WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING            G     ON G.INVOICE_MAP_KEY        = W1.INVOICE_MAP_KEY
LEFT JOIN       WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS     AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY

--Where Permanent table key fields match Work table key fields - then we want to update non-key fields!!!:
WHERE ISNULL(AME.ERROR_TAG,'') = ''
  AND (   ( G.RESOURCE_NAME   <> W1.RESOURCE_NAME )
	   OR ( G.[EMAIL]         <> W1.[EMAIL] )
	   OR ( G.INVOICE_MAP_KEY <> W1.INVOICE_MAP_KEY )
	   OR ( G.FF_RESOURCE     <> W1.FF_RESOURCE )
       OR ( G.PAY_GROUP       <> W1.PAY_GROUP )
	  )

--!!! INSERTING INTO """PERMANENT""" TABLE HERE: !!!
--=========================================================
--INSERT "NEW" DATA FROM WORK TABLE INTO PERMANENT TABLE: 
--=========================================================
INSERT INTO WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING
( RESOURCE_NAME
,EMAIL
,INVOICE_MAP_KEY
,FF_RESOURCE
,PAY_GROUP
,FTP_FILE_NAME
,CST_ROW_CREATED_TIME
,CST_ROW_UPDATED_TIME
)
SELECT
 W1.RESOURCE_NAME    
,W1.[EMAIL]          
,W1.INVOICE_MAP_KEY  
,W1.FF_RESOURCE   
,W1.PAY_GROUP
,W1.FTP_FILE_NAME    
,dbo.getdate()        --WS_ROW_CREATED_TIME
,NULL             --WS_ROW_UPDATED_TIME

FROM            WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_1      W1
LEFT JOIN       WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING        G     ON G.INVOICE_MAP_KEY        = W1.INVOICE_MAP_KEY
LEFT JOIN       WSOL_TB_IMPORTS_SABRE_AIA_AGENT_MAPPING_ERRORS AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY

--Where Permanent table is Null and Work table is not Null - then we want to add the data!!!:
WHERE ( G.INVOICE_MAP_KEY IS NULL AND ISNULL(W1.INVOICE_MAP_KEY,'') <> '' )
  AND ISNULL(AME.ERROR_TAG,'') = ''

--=============================================
EARLY_EXIT:
--=============================================