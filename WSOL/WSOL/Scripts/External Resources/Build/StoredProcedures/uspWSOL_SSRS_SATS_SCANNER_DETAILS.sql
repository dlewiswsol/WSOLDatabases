﻿
CREATE PROCEDURE [dbo].[uspWSOL_SSRS_SATS_SCANNER_DETAILS]
 @DATE_BEG			DATETIME
,@DATE_END			DATETIME
,@CLIENT_ID			VARCHAR(200) --Vis. Def='ALL'
,@CATS_STATUS_ID	VARCHAR(3500)--Vis. Def='ALL'
,@PROGRAM_ID		VARCHAR(200) --Vis. Def='ALL'
,@PSW				VARCHAR(10)  --Hid. Def='NONE'
,@EXECUTIONER		VARCHAR(3)   --Hid. Def='MAN'  MANual,SUBscription
,@RPT_TYPE			VARCHAR(3)   --Hid. Def='DLY'  
AS
BEGIN
SET NOCOUNT ON 

--  EXECUTE [dbo].[uspWSOL_SSRS_SATS_SCANNER_DETAILS] '06/19/2017','06/19/2017','141','ALL','','MAN','DLY'

--=============================================================================
SET DATEFIRST 1  --1=MONDAY  7=SUNDAY  --DW = M,T,W,T,F,S,S
--=============================================================================
DECLARE
 @DTM_BEG AS DATETIME
,@DTM_END AS DATETIME
	IF @DATE_BEG < '01/01/1901' OR @RPT_TYPE = 'WKL' BEGIN	--WEEKLY - Run report for 7 days from current day to current day.
			--Dates passed in are for PREVIOUS DAY:
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME)				-- @DATE_BEG already starting at yesterday's date.
		SET @DTM_BEG = CASE WHEN DATEPART(DW,@DTM_BEG) = 1 THEN @DTM_BEG				-- MONDAY
							ELSE DATEADD(DD,-6,@DTM_BEG) END								-- SET START DATE TO PAST MONDAY
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME)				-- + 1 --DONE BELOW. 

		IF @DTM_END >  DBO.GETDATE() - 1 BEGIN											--DBO.GETDATE() -1 IS GOING TO ALSO INCLUDE SOME TIME AFTER MIDNIGHT.  THIS IS CORRECT !
			SET @DTM_END = CAST(CONVERT(VARCHAR(10),DBO.GETDATE() - 1,101) AS DATETIME)
		END
	END
	ELSE BEGIN  --DAILY - Run report for YESTERDAY, 1 Day ONLY.
		SET @DTM_BEG = CAST(CONVERT(VARCHAR(10),@DATE_BEG,101) AS DATETIME)				--@DATE_BEG already starting at yesterday's date.
		SET @DTM_END = CAST(CONVERT(VARCHAR(10),@DATE_END,101) AS DATETIME)				-- + 1 --done below.
	END

SET @DTM_END    = @DTM_END + 1  --EVERYTHING ABOVE, @DTM_END IS FOR EXACT DATE RANGE NEEDED. ONE IS ADDED SO WHERE CLAUSE " < @DTM_END" WORKS.

--=======================================================================================
--	SET MULTI-VALUE PARAMETERS:
--=======================================================================================
SET @CLIENT_ID		= ',' + LTRIM(RTRIM(REPLACE(@CLIENT_ID		,'ALL','0'))) + ','
SET @PROGRAM_ID		= ',' + LTRIM(RTRIM(REPLACE(@PROGRAM_ID		,'ALL','0'))) + ','
SET @CATS_STATUS_ID	= ',' + LTRIM(RTRIM(REPLACE(@CATS_STATUS_ID	,'ALL','0'))) + ','

--==================================
--	CREATE TMP TABLE:
--==================================
IF OBJECT_ID('TEMPDB..#WSOL_SSRS_SATS_SCANNER_DETAILS') IS NOT NULL BEGIN
   DROP TABLE #WSOL_SSRS_SATS_SCANNER_DETAILS
