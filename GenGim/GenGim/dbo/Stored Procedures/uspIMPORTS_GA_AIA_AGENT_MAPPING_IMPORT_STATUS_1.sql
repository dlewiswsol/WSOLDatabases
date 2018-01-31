
CREATE PROCEDURE [dbo].[uspIMPORTS_GA_AIA_AGENT_MAPPING_IMPORT_STATUS]
 @DATE_BEG           DATETIME
,@DATE_END           DATETIME
,@PSW                VARCHAR(10)  --IGNORED.  JUST THERE TO KEEP REPORT FROM RUNNING IMMEDIATELY AFTER SELECTED.
,@RPT_TYPE           VARCHAR(3)  
AS
SET NOCOUNT ON
--PURPOSE:  SHOW WHAT PROBLEMS THE RECENTLY IMPORTED AIA AGENT MAPPING FILE HAD DURING THE IMPORT/CLEANUP PROCESS.
--THIS USP IS DATA SOURCE FOR SSRS GRID ON "AIA AGENT MAPPING" IMPORTS STATUS REPORT!!!

--  EXECUTE [dbo].[uspIMPORTS_GA_AIA_AGENT_MAPPING_IMPORT_STATUS] '01/01/2017','01/31/2017','','R'

--  SELECT * FROM WSOL_TB_IMPORTS_GA_AIA_AGENT_MAPPING_ERRORS
--  SELECT * FROM WSOL_TB_IMPORT_ERRORS_FOUND

--==================================
DECLARE 
 @TENANT_KEY      INT
,@SUB_GROUP_NAME  VARCHAR(50)
SET @TENANT_KEY     = 900903	--GENERAL ASSEMBLY
SET @SUB_GROUP_NAME = 'GENERAL_ASSEMBLY_AIA_AGENT_MAPPING'

