﻿CREATE PROCEDURE [dbo].[uspIMPORTS_VYNE_PATS_ACCESS_IMPORT]
AS
SET NOCOUNT ON

--  EXECUTE [dbo].[uspIMPORTS_VYNE_PATS_ACCESS_IMPORT]

--  SELECT * FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1

--====================================================================
DECLARE @TENANT_KEY INT
SET @TENANT_KEY = 100100
--====================================================================
DELETE FROM YZ_TB_ERRORS_FOUND 
WHERE TENANT_KEY = @TENANT_KEY
  AND SUB_GROUP_NAME = 'VYNE_PATS_ACCESS'
--SELECT * FROM YZ_TB_ERRORS_FOUND WHERE TENANT_KEY = 100100


--===================================================================================
DECLARE @WS_ROW_CREATED_TIME AS DATETIME
SET @WS_ROW_CREATED_TIME = dbo.getdate()  --CLOSE ENOUGH TO ACTUAL INSERT TIME!
--===================================================================================

--======================================================================
--HANDLE COLUMN HEADER AND JUNK RECORDS:
--======================================================================
INSERT INTO WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_BAD
(BAD_IMPORTS_NO
,BAD_IMPORTS_FILE_TYPE
,WS_ROW_CREATED_TIME
,FF_OFFICIAL_ACL_FIRST_NAME
,FF_OFFICIAL_ACL_LAST_NAME
,FF_OFFICIAL_CORPORATE_NAME
,FF_AGENT_ID
,FF_IDENTIFICATION_NUMBER
,FF_OVERALL_CATS_STATUS_CODE
,FF_PRIMARY_PHONE
,FF_MOBILE_PHONE
,FF_MOBILE_TERMS
,FF_USERNAME
,FF_PASSWORD
,FF_PROGRAM
,FF_GROUP
,FF_PATS_ROSTER_NUMBER
,FF_TYPE_OF_PREP
,FF_TRAINER
,FF_START_DATE
,FF_END_DATE
,FF_COMPLETION_STATUS
,FF_REASON_CODE
,FF_DOB
,FF_SSN
,FF_PATS_ROSTER_STATUS
,FF_STREET_ADDRESS
,FF_CITY
,FF_STATE_PROVINCE
,FF_ZIP
,FF_COUNTRY
,FF_C_NAME
,SEQNO_ADDED_TIME
,SEQNO
,FTP_FILE_NAME
,[DATETIME]
,STD_TENANT_START_DATE_TIME_KEY
,CAL_DATE
,TENANT_KEY
,AGENT_FULL_NAME
,CORPORATE_NAME
,AGENT_ID
,ID_NUMBER
,CATS_STATUS_CODE
,PRIMARY_PHONE
,MOBILE_PHONE
,MOBILE_TERMS
,USERNAME
,[PASSWORD]
,[PROGRAM_NAME]
,[GROUP]
,PATS_ROSTER_NUMBER
,TYPE_OF_PREP
,TRAINER_NAME
,[START_DATE]
,END_DATE
,COMPLETION_STATUS
,REASON_CODE
,DOB
,LAST_4_SSN
,PATS_ROSTER_STATUS
,STREET_ADDRESS
,CITY
,STATE_PROVINCE
,ZIP
,COUNTRY
,CATS_PROFILE_NAME)

SELECT
 24                     --BAD_IMPORTS_NO			--'Junk Record'