END
CREATE TABLE #WSOL_SSRS_SATS_SCANNER_DETAILS
(CLIENT_NAME					VARCHAR(200)
,AGENT_FIRST_NAME				VARCHAR(100)
,AGENT_MIDDLE_NAME				VARCHAR(100)
,AGENT_LAST_NAME				VARCHAR(100)
,CORPORATE_NAME					VARCHAR(500)
,[EMAIL]						VARCHAR(150)
,CATS_ID						VARCHAR(20)
,CATS_AGENT_STATUS				VARCHAR(100)
,IDAGENT						VARCHAR(20)
,IDSTATE						VARCHAR(10)
,STATE_NAME						VARCHAR(50)
,ZIP_CODE						VARCHAR(20)
,IDSATSINFO						VARCHAR(20)
,IDAPPLICANT					VARCHAR(20)
,COMPUTER_NAME					VARCHAR(500)
,OS_VERSION						VARCHAR(500)
,SYS_ARCHITECTURE				VARCHAR(500)
,SERVICE_PACK_VERSION			VARCHAR(500)
,SYS_ARCH_DATA_MODEL			VARCHAR(500)
,PROCESSOR_MAKE					VARCHAR(500)
,PROCESSOR_MODEL				VARCHAR(500)
,RAM							VARCHAR(50)
,DOWNLOAD_BANDWIDTH				VARCHAR(50)
,SCREEN_RESOLUTION				VARCHAR(200)
,NET_FRAMEWORK					VARCHAR(500)
,JAVA							VARCHAR(500)
,IE_VERSION						VARCHAR(500)
,AOL_AIM						VARCHAR(500)
,ADOBE_READER_VERSION			VARCHAR(500)
,FLASH_PLAYER_VERSION			VARCHAR(500)
,ANTIVIRUS						VARCHAR(500)
,REMOTE_IP_ADDRESS				VARCHAR(500)
,REMOTE_HOST_IP_ADDRESS			VARCHAR(500)
,MAC_ADDRESS					VARCHAR(500)
--,NET_DISPLAY_NAME				VARCHAR(500)
--,NET_NICKNAME					VARCHAR(500)
--,NET_MAC_ADDRESS				VARCHAR(500)
,SCAN_DATE						DATETIME
,VALID_UNTIL_DATE				DATETIME
,RESOURCE_NAME					VARCHAR(500)
)

INSERT INTO #WSOL_SSRS_SATS_SCANNER_DETAILS
SELECT
 DAT.CLIENT_NAME