--==================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--==================================
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
,@DTM_END_M1 AS DATETIME
IF @DATE_BEG < '01/01/1901' OR @RPT_TYPE = 'B' BEGIN     -- Bi-Monthly - Run for 1-15 or 16-EOM
	IF DAY(dbo.getdate()) > 1 AND DAY(dbo.getdate()) <= 16 BEGIN
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10), (CONVERT(VARCHAR(2),MONTH(dbo.getdate())) + CONVERT(VARCHAR(4),'/01/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate()))),101) AS DATETIME)
	END
	ELSE IF DAY(dbo.getdate()) = 1 BEGIN
		IF MONTH(dbo.getdate()) = 1 BEGIN
			SET @DTM_BEG = CONVERT(DATETIME,CONVERT(VARCHAR(6),'12/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate())-1))
		END
		ELSE BEGIN
			SET @DTM_BEG = CAST(CONVERT(VARCHAR(10), (CONVERT(VARCHAR(2),MONTH(dbo.getdate())-1) + CONVERT(VARCHAR(4),'/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate()))),101) AS DATETIME)
		END
	END
	ELSE BEGIN
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10), (CONVERT(VARCHAR(2),MONTH(dbo.getdate())) + CONVERT(VARCHAR(4),'/16/') + CONVERT(VARCHAR(4),YEAR(dbo.getdate()))),101) AS DATETIME)
	END
	
	SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME)

END
ELSE BEGIN  --Daily - Run report for yesterday, 1 day only.
	SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME) --@DATE_BEG already starting at yesterday's date.
	SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME) -- + 1 --done below.
END

SET @DTM_END_M1 = @DTM_END      --FOR WEEKLY DATE FIELD.
SET @DTM_END    = @DTM_END + 1  --EVERYTHING ABOVE, @DTM_END IS FOR EXACT DATE RANGE NEEDED. ONE IS ADDED SO WHERE CLAUSE " < @DTM_END" WORKS.




IF OBJECT_ID('TEMPDB..#IMPORTS_GA_AIA_AGENT_MAPPING_IMPORT_STATUS') IS NOT NULL BEGIN
   DROP TABLE #IMPORTS_GA_AIA_AGENT_MAPPING_IMPORT_STATUS
END
CREATE TABLE #IMPORTS_GA_AIA_AGENT_MAPPING_IMPORT_STATUS
(	[RESOURCE_NAME] [varchar](100) NULL,
	[EMAIL] [varchar](100) NULL,
	[INVOICE_MAP_KEY] [varchar](50) NOT NULL,
	[OFFICIAL_ACL_NAME] [varchar](100) NOT NULL,
	[FTP_FILE_NAME] [varchar](100) NULL,
	[WS_ROW_CREATED_TIME] [datetime] NULL,
	[IMPORT_SUB_GROUP_NAME] [varchar](100) NULL,
	[ERROR_TAG] [varchar](50) NULL,
	[ERROR_MSG] [varchar](2500) NULL
)
INSERT INTO #IMPORTS_GA_AIA_AGENT_MAPPING_IMPORT_STATUS
SELECT
 RESOURCE_NAME
,[EMAIL]
,INVOICE_MAP_KEY
,INVOICE_GROUP
--,FTP_FILE_NAME
,REPLACE(FTP_FILE_NAME,'N3w_','') AS FTP_FILE_NAME
,WS_ROW_CREATED_TIME
,IMPORT_SUB_GROUP_NAME
,ERROR_TAG
,ERROR_MSG

FROM WSOL_TB_IMPORTS_GA_AIA_AGENT_MAPPING_ERRORS     I

--=============================================
DECLARE
 @RCD_CNT  INT
SET @RCD_CNT  = 0 
SET @RCD_CNT = (SELECT COUNT(*) FROM #IMPORTS_GA_AIA_AGENT_MAPPING_IMPORT_STATUS)
--=============================================
DECLARE @BG_COLOR VARCHAR(25)
SET @BG_COLOR = 'GREEN'
IF @RCD_CNT > 0 BEGIN
	SET @BG_COLOR = 'RED'
END
--=============================================
IF @RCD_CNT = 0 BEGIN
	INSERT INTO #IMPORTS_GA_AIA_AGENT_MAPPING_IMPORT_STATUS
	SELECT
	 ''  --RESOURCE_NAME
	,''  --[EMAIL]
	,''  --INVOICE_MAP_KEY
	,''  --INVOICE_GROUP
	,''  --FTP_FILE_NAME
	,dbo.getdate()  --WS_ROW_CREATED_TIME
	,''  --IMPORT_SUB_GROUP_NAME
	,''  --ERROR_TAG
	,''  --ERROR_MSG
END 
--=============================================
DECLARE @MSG1 VARCHAR(2500)
SET @MSG1 = ''

IF @RCD_CNT = 0
	BEGIN  --IF @RCD_CNT = 0 HERE,IT ACTUALLY EQUALS THE ONE INSERTED STATING 'No Prolems.' IN ERROR_MSG.
		SET @MSG1 = @MSG1 + 'There were NO General Assembly AIA Agent Mapping Import Errors found.'
	END
ELSE 
	BEGIN
		IF DAY(dbo.getdate()) = 16 OR DAY(dbo.getdate()) = 1
			BEGIN
				SET @MSG1 = 'Today, ' + CONVERT(VARCHAR(10),dbo.getdate(),101) + ', is Invoice Processing Day. ' + CHAR(10) + CHAR(13) + CHAR(10) + CHAR(13)
			END
				SET @MSG1 = @MSG1 + 'The list below contains errors found during the process of importing the General Assembly AIA Agent Mapping .csv file. ' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)
				SET @MSG1 = @MSG1 + 'Project Management will need to add, remove, or update agent information in their General Assembly AIA Agent Mapping .csv/"living" documents '
				SET @MSG1 = @MSG1 + 'and upload them to the FTP directory in order for these agents to be invoiced through the automated invoice system. ' + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)
	END
	
--=============================================
DECLARE @IMPORT_ERRORS_MSG VARCHAR(2500)
DECLARE @TODAY_1030 DATETIME
SET @TODAY_1030 = CAST(CONVERT(VARCHAR(10),dbo.getdate(),101) + ' 10:30:00' AS DATETIME)
IF dbo.getdate() >  @TODAY_1030 AND dbo.getdate() <  DATEADD(mi,30,@TODAY_1030) BEGIN
	--Can only do this if the Import process/job/usp was executed within the last 15 minutes !!!!!!:
	--If dbo.getdate() after 10:30am and before 11:00am, then can do this:  (Import sql job runs every 15 minutes from 6:00am - 6:01pm.)

	SET @IMPORT_ERRORS_MSG = ( SELECT TOP 1 ERROR_MSG FROM WSOL_TB_IMPORT_ERRORS_FOUND 
							   WHERE TENANT_KEY = @TENANT_KEY AND SUB_GROUP_NAME = @SUB_GROUP_NAME )
	IF LEN(LTRIM(RTRIM(@IMPORT_ERRORS_MSG))) > 0 BEGIN

		SET @BG_COLOR = 'RED'

		SET @MSG1 = @MSG1 + CHAR(10) + CHAR(13) + 'Some errors were identified during the General Assembly AIA Agent Mapping import process.  The errors are as follows:  '  + CHAR(10) + CHAR(13)
			+ '      ' + @IMPORT_ERRORS_MSG + CHAR(10) + CHAR(13)
		SET @MSG1 = @MSG1 + CHAR(10) + CHAR(13) + 'As well as any in list below.'
	END
END

--==================================
--RETURN DATA:
--==================================
SELECT 
 *
,@MSG1       AS MSG1        
,@BG_COLOR   AS BG_COLOR    

FROM #IMPORTS_GA_AIA_AGENT_MAPPING_IMPORT_STATUS 

ORDER BY
 INVOICE_MAP_KEY

--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1