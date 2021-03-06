﻿



CREATE   VIEW [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM_IG]
AS

WITH FIELD_MAP_COUNT_VIEW
(
  AGENT_ID
 ,AGENT_FLD_MAP_COUNT
) AS 
(
 SELECT
  FML.AGENT_ID
 ,COUNT(FML.AGENT_ID) 
 FROM
  SF_FIELD_MAPPING_LIST FML
 ,MANUALMAPFLD			MMF
 WHERE MMF.IDMANUALMAPFLD = FML.IDMMF
   AND (FML.INVOICE_MAP_KEY IS NOT NULL AND FML.INVOICE_MAP_KEY <> '')
   AND MMF.[STATUS] = 'Active'
 GROUP BY FML.AGENT_ID
)

SELECT
 DISTINCT APPLICANT.AGENTIDENTNUM						AS AGENT_ID
,APPLICANT.FIRSTNAME									AS FIRST_NAME
,APPLICANT.MIDDLINIT									AS MIDDLE_NAME
,REPLACE((LEFT(APPLICANT.FIRSTNAME, 1) + LEFT(APPLICANT.LASTNAME, 7)),' ','')	AS ALIAS
,APPLICANT.LASTNAME										AS LAST_NAME
,CASE WHEN APPLICANT.CORPORATNAME = '' THEN NULL
	  ELSE APPLICANT.CORPORATNAME END					AS CORPORATE_NAME
,AGENTS.EMAIL											AS EMAIL_ADDRESS 
--,AGENTS.PWD
,APPLICANT.PHONE										AS WORK_PHONE 
--,APPLICANT.PHONEALT
,ISNULL(CONVERT(VARCHAR(50),APPLICANT.MOBILEPHONE),'')	AS MOBILE_PHONE
,APPLICANT.MAILADDR										AS STREET_ADDRESS
,APPLICANT.CITY											AS CITY
,APPLICANT.IDSTATE										AS STATE_PROVINCE
,APPLICANT.ZIP											AS ZIP
,APPLICANT.IDCOUNTRY									AS COUNTRY
,APPLICANT.FIRSTNAME + ' ' + LEFT(APPLICANT.LASTNAME, 1) + '. - WS Agent Since ' + CONVERT(CHAR(3), APPLICANT.DATECREATED, 0) + '. ' + CAST(YEAR(APPLICANT.DATECREATED) AS VARCHAR(4)) AS NICKNAME
,APPSTATUS.[NAME]										AS CATS_STATUS
,APPLICANT.FIRSTNAME + ' ' + RTRIM(LTRIM(APPLICANT.MIDDLINIT)) + ' ' + APPLICANT.LASTNAME	AS CATS_PROFILE_NAME
,'Contact'												AS sObject
,'Agent'												AS RecordTypeName
,55														AS Client_ID
,APPLICANT.DATEUPDATED									AS LAST_CHANGED_DATE
,FMCV.AGENT_FLD_MAP_COUNT								AS FIELD_MAP_COUNT
FROM
 APPLICANT				APPLICANT
,APPSTATUS				APPSTATUS
,AGENTS					AGENTS
,FIELD_MAP_COUNT_VIEW	FMCV
WHERE APPLICANT.IDAPPSTATUS = APPSTATUS.IDAPPSTATUS
  AND AGENTS.[LOGIN]		= APPLICANT.EMAIL
  AND AGENTS.ID				= FMCV.AGENT_ID


--SELECT * FROM APPLICANT
GO