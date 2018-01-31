﻿
CREATE PROCEDURE [dbo].[usp_SQL_JOBS]
 @DATE_BEG        DATETIME  
,@DATE_END        DATETIME  
,@TENANT_KEY      VARCHAR(10)  --'0' FOR ALL.  MOST LIKELY NOT NEEDED.
,@SUB_NAME        VARCHAR(100) --'RUN_THIS_FRIDAY'...
,@JOB_NAME        VARCHAR(100) --'YZ_...'
,@CUST_ID		  INT          --1,2,3...  NOT LIKELY USED MUCH.
,@TYPE_MSC        VARCHAR(10)  --'H'OURLY, 'D'AILY...  FOR FUTURE NEEDS.
AS
SET NOCOUNT ON  

--To check if Invoicing will run this week:
--  EXECUTE [dbo].[usp_SQL_JOBS] '01/01/1900','01/01/1900','0','RUN_THIS_FRIDAY','YZ_Invoice_WSOL_Regular_Create_Files','',''

--  EXECUTE [dbo].[usp_SQL_JOBS] '01/01/1900','01/01/1900','0','DID_HOURLY_ETL_FINISH_RECENTLY','YZ_WSINET_Every_5_Minute_Tasks','',''

--	EXECUTE [dbo].[usp_SQL_JOBS] '01/01/1900','01/01/1900','160','CHECK_IMPORT_STATUS','','','B'

--==============================================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--==============================================================
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME

IF @DATE_BEG < '01/01/1901' OR @TYPE_MSC = 'B' BEGIN     
			--Dates passed in are for previous day:
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
	
	SET @DTM_END = CAST(CONVERT(VARCHAR(10),DBO.GETDATE(),101) AS DATETIME)

END

ELSE BEGIN  --DAILY - Run report for YESTERDAY, 1 Day ONLY.
	SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME)     -- @DATE_BEG already starting at yesterday's date.
	SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME)		-- + 1 --Done Below.
END

SET @DTM_END    = @DTM_END - 1  --EVERYTHING ABOVE, @DTM_END IS FOR EXACT DATE RANGE NEEDED. ONE IS SUBTRACTED SO THAT YESTERDAY IS PASSED.


--===============================================
-- SUB = RUN_1ST_AND_16TH
--===============================================
IF @SUB_NAME = 'RUN_1ST_AND_16TH' BEGIN
	--Run remaining Steps, but only if this is the 1st or the 16th of the month and invoicing/reports/files are to be created?
	--There is no "Every Other Friday" schedule option in SQL Job Scheduling Tab!!!
	IF DAY(dbo.getdate()) = 1 OR DAY(dbo.getdate()) = 16 BEGIN
		RETURN 0
	END
	ELSE BEGIN
		RAISERROR('Not the required date to run AIA Jobs.', 16, 127)
	    --RETURN -100
	END
END  --END SUB

--===============================================
-- SUB = CHECK_IMPORT_STATUS
--===============================================
IF @SUB_NAME = 'CHECK_IMPORT_STATUS' BEGIN

DECLARE @CUST_NAME VARCHAR(100)
SET @CUST_NAME = ''

IF @TENANT_KEY = '900901' BEGIN -- HUMACH

	IF OBJECT_ID('TEMPDB..#CHECK_HUMACH_IMPORT_STATUS') IS NOT NULL BEGIN
		DROP TABLE #CHECK_HUMACH_IMPORT_STATUS
	END
	CREATE TABLE #CHECK_HUMACH_IMPORT_STATUS
	( MSG1				VARCHAR(2500)
	 ,BG_COLOR          VARCHAR(25)
	 ,CUSTOMER_NAME		VARCHAR(150)
	 ,CUSTOMER_ID		VARCHAR(10)
	)

	IF @TENANT_KEY = '900901' BEGIN			-- HUMACH
		IF @CUST_ID = '190' BEGIN			-- i9 SPORTS
			INSERT INTO #CHECK_HUMACH_IMPORT_STATUS EXEC DBO.[uspIMPORTS_HUMACH_IMPORT_STATUS]	@DTM_BEG,@DTM_END,'','B',@CUST_ID;
			SET @CUST_NAME = 'i9 SPORTS'
		END
		ELSE IF @CUST_ID = '177' BEGIN		-- ASURION
			INSERT INTO #CHECK_HUMACH_IMPORT_STATUS EXEC DBO.[uspIMPORTS_HUMACH_IMPORT_STATUS]	@DTM_BEG,@DTM_END,'','B',@CUST_ID;
			SET @CUST_NAME = 'ASURION'
		END
	END

END

IF @TENANT_KEY = '900905' BEGIN -- BRIGHT_PATTERN

	IF OBJECT_ID('TEMPDB..#CHECK_BRIGHT_PATTERN_IMPORT_STATUS') IS NOT NULL BEGIN
		DROP TABLE #CHECK_BRIGHT_PATTERN_IMPORT_STATUS
	END
	CREATE TABLE #CHECK_BRIGHT_PATTERN_IMPORT_STATUS
	( MSG1				VARCHAR(2500)
	 ,BG_COLOR          VARCHAR(25)
	 ,CUSTOMER_NAME		VARCHAR(150)
	 ,CUSTOMER_ID		VARCHAR(10)
	)

	IF @TENANT_KEY = '900905' BEGIN			-- BRIGHT_PATTERN
		IF @CUST_ID = '190' BEGIN			-- i9 SPORTS
			INSERT INTO #CHECK_BRIGHT_PATTERN_IMPORT_STATUS EXEC DBO.[uspIMPORTS_BRIGHT_PATTERN_IMPORT_STATUS]	@DTM_BEG,@DTM_END,'','B',@CUST_ID;
			SET @CUST_NAME = 'i9 SPORTS'
		END
		ELSE IF @CUST_ID = '177' BEGIN		-- ASURION
			INSERT INTO #CHECK_BRIGHT_PATTERN_IMPORT_STATUS EXEC DBO.[uspIMPORTS_BRIGHT_PATTERN_IMPORT_STATUS]	@DTM_BEG,@DTM_END,'','B',@CUST_ID;
			SET @CUST_NAME = 'ASURION'
		END
	END

