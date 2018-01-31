CREATE PROCEDURE [dbo].[uspIMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT]
AS
SET NOCOUNT ON  -- EXECUTE [dbo].[uspIMPORTS_DATALOT_AIA_AGENT_MAPPING_IMPORT]

--  DELETE FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1

--  SELECT * FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1

--Data Loading FTP Pathway
--  FTP server   = ftp.workingsol.com
--  FTP Username = global_imports
--  FTP Password = Welcome2013
--  FTP Pathway  = /DataLot/Client_Delivery/AIA_Stats/AIA_AGENT_MAPPING

--USES YZ_TB_ERRORS_FOUND.  NOT TOTALLY INDEPENDANT OF OTHER CLIENTS/TENANTS...

--=============================================  --COPY AND REPLACE THESE VARIABLES WHEN CREATING NEW USP FROM THIS USP.
DECLARE
 @TENANT_KEY      INT
,@SUB_GROUP_NAME  VARCHAR(50)
SET @TENANT_KEY     =       900700  --DATALOT    --will begin with 900+ for external tenants.  the '900' is Not part of yz_tb_tenant_key in YZ_TB_TENANTS table.
SET @SUB_GROUP_NAME = 'DATALOT_AIA_AGENT_MAPPING'
--=============================================
--WHEN RUNNING MANUALLY DURING TESTING:DELETE FROM YZ_TB_ERRORS_FOUND WHERE TENANT_KEY = 900700  AND SUB_GROUP_NAME = 'DATALOT_AIA_AGENT_MAPPING'
DELETE FROM YZ_TB_ERRORS_FOUND 
WHERE TENANT_KEY = @TENANT_KEY
  AND SUB_GROUP_NAME = @SUB_GROUP_NAME  --'DATALOT_AIA_AGENT_MAPPING'    --  SELECT * FROM YZ_TB_ERRORS_FOUND WHERE TENANT_KEY = 900700
--=============================================
--WHEN RUNNING MANUALLY DURING TESTING:DELETE FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS WHERE TENANT_KEY = 900700  AND IMPORT_SUB_GROUP_NAME = 'DATALOT_AIA_AGENT_MAPPING'
DELETE FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS
WHERE IMPORT_SUB_GROUP_NAME = @SUB_GROUP_NAME  --'DATALOT_AIA_AGENT_MAPPING' --SELECT * FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS WHERE TENANT_KEY = 900700
--=============================================

--SHOULD I GO FOR DIVISION/SEPARATION SO THAT ITS EASIER TO GIVE PROCESSES TO OTHER PROGRAMMERS/RPT WRITERS, OR CONSOLIDATE AND STANDARDIZE?  
--  LOOKING IN THE SAME TABLES SHOULDN'T BE ANY DIFFERENT THAN LOOKING IN IRF OR MSF IN GENESYS.  CONSOLIDATION MAKES MORE SENSE PROGRAMMATICALLY,
--    BUT THE PAST LESSONS LEARNED POUNDS THE MESSAGE IN THAT ANY SIMILARITIES BETWEEN TENANTS NOW IS SHORT-LIVED!!!
--WE'RE STILL GOING TO DO CONSOLIDATED AND STANDARDIZED, FOR NOW ANYWAY !!!

--=============================================
--  SELECT * FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1
--=============================================

--=============================================
--CLEANUP WORK (_1) TABLE:
--=============================================
--DELETE FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1 
--WHERE ( ISNULL(INVOICE_MAP_KEY,'') = '' )
--   OR ( ISNULL(PAY_GROUP,'') = '' )

--  SELECT * FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1

--=============================================
--THE ELIMINATION OF THE 'SPECIAL CHARACTER' !!!
--  This ' ' is a special character!! and maybe just a cocky space!!!
--  Hightlight it and do ctl+f, on suspected data, you'll see it isn't a space !
--=============================================
UPDATE YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1 SET
 RESOURCE_NAME            = RTRIM(LTRIM(REPLACE(ISNULL(RESOURCE_NAME	,''),' ',' ')))
,[EMAIL]                  = RTRIM(LTRIM(REPLACE(ISNULL([EMAIL]			,''),' ',' ')))
,FF_USERNAME			  = RTRIM(LTRIM(REPLACE(ISNULL(FF_USERNAME		,''),' ',' ')))
,FF_AGENT_ID			  = RTRIM(LTRIM(REPLACE(ISNULL(FF_AGENT_ID		,''),' ',' ')))
,INVOICE_MAP_KEY          = RTRIM(LTRIM(REPLACE(ISNULL(INVOICE_MAP_KEY	,''),' ',' ')))    
,FF_RESOURCE              = RTRIM(LTRIM(REPLACE(ISNULL(FF_RESOURCE		,''),' ',' ')))
,PAY_GROUP				  = RTRIM(LTRIM(REPLACE(ISNULL(PAY_GROUP		,''),' ',' ')))
,FF_ASA_NAME			  = RTRIM(LTRIM(REPLACE(ISNULL(FF_ASA_NAME		,''),' ',' ')))