,'ACT'                  --BAD_IMPORTS_FILE_TYPE		--'ACT'IVITY FILE.
,@WS_ROW_CREATED_TIME   --WS_ROW_CREATED_TIME		--TEST:,dbo.getdate()  --,TNM.*
,W1.FF_OFFICIAL_ACL_FIRST_NAME
,W1.FF_OFFICIAL_ACL_LAST_NAME
,W1.FF_OFFICIAL_CORPORATE_NAME
,W1.FF_AGENT_ID
,W1.FF_IDENTIFICATION_NUMBER
,W1.FF_OVERALL_CATS_STATUS_CODE
,W1.FF_PRIMARY_PHONE
,W1.FF_MOBILE_PHONE
,W1.FF_MOBILE_TERMS
,W1.FF_USERNAME
,W1.FF_PASSWORD
,W1.FF_PROGRAM
,W1.FF_GROUP
,W1.FF_PATS_ROSTER_NUMBER
,W1.FF_TYPE_OF_PREP
,W1.FF_TRAINER
,W1.FF_START_DATE
,W1.FF_END_DATE
,W1.FF_COMPLETION_STATUS
,W1.FF_REASON_CODE
,W1.FF_DOB
,W1.FF_SSN
,W1.FF_PATS_ROSTER_STATUS
,W1.FF_STREET_ADDRESS
,W1.FF_CITY
,W1.FF_STATE_PROVINCE
,W1.FF_ZIP
,W1.FF_COUNTRY
,W1.FF_C_NAME
,W1.SEQNO_ADDED_TIME
,W1.SEQNO
,W1.FTP_FILE_NAME
,W1.[DATETIME]
,W1.STD_TENANT_START_DATE_TIME_KEY
,W1.CAL_DATE
,W1.TENANT_KEY
,W1.AGENT_FULL_NAME
,W1.CORPORATE_NAME
,W1.AGENT_ID
,W1.ID_NUMBER
,W1.CATS_STATUS_CODE
,W1.PRIMARY_PHONE
,W1.MOBILE_PHONE
,W1.MOBILE_TERMS
,W1.USERNAME
,W1.[PASSWORD]
,W1.[PROGRAM_NAME]
,W1.[GROUP]
,W1.PATS_ROSTER_NUMBER
,W1.TYPE_OF_PREP
,W1.TRAINER_NAME
,W1.[START_DATE]
,W1.END_DATE
,W1.COMPLETION_STATUS
,W1.REASON_CODE
,W1.DOB
,W1.LAST_4_SSN
,W1.PATS_ROSTER_STATUS
,W1.STREET_ADDRESS
,W1.CITY
,W1.STATE_PROVINCE
,W1.ZIP
,W1.COUNTRY
,W1.CATS_PROFILE_NAME

FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1	W1
WHERE ISNULL(W1.FF_AGENT_ID,'') IN ('Agent ID')

--======================================================================
--DELETE COLUMN HEADER AND JUNK RECORDS;
--======================================================================
DELETE FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1
WHERE ISNULL(FF_AGENT_ID,'') IN ('Agent ID')
--======================================================================


--=============================================================================
--POPULATE ADDITIONAL FIELDS IN WORK (_1) TABLE THAT WEREN'T IN IMPORTED FILE:
--=============================================================================
UPDATE WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1 SET
 [DATETIME]				= CAST(SUBSTRING(FTP_FILE_NAME, CHARINDEX('.', FTP_FILE_NAME) - 8, 8) AS DATETIME)
,TENANT_KEY				= @TENANT_KEY
,AGENT_FULL_NAME		= ISNULL(FF_OFFICIAL_ACL_FIRST_NAME		,'') + ' ' + ISNULL(FF_OFFICIAL_ACL_LAST_NAME,'')
,CORPORATE_NAME			= ISNULL(FF_OFFICIAL_CORPORATE_NAME		,'')
,AGENT_ID				= ISNULL(FF_AGENT_ID					,'')
,ID_NUMBER				= ISNULL(FF_IDENTIFICATION_NUMBER		,'')
,CATS_STATUS_CODE		= ISNULL(FF_OVERALL_CATS_STATUS_CODE	,'')
,PRIMARY_PHONE			= ISNULL(FF_PRIMARY_PHONE				,'')
,MOBILE_PHONE			= ISNULL(FF_MOBILE_PHONE				,'')
,MOBILE_TERMS			= ISNULL(FF_MOBILE_TERMS				,'')
,USERNAME				= ISNULL(FF_USERNAME					,'')
,[PASSWORD]				= ISNULL(FF_PASSWORD					,'')
,[PROGRAM_NAME]			= ISNULL(FF_PROGRAM						,'')
,[GROUP]				= ISNULL(FF_GROUP						,'')
,PATS_ROSTER_NUMBER		= ISNULL(FF_PATS_ROSTER_NUMBER			,'')
,TYPE_OF_PREP			= ISNULL(FF_TYPE_OF_PREP				,'')
,TRAINER_NAME			= ISNULL(FF_TRAINER						,'')