END

ELSE BEGIN

	IF OBJECT_ID('TEMPDB..#CHECK_IMPORT_STATUS') IS NOT NULL BEGIN
		DROP TABLE #CHECK_IMPORT_STATUS
	END
	CREATE TABLE #CHECK_IMPORT_STATUS
	( MSG1				VARCHAR(2500)
	 ,BG_COLOR          VARCHAR(25)
	)
	
	IF @TENANT_KEY = '900626' BEGIN			-- APFM
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_APFM_IMPORT_STATUS]						@DTM_BEG,@DTM_END,'','B';
		SET @CUST_NAME = 'APFM'
	END
	ELSE IF @TENANT_KEY = '900902' BEGIN	-- WORLD VENTURES
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_WV_IMPORT_STATUS]							@DTM_BEG,@DTM_END,'','B';
		SET @CUST_NAME = 'WORLD VENTURES'
	END
	ELSE IF @TENANT_KEY = '900700' BEGIN	-- DATALOT
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_DATALOT_IMPORT_STATUS]					@DTM_BEG,@DTM_END,'','B';
		SET @CUST_NAME = 'DATALOT'
	END
	ELSE IF @TENANT_KEY = '900705' BEGIN	-- GAR
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_GAR_IMPORT_STATUS]						@DTM_BEG,@DTM_END,'','B';
		SET @CUST_NAME = 'GAR'
	END
	ELSE IF @TENANT_KEY = '900903' BEGIN	-- GENERAL ASSEMBLY
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_GA_IMPORT_STATUS]							@DTM_BEG,@DTM_END,'','B';
		SET @CUST_NAME = 'GENERAL ASSEMBLY'
	END
	ELSE IF @TENANT_KEY = '160'	   BEGIN	-- MONAT GLOBAL
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_MONAT_IMPORT_STATUS]						@DTM_BEG,@DTM_END,'','B';
		SET @CUST_NAME = 'MONAT'
	END
	ELSE IF @TENANT_KEY = '106'	   BEGIN	-- EGENCIA
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_EGENCIA_IMPORT_STATUS]					@DTM_BEG,@DTM_END,'','B';
		SET @CUST_NAME = 'EGENCIA'
	END
	ELSE IF @TENANT_KEY = '900704' BEGIN	-- SABRE
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_SABRE_IMPORT_STATUS]						@DTM_BEG,@DTM_END,'','B';
		SET @CUST_NAME = 'SABRE'
	END
	ELSE IF @TENANT_KEY = '900703' BEGIN	-- STUBHUB
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_STUBHUB_IMPORT_STATUS]					@DTM_BEG,@DTM_END,'','B';
		SET @CUST_NAME = 'STUBHUB'
	END
	ELSE IF @TENANT_KEY = '900999' BEGIN	-- SALESFORCE
		SET @DTM_BEG = DATEADD(dd,-1,CAST(CONVERT(VARCHAR(10),DBO.GETDATE(),101) AS DATETIME))
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_SALESFORCE_INFORMATICA_WFM_IMPORT_STATUS]	@DTM_BEG,@DTM_END,'','W';
		SET @CUST_NAME = 'SALESFORCE'
	END
	ELSE IF @TENANT_KEY = '900555' BEGIN	-- DAILY SCHEDULED HOURS
		SET @DTM_BEG = DATEADD(dd,-1,CAST(CONVERT(VARCHAR(10),DBO.GETDATE(),101) AS DATETIME))
		INSERT INTO #CHECK_IMPORT_STATUS EXEC DBO.[uspIMPORTS_SCHEDULE_IMPORT_STATUS]					@DTM_BEG,@DTM_END,'','W';
		SET @CUST_NAME = 'SCHEDULE'
	END
END
	
	DECLARE @COLOR_RESULT VARCHAR(25)

	IF @TENANT_KEY = '900901' BEGIN
		SELECT @COLOR_RESULT = BG_COLOR
		  FROM #CHECK_HUMACH_IMPORT_STATUS
	END
	IF @TENANT_KEY = '900905' BEGIN
		SELECT @COLOR_RESULT = BG_COLOR
		  FROM #CHECK_BRIGHT_PATTERN_IMPORT_STATUS
	END
	ELSE BEGIN
		SELECT @COLOR_RESULT = BG_COLOR
		  FROM #CHECK_IMPORT_STATUS
	END

	DECLARE @ERROR_MSG VARCHAR(100)
	SET @ERROR_MSG = ''
	SET @ERROR_MSG = 'NO MISSING DATA - ' + @CUST_NAME

	IF (@COLOR_RESULT IN ('RED','#D6323A')) BEGIN
		RETURN 0
	END
	ELSE BEGIN
		RAISERROR(@ERROR_MSG,16, 127)
		--RETURN 100
	END

END	--END SUB