--=============================================
--  SELECT * FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1
--=============================================

--=============================================
--POPULATE ANY/OTHER ADDITIONAL FIELDS IN WORK TABLE (_1) THAT WEREN'T IN IMPORTED FILE:
--=============================================
UPDATE YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1 SET
 FF_AGENT_ID = INVOICE_MAP_KEY

--  SELECT * FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS
--======================================================================
--PROCESS DUPLICATES:
--======================================================================
INSERT INTO YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS
(RESOURCE_NAME
,EMAIL
,FF_USERNAME
,FF_AGENT_ID
,INVOICE_MAP_KEY
,FF_RESOURCE
,FTP_FILE_NAME
,PAY_GROUP
,FF_ASA_NAME
,WS_ROW_CREATED_TIME
,IMPORT_SUB_GROUP_NAME
,ERROR_TAG
,ERROR_MSG
)
SELECT
 W1.RESOURCE_NAME
,W1.[EMAIL]
,W1.FF_USERNAME
,W1.FF_AGENT_ID
,W1.INVOICE_MAP_KEY
,W1.FF_RESOURCE
,W1.FTP_FILE_NAME
,W1.PAY_GROUP
,W1.FF_ASA_NAME
,dbo.getdate()        --WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  --,'DATALOT_AIA_AGENT_MAPPING'  --IMPORT_SUB_GROUP_NAME
,'DUP'            --ERROR_TAG
,'The invoice_map_key exists more than once in the agent mapping file.'  --ERROR_MSG
--  SELECT *  
FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1  W1
INNER JOIN
(	SELECT
	 INVOICE_MAP_KEY
	,ROW_NUMBER() over (partition by INVOICE_MAP_KEY
                            order by INVOICE_MAP_KEY) ROWNO
	FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1
) TNM  ON TNM.INVOICE_MAP_KEY = W1.INVOICE_MAP_KEY

LEFT OUTER JOIN YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS AME   ON AME.INVOICE_MAP_KEY = W1.INVOICE_MAP_KEY

WHERE TNM.ROWNO > 1   

  AND ISNULL(AME.ERROR_TAG,'') = ''   --THE JOIN TO AME AND THIS LINE IS NOT REALLY NECESSARY SINCE THIS IS FIRST INSERTS INTO AME.!!!

----=============================================
----DELETE DUPLICATES FROM WORK (_1) TABLE:
----  THERE IS NO WAY TO KNOW WHICH DUPLICATE SHOULD BE KEPT AND WHICH SHOULD BE DELETED, SO THEY BOTH GET DELETED AND PM CAN CORRECT AND SO ON...
----=============================================
--DON'T NEED TO DO DELETES, BECAUSE THE RECORDS NEEDING TO BE DELETED EXIST IN THE MAPPING ERRORS TABLE.
--  THE MAPPING ERRORS TABLE CAN BE USED BELOW WHEN DOING THE INSERT INTO THE PERMANENT TABLE, SO THAT THE BAD RECORDS IN THE WORK TABLE DON'T GET INSERTED.
--===============================================

--=============================================	--Hopefully generic enough for all Tenant SSIS to use!
--CHECK FOR BAD DATA FOUND IN IMPORT .TXT FILES:
--=============================================
--WHEN RUNNING MANUALLY DURING TESTING:INSERT INTO YZ_TB_ERRORS_FOUND SELECT 900700,'DATALOT_AIA_AGENT_MAPPING',''              
DECLARE
 @ERR_CNT  INT
,@RCD_CNT  INT
,@MSG1     VARCHAR(2500)
SET @ERR_CNT  = 0 
SET @RCD_CNT  = 0 
SET @MSG1     = ''
--SQL won't insert special characters!!!  + CHAR(9)  --CHAR(10) + CHAR(13)
--Check #1:  ===================================================================================================
	SET @RCD_CNT = (SELECT COUNT(*) FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1)
	IF @RCD_CNT < 1 BEGIN
		SET @MSG1 = @MSG1 + '1) File Import Failed.  No Records Were/Could Be Imported.   |   ' 
		SET @ERR_CNT = @ERR_CNT + 1
	END
--Check #2:  ===================================================================================================
	