,[START_DATE]			= CAST(ISNULL(FF_START_DATE	,'1900/01/01') AS DATETIME)
,[END_DATE]				= CAST(ISNULL(FF_END_DATE	,'1900,01,01') AS DATETIME)

,COMPLETION_STATUS		= ISNULL(FF_COMPLETION_STATUS			,'')
,REASON_CODE			= ISNULL(FF_REASON_CODE					,'')
,DOB					= ISNULL(FF_DOB							,'')
,LAST_4_SSN				= ISNULL(FF_SSN							,'')
,PATS_ROSTER_STATUS		= ISNULL(FF_PATS_ROSTER_STATUS			,'')
,STREET_ADDRESS			= ISNULL(FF_STREET_ADDRESS				,'')
,CITY					= ISNULL(FF_CITY						,'')
,STATE_PROVINCE			= ISNULL(FF_STATE_PROVINCE				,'')
,ZIP					= ISNULL(FF_ZIP							,'')
,COUNTRY				= ISNULL(FF_COUNTRY						,'')
,CATS_PROFILE_NAME		= ISNULL(FF_C_NAME						,'')


--======================================================================
DECLARE 
 @DTM_BEG  DATETIME
,@DTM_END  DATETIME

SET @DTM_BEG = DATEADD(hh,-2,(SELECT MIN([DATETIME]) FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1))
SET @DTM_END = DATEADD(hh, 2,(SELECT MAX([DATETIME]) FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1))  
--======================================================================

--======================================================================
UPDATE WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1 SET
 STD_TENANT_START_DATE_TIME_KEY = DT.DATE_TIME_KEY
FROM            WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1	I
INNER JOIN      DATE_TIME                          DT   ON DT.CAL_DATE = I.[DATETIME]


--======================================================================
--HANDLE INVALID DATE/TIME RECORDS:
--======================================================================
INSERT INTO WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_BAD
(BAD_IMPORTS_NO
,BAD_IMPORTS_FILE_TYPE
,WS_ROW_CREATED_TIME
,FF_OFFICIAL_ACL_FIRST_NAME
,FF_OFFICIAL_ACL_LAST_NAME
,FF_OFFICIAL_CORPORATE_NAME
,FF_AGENT_ID
,FF_IDENTIFICATION_NUMBER
,FF_OVERALL_CATS_STATUS_CODE
,FF_PRIMARY_PHONE
,FF_MOBILE_PHONE
,FF_MOBILE_TERMS
,FF_USERNAME
,FF_PASSWORD
,FF_PROGRAM
,FF_GROUP
,FF_PATS_ROSTER_NUMBER
,FF_TYPE_OF_PREP
,FF_TRAINER
,FF_START_DATE
,FF_END_DATE
,FF_COMPLETION_STATUS
,FF_REASON_CODE
,FF_DOB
,FF_SSN
,FF_PATS_ROSTER_STATUS
,FF_STREET_ADDRESS
,FF_CITY
,FF_STATE_PROVINCE
,FF_ZIP
,FF_COUNTRY
,FF_C_NAME
,SEQNO_ADDED_TIME
,SEQNO
,FTP_FILE_NAME
,[DATETIME]
,STD_TENANT_START_DATE_TIME_KEY
,CAL_DATE
,TENANT_KEY
,AGENT_FULL_NAME
,CORPORATE_NAME
,AGENT_ID
,ID_NUMBER
,CATS_STATUS_CODE
,PRIMARY_PHONE
,MOBILE_PHONE
,MOBILE_TERMS
,USERNAME
,[PASSWORD]
,[PROGRAM_NAME]
,[GROUP]
,PATS_ROSTER_NUMBER
,TYPE_OF_PREP
,TRAINER_NAME
,[START_DATE]
,END_DATE
,COMPLETION_STATUS
,REASON_CODE
,DOB
,LAST_4_SSN
,PATS_ROSTER_STATUS
,STREET_ADDRESS
,CITY
,STATE_PROVINCE
,ZIP
,COUNTRY
,CATS_PROFILE_NAME)
SELECT
 26                     --BAD_IMPORTS_NO		--'Invalid Date/Time'