,DAT.AGENT_FIRST_NAME
,DAT.AGENT_MIDDLE_NAME
,DAT.AGENT_LAST_NAME
,DAT.CORPORATE_NAME
,DAT.EMAIL
,DAT.CATS_ID
,DAT.CATS_AGENT_STATUS
,DAT.IDAGENT
,DAT.IDSTATE
,DAT.STATE_NAME
,DAT.ZIP_CODE
,DAT.IDSATSINFO
,DAT.IDAPPLICANT
,DAT.COMPUTER_NAME
,DAT.OS_VERSION
,DAT.SYS_ARCHITECTURE
,DAT.SERVICE_PACK_VERSION
,DAT.SYS_ARCH_DATA_MODEL
,DAT.PROCESSOR_MAKE
,DAT.PROCESSOR_MODEL
,DAT.RAM
,DAT.DOWNLOAD_BANDWIDTH
,DAT.SCREEN_RESOLUTION
,DAT.NET_FRAMEWORK
,DAT.JAVA
,DAT.IE_VERSION
,DAT.AOL_AIM
,DAT.ADOBE_READER_VERSION
,DAT.FLASH_PLAYER_VERSION
,DAT.ANTIVIRUS
,DAT.REMOTE_IP_ADDRESS
,DAT.REMOTE_HOST_IP_ADDRESS
,DAT.MAC_ADDRESS
--,DAT.NET_DISPLAY_NAME
--,DAT.NET_NICKNAME
--,DAT.NET_MAC_ADDRESS
,DAT.SCAN_DATE
,DAT.VALID_UNTIL_DATE
,DAT.RESOURCE_NAME
FROM
(	
	SELECT
	 CLI.[NAME]										AS CLIENT_NAME
	--,PRG.ISSHOW									AS ISSHOW
	--,PRG.[NAME]									AS [PROGRAM_NAME]
	,APP.FIRSTNAME									AS AGENT_FIRST_NAME
	,APP.MIDDLINIT									AS AGENT_MIDDLE_NAME
	,APP.LASTNAME									AS AGENT_LAST_NAME
	,APP.CORPORATNAME								AS CORPORATE_NAME
	,APP.EMAIL										AS [EMAIL]			
	,APP.AGENTIDENTNUM								AS CATS_ID
	,CAS.[NAME]										AS CATS_AGENT_STATUS
	,ACL.IDAGENT									AS IDAGENT
	,APP.IDSTATE									AS IDSTATE
	,STA.[NAME]										AS STATE_NAME
	,APP.ZIP										AS ZIP_CODE
	,SAT.IDSATSINFO									AS IDSATSINFO
	,SAT.IDAPPLICANT								AS IDAPPLICANT
	,SAT.COMPUTERNAME								AS COMPUTER_NAME
	,SAT.OPERATINGSYSTEMVERSION						AS OS_VERSION
	,SAT.SYSTEMAARCHITECTURE						AS SYS_ARCHITECTURE
	,SAT.SERVICEPACKVERSION							AS SERVICE_PACK_VERSION
	,SAT.SYSTEMARCHITECTUREDATAMODEL				AS SYS_ARCH_DATA_MODEL
	,SAT.PROCESSORMAKE								AS PROCESSOR_MAKE
	,SAT.PROCESSORMODEL								AS PROCESSOR_MODEL
	,CONCAT(SAT.RAM,'MB')							AS RAM
	,CONCAT(SAT.SPEED,'Mb/s')						AS DOWNLOAD_BANDWIDTH
	,CONCAT(SAT.SCREENWIDTH,' x ',SAT.SCREENHEIGHT)	AS SCREEN_RESOLUTION
	,SAT.NETVERSION									AS NET_FRAMEWORK
	,SAT.JAVAINTERPRETER							AS JAVA
	,SAT.INTERNETEXPLORER							AS IE_VERSION
	,SAT.AOLAIM										AS AOL_AIM
	,LEFT(LTRIM(SAT.ADOBEACROBATREADER),4)			AS ADOBE_READER_VERSION
	,SAT.FLASHPLAYER								AS FLASH_PLAYER_VERSION
	,SAT.ANTIVIRUS									AS ANTIVIRUS
	,SAT.REMOTEADDR									AS REMOTE_IP_ADDRESS
	,SAT.REMOTEHOST									AS REMOTE_HOST_IP_ADDRESS
	,SAT.MACADDRESS									AS MAC_ADDRESS
--	,NET.DISPLAYNAME								AS NET_DISPLAY_NAME
--	,NET.NICNAME									AS NET_NICKNAME
--	,NET.MACADDRESS									AS NET_MAC_ADDRESS
	,SAT.DATEW										AS SCAN_DATE
	,DATEADD(DD,90,SAT.DATEW)						AS VALID_UNTIL_DATE
	,CASE WHEN RTRIM(LTRIM(ISNULL(APP.MIDDLINIT,''))) = '' THEN
			CONCAT(APP.FIRSTNAME,' ',APP.LASTNAME)
		  ELSE
			CONCAT(APP.FIRSTNAME,' ',APP.MIDDLINIT,' ',APP.LASTNAME)
		  END										AS RESOURCE_NAME
	FROM
	 SCHACL		ACL
	,PROGRAM	PRG
	,CLIENT		CLI
	,AGENTS		AGT
	,APPLICANT	APP
	,SATSINFO	SAT
	,[STATE]	STA
	,APPSTATUS	CAS
--	,SATSNIC	NET
	WHERE ACL.IDPROG		= PRG.ID
	  AND PRG.IDCLIENT		= CLI.ID
	  AND ACL.IDAGENT		= AGT.ID
	  AND AGT.EMAIL			= APP.EMAIL
	  AND SAT.IDAPPLICANT	= APP.IDAPPLICANT
	  AND APP.IDSTATE		= STA.IDSTATE
	  AND APP.IDAPPSTATUS	= CAS.IDAPPSTATUS
--	  AND SAT.IDSATSINFO	= NET.IDSATSINFO
	  AND ( @CLIENT_ID		IN (',0,') OR CHARINDEX(',' + RTRIM(CLI.ID)			 + ',',@CLIENT_ID)		> 0   ) --CLI.ID		  = @CLIENT_ID
	  AND ( @PROGRAM_ID		IN (',0,') OR CHARINDEX(',' + RTRIM(PRG.ID)			 + ',',@PROGRAM_ID)		> 0   ) --PRG.ID		  = @PROGRAM_ID
	  AND ( @CATS_STATUS_ID IN (',0,') OR CHARINDEX(',' + RTRIM(CAS.IDAPPSTATUS) + ',',@CATS_STATUS_ID) > 0   ) --CAS.IDAPPSTATUS = @CATS_STATUS_ID
	  --AND ACL.IDAGENT	= 9571
	  --AND PRG.ISSHOW = 0
	GROUP BY
	 CLI.[NAME]										--AS CLIENT_NAME
	--,PRG.ISSHOW									--AS ISSHOW
	--,PRG.[NAME]									--AS [PROGRAM_NAME]
	,APP.FIRSTNAME									--AS AGENT_FIRST_NAME
	,APP.MIDDLINIT									--AS AGENT_MIDDLE_NAME
	,APP.LASTNAME									--AS AGENT_LAST_NAME
	,APP.CORPORATNAME								--AS CORPORATE_NAME
	,APP.EMAIL										--AS [EMAIL]
	,APP.AGENTIDENTNUM								--AS CATS_ID
	,CAS.[NAME]										--AS CATS_AGENT_STATUS
	,ACL.IDAGENT									--AS IDAGENT
	,APP.IDSTATE									--AS IDSTATE
	,STA.[NAME]										--AS STATE_NAME
	,APP.ZIP										--AS ZIP_CODE
	,SAT.IDSATSINFO									--AS IDSATSINFO
	,SAT.IDAPPLICANT								--AS IDAPPLICANT
	,SAT.COMPUTERNAME								--AS COMPUTER_NAME
	,SAT.OPERATINGSYSTEMVERSION						--AS OS_VERSION
	,SAT.SYSTEMAARCHITECTURE						--AS SYS_ARCHITECTURE
	,SAT.SERVICEPACKVERSION							--AS SERVICE_PACK_VERSION
	,SAT.SYSTEMARCHITECTUREDATAMODEL				--AS SYS_ARCH_DATA_MODEL
	,SAT.PROCESSORMAKE								--AS PROCESSOR_MAKE
	,SAT.PROCESSORMODEL								--AS PROCESSOR_MODEL
	,CONCAT(SAT.RAM,'MB')							--AS RAM
	,CONCAT(SAT.SPEED,'Mb/s')						--AS DOWNLOAD_BANDWIDTH
	,CONCAT(SAT.SCREENWIDTH,' x ',SAT.SCREENHEIGHT)	--AS SCREEN_RESOLUTION
	,SAT.NETVERSION									--AS NET_FRAMEWORK
	,SAT.JAVAINTERPRETER							--AS JAVA
	,SAT.INTERNETEXPLORER							--AS IE_VERSION
	,SAT.AOLAIM										--AS AOL_AIM
	,SAT.ADOBEACROBATREADER							--AS ADOBE_READER_VERSION
	,SAT.FLASHPLAYER								--AS FLASH_PLAYER_VERSION
	,SAT.ANTIVIRUS									--AS ANTIVIRUS
	,SAT.REMOTEADDR									--AS REMOTE_IP_ADDRESS
	,SAT.REMOTEHOST									--AS REMOTE_HOST_IP_ADDRESS
	,SAT.MACADDRESS									--AS MAC_ADDRESS
--	,NET.DISPLAYNAME								--AS NET_DISPLAY_NAME
--	,NET.NICNAME									--AS NET_NICKNAME
--	,NET.MACADDRESS									--AS NET_MAC_ADDRESS
	,SAT.DATEW										--AS SCAN_DATE
	,DATEADD(DD,90,SAT.DATEW)						--AS VALID_UNTIL_DATE
	,CASE WHEN RTRIM(LTRIM(ISNULL(APP.MIDDLINIT,''))) = '' THEN
			CONCAT(APP.FIRSTNAME,' ',APP.LASTNAME)
		  ELSE
			CONCAT(APP.FIRSTNAME,' ',APP.MIDDLINIT,' ',APP.LASTNAME)
		  END										--AS RESOURCE_NAME
) DAT

--=================================================================================================
--	RETURN DATASET:
--=================================================================================================


SELECT 
 CONVERT(VARCHAR(10),@DTM_BEG,101) + '-' + CONVERT(VARCHAR(10),@DTM_END - 1,101)  AS DATE_RANGE
,V.*
FROM	#WSOL_SSRS_SATS_SCANNER_DETAILS		V
ORDER BY 
 V.CLIENT_NAME
,V.RESOURCE_NAME

--===============================
EARLY_EXIT:
--===============================
--IMPOSSIBLE:  SELECT 1/0    POSSIBLE:  SELECT 0/1

END

GO