--Check #3:  ===================================================================================================
--	SET @RCD_CNT  = (	SELECT COUNT(*)
--						FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1
--						WHERE ACD_ID_EXTENSION NOT IN ('G??')
--					)  
--	IF @RCD_CNT > 0 BEGIN
--		SET @MSG1 = @MSG1 + '3) Invalid ID Extension(s) in File.  Import was Cancelled.  Nothing was Imported.   |   ' 
--		SET @ERR_CNT = @ERR_CNT + 1
--	END
--Check #n:  ===================================================================================================
--	SET @MSG1 = @MSG1 + '2) Something not right with something.  Import was cancelled.  Nothing was Imported.     '
--	--SET @RCD_CNT = (	SELECT COUNT(*)
--	--					FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1
--	--					WHERE 'something' <> 'somethingelse'
--	--				  )  --If nothing imported in work table, don't need to return error.  That check is done in SSIS currently.

--=============================== INSERT INTO PERMANENT TABLE (No errors) OR SKIP AND GO TO END (Errors):
IF @ERR_CNT > 0 BEGIN
	--SSIS reads yz_tb_errors_found table where tenant_key = 900700, and if record exists, outputs results/error_msg field in an email.
	INSERT INTO YZ_TB_ERRORS_FOUND
	(TENANT_KEY
,SUB_GROUP_NAME
,ERROR_MSG)
	SELECT 
	 @TENANT_KEY      --TENANT_KEY
	,@SUB_GROUP_NAME  --'DATALOT_AIA_AGENT_MAPPING'   --SUB_GROUP_NAME
	,@MSG1            --ERROR_MSG
	--===========================
	GOTO EARLY_EXIT
	--===========================
END
ELSE BEGIN
	--Check #1:  ===================================================================================================
	--DECLARE
	-- @DTM_BEG AS DATETIME
	--,@DTM_END AS DATETIME              --Don't change '07/06/2012' !!!
	--SET @DTM_BEG = (DATEADD(DD,14 - (DATEDIFF(DD,CAST('07/06/2012' AS DATETIME),dbo.getdate()-1) % 14),dbo.getdate()-1) - 14)
	--SET @DTM_END = (DATEADD(DD,14 - (DATEDIFF(DD,CAST('07/06/2012' AS DATETIME),dbo.getdate()-1) % 14),dbo.getdate()-1) -  1) + 1

	--CREATE CURSOR, POPULATE CURSOR FOR 2 WEEK DATE RANGE, SPIN THROUGH EACH OF 14 RECORDS, CONCATENATING TO STRING FOR EACH DATE MISSING.
	--INSERT MISSING DATES STRING INTO YZ_TB_IMPORTS_STATUS TABLE.

	--=============================================
	--Have to return a record for SSIS, no matter what, otherwise the f thing needs it's mommy:  Can't figure out how to get SSIS to work otherwise!!!
	INSERT INTO YZ_TB_ERRORS_FOUND
		(TENANT_KEY
,SUB_GROUP_NAME
,ERROR_MSG)
	SELECT 
	 @TENANT_KEY      --TENANT_KEY
	,@SUB_GROUP_NAME  --'DATALOT_AIA_AGENT_MAPPING'   --SUB_GROUP_NAME
	,''               --ERROR_MSG  --Never make this @MSG1 !!!  Must stay as ''.
	--Do NOT want to got to early exit here because data was good, according to 'checks'!  We want to import data into permanent table.
END
--IN SSIS, WOULD SELECT FROM TABLE WHERE TENANT_KEY = 900700 AND STORE IN SSIS VARIABLE.  IF VARIABLE NOT EMPTY, WILL SEND EMAIL AND END SSIS...
--=============================================

--======================================================================
--PROCESS BAD RESOURCE FLAG VALUES:
--======================================================================
INSERT INTO YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS
(RESOURCE_NAME
,EMAIL
,FF_USERNAME
,FF_AGENT_ID
,INVOICE_MAP_KEY
,FF_RESOURCE
,FTP_FILE_NAME
,PAY_GROUP
,FF_ASA_NAME
,WS_ROW_CREATED_TIME
,IMPORT_SUB_GROUP_NAME
,ERROR_TAG
,ERROR_MSG
)
SELECT
 W1.RESOURCE_NAME
,W1.[EMAIL]
,W1.FF_USERNAME
,W1.FF_AGENT_ID
,W1.INVOICE_MAP_KEY
,W1.FF_RESOURCE
,W1.FTP_FILE_NAME
,W1.PAY_GROUP
,W1.FF_ASA_NAME
,dbo.getdate()        --WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  --,'DATALOT_AIA_AGENT_MAPPING'  --IMPORT_SUB_GROUP_NAME
,'SAN'            --ERROR_TAG
,'The Resource Identifier is invalid or is missing in AIA Agent Mapping file.'  --ERROR_MSG
--  SELECT *  
FROM            YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1           W1