,'ACT'                  --BAD_IMPORTS_FILE_TYPE --'ACT'IVITY FILE
,@WS_ROW_CREATED_TIME   --WS_ROW_CREATED_TIME	--TEST:,dbo.getdate()  --,TNM.*
,W1.FF_OFFICIAL_ACL_FIRST_NAME
,W1.FF_OFFICIAL_ACL_LAST_NAME
,W1.FF_OFFICIAL_CORPORATE_NAME
,W1.FF_AGENT_ID
,W1.FF_IDENTIFICATION_NUMBER
,W1.FF_OVERALL_CATS_STATUS_CODE
,W1.FF_PRIMARY_PHONE
,W1.FF_MOBILE_PHONE
,W1.FF_MOBILE_TERMS
,W1.FF_USERNAME
,W1.FF_PASSWORD
,W1.FF_PROGRAM
,W1.FF_GROUP
,W1.FF_PATS_ROSTER_NUMBER
,W1.FF_TYPE_OF_PREP
,W1.FF_TRAINER
,W1.FF_START_DATE
,W1.FF_END_DATE
,W1.FF_COMPLETION_STATUS
,W1.FF_REASON_CODE
,W1.FF_DOB
,W1.FF_SSN
,W1.FF_PATS_ROSTER_STATUS
,W1.FF_STREET_ADDRESS
,W1.FF_CITY
,W1.FF_STATE_PROVINCE
,W1.FF_ZIP
,W1.FF_COUNTRY
,W1.FF_C_NAME
,W1.SEQNO_ADDED_TIME
,W1.SEQNO
,W1.FTP_FILE_NAME
,W1.[DATETIME]
,W1.STD_TENANT_START_DATE_TIME_KEY
,W1.CAL_DATE
,W1.TENANT_KEY
,W1.AGENT_FULL_NAME
,W1.CORPORATE_NAME
,W1.AGENT_ID
,W1.ID_NUMBER
,W1.CATS_STATUS_CODE
,W1.PRIMARY_PHONE
,W1.MOBILE_PHONE
,W1.MOBILE_TERMS
,W1.USERNAME
,W1.[PASSWORD]
,W1.[PROGRAM_NAME]
,W1.[GROUP]
,W1.PATS_ROSTER_NUMBER
,W1.TYPE_OF_PREP
,W1.TRAINER_NAME
,W1.[START_DATE]
,W1.END_DATE
,W1.COMPLETION_STATUS
,W1.REASON_CODE
,W1.DOB
,W1.LAST_4_SSN
,W1.PATS_ROSTER_STATUS
,W1.STREET_ADDRESS
,W1.CITY
,W1.STATE_PROVINCE
,W1.ZIP
,W1.COUNTRY
,W1.CATS_PROFILE_NAME
FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1    W1
WHERE ISNULL(W1.STD_TENANT_START_DATE_TIME_KEY,0) = 0
--======================================================================
--DELETE INVALID DATE/TIME RECORDS;
--======================================================================
DELETE FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1
WHERE ISNULL(STD_TENANT_START_DATE_TIME_KEY,0) = 0
--======================================================================

--======================================================================
--HANDLE DUPLICATES:
--======================================================================
--INSERT INTO WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_BAD
--SELECT
-- 21                     --BAD_IMPORTS_NO		--'DUPLICATE'
--,'ACT'                  --BAD_IMPORTS_FILE_TYPE --'ACT'IVITY FILE
--,@WS_ROW_CREATED_TIME   --WS_ROW_CREATED_TIME	--TEST:,dbo.getdate()  --,TNM.*
--,W1.*
--FROM
--(	SELECT
--	 [DATETIME]
--	,FF_AGENT_NAME
--	,FF_IDLE_CODE_NAME
--	,FTP_FILE_NAME
--	,ROW_NUMBER() over (partition by [DATETIME], FF_AGENT_NAME, FF_IDLE_CODE_NAME, FTP_FILE_NAME
--                            order by [DATETIME], FF_AGENT_NAME, FF_IDLE_CODE_NAME, FTP_FILE_NAME, LOGGED_IN_TIME DESC) ROWNO
--	FROM YZ_TB_IMPORTS_NWH_INVOICING_1
--) TNM
--LEFT JOIN      YZ_TB_IMPORTS_NWH_INVOICING_1    W1   ON W1.[DATETIME]		 = TNM.[DATETIME]
--													AND W1.FF_AGENT_NAME     = TNM.FF_AGENT_NAME
--													AND W1.FF_IDLE_CODE_NAME = TNM.FF_IDLE_CODE_NAME
--													AND W1.FTP_FILE_NAME	 = TNM.FTP_FILE_NAME
--WHERE TNM.ROWNO > 1