--LEFT OUTER JOIN YZ_TB_AGENT_INVOICE_AUTOMATION_STATIC_DEFAULTS  AIASD ON AIASD.SCHEDULER_ACL_NAME = W1.SCHEDULER_ACL_NAME

LEFT JOIN       YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS          AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
WHERE ISNULL(W1.FF_RESOURCE,'') NOT IN ('','Resource','Priority')  --Resource, Priority, or blank, where blank becomes 'Standard Agent', 'Resource' becomes 'Resource Agent', 'Priority' becomes 'Priority Agent'.

  AND ISNULL(AME.ERROR_TAG,'') = ''

--======================================================================
--PROCESS MISSING OR INVALID PAY GROUP VALUES:
--======================================================================
INSERT INTO YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS
(RESOURCE_NAME
,EMAIL
,FF_USERNAME
,FF_AGENT_ID
,INVOICE_MAP_KEY
,FF_RESOURCE
,FTP_FILE_NAME
,PAY_GROUP
,FF_ASA_NAME
,WS_ROW_CREATED_TIME
,IMPORT_SUB_GROUP_NAME
,ERROR_TAG
,ERROR_MSG
)
SELECT
 W1.RESOURCE_NAME
,W1.[EMAIL]
,W1.FF_USERNAME
,W1.FF_AGENT_ID
,W1.INVOICE_MAP_KEY
,W1.FF_RESOURCE
,W1.FTP_FILE_NAME
,W1.PAY_GROUP
,W1.FF_ASA_NAME
,dbo.getdate()        --WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  --,'DATALOT_AIA_AGENT_MAPPING'  --IMPORT_SUB_GROUP_NAME
,'PAY'            --ERROR_TAG
,'The PAY GROUP is missing in the AIA Agent Mapping file or it is an invalid value (must be an integer value).'  --ERROR_MSG
--  SELECT *  
FROM            YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1           W1

--LEFT OUTER JOIN YZ_TB_AGENT_INVOICE_AUTOMATION_STATIC_DEFAULTS  AIASD ON AIASD.SCHEDULER_ACL_NAME = W1.SCHEDULER_ACL_NAME

LEFT JOIN       YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS          AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
WHERE (ISNULL(W1.PAY_GROUP,'') = ''					-- Currently 0 is original and only pay contract
   OR  ISNUMERIC(ISNULL(W1.PAY_GROUP,'')) <> 1
	   )  
  AND ISNULL(AME.ERROR_TAG,'') = ''

--======================================================================
--PROCESS MISSING INVOICE MAP KEY VALUES:
--======================================================================
INSERT INTO YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS
(RESOURCE_NAME
,EMAIL
,FF_USERNAME
,FF_AGENT_ID
,INVOICE_MAP_KEY
,FF_RESOURCE
,FTP_FILE_NAME
,PAY_GROUP
,FF_ASA_NAME
,WS_ROW_CREATED_TIME
,IMPORT_SUB_GROUP_NAME
,ERROR_TAG
,ERROR_MSG
)
SELECT
 W1.RESOURCE_NAME
,W1.[EMAIL]
,W1.FF_USERNAME
,W1.FF_AGENT_ID
,W1.INVOICE_MAP_KEY
,W1.FF_RESOURCE
,W1.FTP_FILE_NAME
,W1.PAY_GROUP
,W1.FF_ASA_NAME
,dbo.getdate()        --WS_ROW_CREATED_TIME
,@SUB_GROUP_NAME  --,'DATALOT_AIA_AGENT_MAPPING'  --IMPORT_SUB_GROUP_NAME
,'MAP'            --ERROR_TAG
,'The AGENT ID is missing in the AIA Agent Mapping file.'  --ERROR_MSG
--  SELECT *  
FROM            YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1           W1

--LEFT OUTER JOIN YZ_TB_AGENT_INVOICE_AUTOMATION_STATIC_DEFAULTS  AIASD ON AIASD.SCHEDULER_ACL_NAME = W1.SCHEDULER_ACL_NAME

LEFT JOIN       YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS          AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
WHERE ISNULL(W1.INVOICE_MAP_KEY,'') = ''  -- Currently equal to the Agent ID

  AND ISNULL(AME.ERROR_TAG,'') = ''