--======================================================================
--DELETE DUPLICATES:
--======================================================================
--DELETE FROM TNM  
--FROM
--(	SELECT
--	 [DATETIME]
--	,FF_AGENT_NAME
--	,FF_IDLE_CODE_NAME
--	,FTP_FILE_NAME
--	,ROW_NUMBER() over (partition by [DATETIME], FF_AGENT_NAME, FF_IDLE_CODE_NAME, FTP_FILE_NAME
--                            order by [DATETIME], FF_AGENT_NAME, FF_IDLE_CODE_NAME, FTP_FILE_NAME, LOGGED_IN_TIME DESC) ROWNO
--	FROM YZ_TB_IMPORTS_NWH_INVOICING_1
--) TNM
--WHERE TNM.ROWNO > 1
--======================================================================

--=============================================================
--	CHECK FOR BAD DATA FOUND IN IMPORT .TXT FILES:
--=============================================================
--  SELECT * FROM YZ_TB_ERRORS_FOUND WHERE TENANT_KEY = 100100
--=============================================================
DECLARE
 @ERR_CNT  INT
,@RCD_CNT  INT
,@MSG1     VARCHAR(2500)
SET @ERR_CNT  = 0 
SET @RCD_CNT  = 0 
SET @MSG1     = ''

--Check #1:  ===================================================================================================
	SET @RCD_CNT = (	SELECT COUNT(*) FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1 )
	IF @RCD_CNT < 1 BEGIN
		SET @MSG1 = @MSG1 + '1) File Import Failed.  No Records Were/Could Be Imported.   |   ' 
		SET @ERR_CNT = @ERR_CNT + 1
	END
--Check #2:  ===================================================================================================
--	SET @RCD_CNT  = (	SELECT COUNT(*) FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1  
--						WHERE ISNULL(STD_TENANT_START_DATE_TIME_KEY,0) = 0
--					)  
--	IF @RCD_CNT > 0 BEGIN
--		SET @MSG1 = @MSG1 + '2) Invalid DATETIME Intervals in VYNE PATS ACCESS IMPORT File.  Import was Cancelled.  Nothing was Imported.   |   ' 
--		SET @ERR_CNT = @ERR_CNT + 1
--	END
--Check #n:  ===================================================================================================
--	SET @MSG1 = @MSG1 + '2) Something not right with something.  Import was cancelled.  Nothing was Imported.     '
--	--SET @RCD_CNT = (	SELECT COUNT(*)
--	--					FROM WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1
--	--					WHERE 'something' <> 'somethingelse'
--	--				  )  --If nothing imported in work table, don't need to return error.  That check is done in SSIS currently.

IF @ERR_CNT > 0 BEGIN
	--SSIS reads YZ_TB_ERRORS_FOUND table WHERE TENANT_KEY = 100100, and if record exists, outputs results/error_msg field in an email.
	INSERT INTO YZ_TB_ERRORS_FOUND
	(TENANT_KEY
,SUB_GROUP_NAME
,ERROR_MSG)
	SELECT 
	 @TENANT_KEY		--TENANT_KEY
	,'VYNE_PATS_ACCESS' --SUB_GROUP_NAME
	,@MSG1				--ERROR_MSG
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
	 @TENANT_KEY		--TENANT_KEY
	,'VYNE_PATS_ACCESS'	--SUB_GROUP_NAME
	,''					--ERROR_MSG  --Never make this @MSG1 !!!  Must stay as ''.
	--Do NOT want to got to early exit here because data was good, according to 'checks'!  We want to import data into permanent table.
END


--=============================================
-- INSERT DATA INTO PERMANENT TABLE (UPDATE)
--=============================================
UPDATE WSOL_TB_IMPORTS_VYNE_PATS_ACCESS SET
 FF_OFFICIAL_ACL_FIRST_NAME		= W1.FF_OFFICIAL_ACL_FIRST_NAME
,FF_OFFICIAL_ACL_LAST_NAME		= W1.FF_OFFICIAL_ACL_LAST_NAME
,FF_OFFICIAL_CORPORATE_NAME		= W1.FF_OFFICIAL_CORPORATE_NAME
,FF_AGENT_ID					= W1.FF_AGENT_ID
--,FF_IDENTIFICATION_NUMBER		= W1.FF_IDENTIFICATION_NUMBER
,FF_OVERALL_CATS_STATUS_CODE	= W1.FF_OVERALL_CATS_STATUS_CODE
,FF_PRIMARY_PHONE				= W1.FF_PRIMARY_PHONE
,FF_MOBILE_PHONE				= W1.FF_MOBILE_PHONE
,FF_MOBILE_TERMS				= W1.FF_MOBILE_TERMS
,FF_USERNAME					= W1.FF_USERNAME
,FF_PASSWORD					= W1.FF_PASSWORD
--,FF_PROGRAM						= W1.FF_PROGRAM
,FF_GROUP						= W1.FF_GROUP
--,FF_PATS_ROSTER_NUMBER			= W1.FF_PATS_ROSTER_NUMBER
,FF_TYPE_OF_PREP				= W1.FF_TYPE_OF_PREP
,FF_TRAINER						= W1.FF_TRAINER
,FF_START_DATE					= W1.FF_START_DATE
,FF_END_DATE					= W1.FF_END_DATE
,FF_COMPLETION_STATUS			= W1.FF_COMPLETION_STATUS
,FF_REASON_CODE					= W1.FF_REASON_CODE
,FF_DOB							= W1.FF_DOB
,FF_SSN							= W1.FF_SSN
,FF_PATS_ROSTER_STATUS			= W1.FF_PATS_ROSTER_STATUS
,FF_STREET_ADDRESS				= W1.FF_STREET_ADDRESS
,FF_CITY						= W1.FF_CITY
,FF_STATE_PROVINCE				= W1.FF_STATE_PROVINCE
,FF_ZIP							= W1.FF_ZIP
,FF_COUNTRY						= W1.FF_COUNTRY
,FF_C_NAME						= W1.FF_C_NAME

,SEQNO_ADDED_TIME				= W1.SEQNO_ADDED_TIME
,SEQNO							= W1.SEQNO
,FTP_FILE_NAME					= W1.FTP_FILE_NAME

,[DATETIME]						= W1.[DATETIME]
,STD_TENANT_START_DATE_TIME_KEY	= W1.STD_TENANT_START_DATE_TIME_KEY
,CAL_DATE						= W1.CAL_DATE
,TENANT_KEY						= W1.TENANT_KEY

,AGENT_FULL_NAME				= W1.AGENT_FULL_NAME
,CORPORATE_NAME					= W1.CORPORATE_NAME
,AGENT_ID						= W1.AGENT_ID
,ID_NUMBER						= W1.ID_NUMBER
,CATS_STATUS_CODE				= W1.CATS_STATUS_CODE
,PRIMARY_PHONE					= W1.PRIMARY_PHONE
,MOBILE_PHONE					= W1.MOBILE_PHONE
,MOBILE_TERMS					= W1.MOBILE_TERMS
,USERNAME						= W1.USERNAME
,[PASSWORD]						= W1.[PASSWORD]
,[PROGRAM_NAME]					= W1.[PROGRAM_NAME]
,[GROUP]						= W1.[GROUP]
,PATS_ROSTER_NUMBER				= W1.PATS_ROSTER_NUMBER
,TYPE_OF_PREP					= W1.TYPE_OF_PREP
,TRAINER_NAME					= W1.TRAINER_NAME
,[START_DATE]					= W1.[START_DATE]
,[END_DATE]						= W1.[END_DATE]
,COMPLETION_STATUS				= W1.COMPLETION_STATUS
,REASON_CODE					= W1.REASON_CODE
,DOB							= W1.DOB
,LAST_4_SSN						= W1.LAST_4_SSN
,PATS_ROSTER_STATUS				= W1.PATS_ROSTER_STATUS
,STREET_ADDRESS					= W1.STREET_ADDRESS
,CITY							= W1.CITY
,STATE_PROVINCE					= W1.STATE_PROVINCE
,ZIP							= W1.ZIP
,COUNTRY						= W1.COUNTRY
,CATS_PROFILE_NAME				= W1.CATS_PROFILE_NAME
,NICKNAME						= W1.FF_OFFICIAL_ACL_FIRST_NAME + ' ' + LEFT(W1.FF_OFFICIAL_ACL_LAST_NAME,1)
								  + '. - WS Agent Since ' + CONVERT(CHAR(3), W1.[START_DATE], 0) + '. ' + CONVERT(VARCHAR(4),DATEPART(YEAR,W1.[START_DATE]))