--=============================================
--DELETE RECORDS WITH INVALID SCHEDULER_ACL_NAME(S):
--=============================================
--DON'T NEED TO DO DELETES, BECAUSE THE RECORDS NEEDING TO BE DELETED EXIST IN THE MAPPING ERRORS TABLE.
--  THE MAPPING ERRORS TABLE CAN BE USED BELOW WHEN DOING THE INSERT INTO THE PERMANENT TABLE, SO THAT THE BAD RECORDS IN THE WORK TABLE DON'T GET INSERTED.
--=============================================


--!!! UPDATING """PERMANENT""" TABLE HERE: !!!
--=============================================
--UPDATE PERMANENT TABLE WITH WORK TABLE DATA WHERE TENANT_KEY AND INVOICE_MAP_KEY FIELDS/VALUES MATCH:
--=============================================
UPDATE YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING SET
 RESOURCE_NAME    = W1.RESOURCE_NAME
,[EMAIL]          = W1.[EMAIL]
,FF_USERNAME      = W1.FF_USERNAME
,FF_AGENT_ID      = W1.FF_AGENT_ID
,INVOICE_MAP_KEY  = W1.INVOICE_MAP_KEY
,FF_RESOURCE      = W1.FF_RESOURCE
,FTP_FILE_NAME    = W1.FTP_FILE_NAME
,PAY_GROUP        = W1.PAY_GROUP
,FF_ASA_NAME	  = W1.FF_ASA_NAME
--,WS_ROW_CREATED_TIME
,CST_ROW_UPDATED_TIME = dbo.getdate()
--  SELECT *
FROM            YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1          W1
--INNER JOIN MUST BE HERE.  NEVER CHANGE!
INNER JOIN      YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING            G     ON G.INVOICE_MAP_KEY        = W1.INVOICE_MAP_KEY
LEFT JOIN       YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS     AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY
--Where Permanent table key fields match Work table key fields - then we want to update non-key fields!!!:
WHERE ISNULL(AME.ERROR_TAG,'') = ''

  AND (   ( G.RESOURCE_NAME   <> W1.RESOURCE_NAME )
	   OR ( G.[EMAIL]         <> W1.[EMAIL] )
	   OR ( G.FF_USERNAME     <> W1.FF_USERNAME )
	   OR ( G.FF_AGENT_ID     <> W1.FF_AGENT_ID )
	   OR ( G.INVOICE_MAP_KEY <> W1.INVOICE_MAP_KEY )
	   OR ( G.FF_RESOURCE     <> W1.FF_RESOURCE )
       OR ( G.PAY_GROUP       <> W1.PAY_GROUP )
	   OR ( G.FF_ASA_NAME	  <> W1.FF_ASA_NAME )
	   OR ( G.PAY_GROUP IS NULL)
	  )


--  SELECT * FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING
--!!! INSERTING INTO """PERMANENT""" TABLE HERE: !!!
--=============================================
--INSERT "NEW" DATA FROM WORK TABLE INTO PERMANENT TABLE: 
--=============================================
INSERT INTO YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING
(RESOURCE_NAME
,EMAIL
,FF_USERNAME
,FF_AGENT_ID
,INVOICE_MAP_KEY
,FF_RESOURCE
,FTP_FILE_NAME
,PAY_GROUP
,FF_ASA_NAME
,CST_ROW_CREATED_TIME
,CST_ROW_UPDATED_TIME
)
SELECT
 W1.RESOURCE_NAME    
,W1.[EMAIL]          
,W1.FF_USERNAME
,W1.FF_AGENT_ID
,W1.INVOICE_MAP_KEY  
,W1.FF_RESOURCE      
,W1.FTP_FILE_NAME
,W1.PAY_GROUP  
,W1.FF_ASA_NAME  
,dbo.getdate()        --WS_ROW_CREATED_TIME
,NULL             --WS_ROW_UPDATED_TIME

FROM            YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_1          W1
LEFT JOIN       YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING            G     ON G.INVOICE_MAP_KEY        = W1.INVOICE_MAP_KEY
LEFT JOIN       YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING_ERRORS     AME   ON AME.INVOICE_MAP_KEY      = W1.INVOICE_MAP_KEY

--Where Permanent table is Null and Work table is not Null - then we want to add the data!!!:
WHERE ( G.INVOICE_MAP_KEY IS NULL AND ISNULL(W1.INVOICE_MAP_KEY,'') <> '' )

  AND ISNULL(AME.ERROR_TAG,'') = ''

--  SELECT * FROM YZ_TB_IMPORTS_DATALOT_AIA_AGENT_MAPPING    ORDER BY INVOICE_MAP_KEY 

--=============================================
EARLY_EXIT:
--=============================================