--,WS_ROW_CREATED_TIME			= NULL
,WS_ROW_UPDATED_TIME			= @WS_ROW_CREATED_TIME

--  SELECT *
FROM			WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1	W1

INNER JOIN		WSOL_TB_IMPORTS_VYNE_PATS_ACCESS	G   ON G.FF_IDENTIFICATION_NUMBER	= W1.FF_IDENTIFICATION_NUMBER
													   AND G.FF_PROGRAM					= W1.FF_PROGRAM
													   AND G.FF_PATS_ROSTER_NUMBER		= W1.FF_PATS_ROSTER_NUMBER

----Where Permanent table key fields match Work table key fields - then we want to update non-key fields!!!:
WHERE G.FF_IDENTIFICATION_NUMBER	= W1.FF_IDENTIFICATION_NUMBER
  AND G.FF_PROGRAM					= W1.FF_PROGRAM
  AND G.FF_PATS_ROSTER_NUMBER		= W1.FF_PATS_ROSTER_NUMBER


--=============================================
-- INSERT DATA INTO PERMANENT TABLE (NEW) 
--=============================================
INSERT INTO WSOL_TB_IMPORTS_VYNE_PATS_ACCESS
(FF_OFFICIAL_ACL_FIRST_NAME
,FF_OFFICIAL_ACL_LAST_NAME
,FF_OFFICIAL_CORPORATE_NAME
,FF_AGENT_ID
,FF_IDENTIFICATION_NUMBER
,FF_OVERALL_CATS_STATUS_CODE
,FF_PRIMARY_PHONE
,FF_MOBILE_PHONE
,FF_MOBILE_TERMS
,FF_USERNAME
,FF_PASSWORD
,FF_PROGRAM
,FF_GROUP
,FF_PATS_ROSTER_NUMBER
,FF_TYPE_OF_PREP
,FF_TRAINER
,FF_START_DATE
,FF_END_DATE
,FF_COMPLETION_STATUS
,FF_REASON_CODE
,FF_DOB
,FF_SSN
,FF_PATS_ROSTER_STATUS
,FF_STREET_ADDRESS
,FF_CITY
,FF_STATE_PROVINCE
,FF_ZIP
,FF_COUNTRY
,FF_C_NAME
,SEQNO_ADDED_TIME
,SEQNO
,FTP_FILE_NAME
,[DATETIME]
,STD_TENANT_START_DATE_TIME_KEY
,CAL_DATE
,TENANT_KEY
,AGENT_FULL_NAME
,CORPORATE_NAME
,AGENT_ID
,ID_NUMBER
,CATS_STATUS_CODE
,PRIMARY_PHONE
,MOBILE_PHONE
,MOBILE_TERMS
,USERNAME
,[PASSWORD]
,[PROGRAM_NAME]
,[GROUP]
,PATS_ROSTER_NUMBER
,TYPE_OF_PREP
,TRAINER_NAME
,[START_DATE]
,END_DATE
,COMPLETION_STATUS
,REASON_CODE
,DOB
,LAST_4_SSN
,PATS_ROSTER_STATUS
,STREET_ADDRESS
,CITY
,STATE_PROVINCE
,ZIP
,COUNTRY
,CATS_PROFILE_NAME
,NICKNAME
,WS_ROW_CREATED_TIME
,WS_ROW_UPDATED_TIME
)
SELECT
 W1.FF_OFFICIAL_ACL_FIRST_NAME
,W1.FF_OFFICIAL_ACL_LAST_NAME
,W1.FF_OFFICIAL_CORPORATE_NAME
,W1.FF_AGENT_ID
,W1.FF_IDENTIFICATION_NUMBER
,W1.FF_OVERALL_CATS_STATUS_CODE
,W1.FF_PRIMARY_PHONE
,W1.FF_MOBILE_PHONE
,W1.FF_MOBILE_TERMS
,W1.FF_USERNAME
,W1.FF_PASSWORD
,W1.FF_PROGRAM
,W1.FF_GROUP
,W1.FF_PATS_ROSTER_NUMBER
,W1.FF_TYPE_OF_PREP
,W1.FF_TRAINER
,W1.FF_START_DATE
,W1.FF_END_DATE
,W1.FF_COMPLETION_STATUS
,W1.FF_REASON_CODE
,W1.FF_DOB
,W1.FF_SSN
,W1.FF_PATS_ROSTER_STATUS
,W1.FF_STREET_ADDRESS
,W1.FF_CITY
,W1.FF_STATE_PROVINCE
,W1.FF_ZIP
,W1.FF_COUNTRY
,W1.FF_C_NAME

,W1.SEQNO_ADDED_TIME
,W1.SEQNO
,W1.FTP_FILE_NAME

,W1.[DATETIME]
,W1.STD_TENANT_START_DATE_TIME_KEY
,W1.CAL_DATE
,W1.TENANT_KEY
,W1.AGENT_FULL_NAME
,W1.CORPORATE_NAME
,W1.AGENT_ID
,W1.ID_NUMBER
,W1.CATS_STATUS_CODE
,W1.PRIMARY_PHONE
,W1.MOBILE_PHONE
,W1.MOBILE_TERMS
,W1.USERNAME
,W1.PASSWORD
,W1.[PROGRAM_NAME]
,W1.[GROUP]
,W1.PATS_ROSTER_NUMBER
,W1.TYPE_OF_PREP
,W1.TRAINER_NAME
,W1.[START_DATE]
,W1.[END_DATE]
,W1.COMPLETION_STATUS
,W1.REASON_CODE
,W1.DOB
,W1.LAST_4_SSN
,W1.PATS_ROSTER_STATUS
,W1.STREET_ADDRESS
,W1.CITY
,W1.STATE_PROVINCE
,W1.ZIP
,W1.COUNTRY
,W1.CATS_PROFILE_NAME
,W1.FF_OFFICIAL_ACL_FIRST_NAME + ' ' + LEFT(W1.FF_OFFICIAL_ACL_LAST_NAME,1)
 + '. - WS Agent Since ' + CONVERT(CHAR(3), W1.[START_DATE], 0) + '. ' + CONVERT(VARCHAR(4),DATEPART(YEAR,W1.[START_DATE]))
,@WS_ROW_CREATED_TIME    --[WS_ROW_CREATED_TIME] [datetime] NOT NULL,
,NULL                    --[WS_ROW_UPDATED_TIME] [datetime] NULL,

FROM		WSOL_TB_IMPORTS_VYNE_PATS_ACCESS_1	W1

LEFT JOIN	WSOL_TB_IMPORTS_VYNE_PATS_ACCESS	G	ON G.FF_IDENTIFICATION_NUMBER	= W1.FF_IDENTIFICATION_NUMBER
												   AND G.FF_PROGRAM					= W1.FF_PROGRAM
												   AND G.FF_PATS_ROSTER_NUMBER		= W1.FF_PATS_ROSTER_NUMBER

WHERE (G.FF_IDENTIFICATION_NUMBER	IS NULL AND ISNULL(W1.FF_IDENTIFICATION_NUMBER	,'') <> '' )
  AND (G.FF_PROGRAM					IS NULL AND ISNULL(W1.FF_PROGRAM				,'') <> '' )
  AND (G.FF_PATS_ROSTER_NUMBER		IS NULL AND ISNULL(W1.FF_PATS_ROSTER_NUMBER		,'') <> '' )

--=============================================
EARLY_EXIT:
--=============================================