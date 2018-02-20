


CREATE VIEW [dbo].[WSOL_VW_IMPORTS_VYNE_PATS_ACCESS_IMPIGER]
AS

SELECT agents.fname + ' ' + agents.lname as AGENT_FULL_NAME,
applicant.firstname as FF_OFFICIAL_ACL_FIRST_NAME, applicant.lastname as FF_OFFICIAL_ACL_LAST_NAME, REPLACE((LEFT(applicant.firstname,1) + LEFT(applicant.lastname,7)),' ','') as ALIAS,
applicant.corporatname as CORPORATE_NAME, 
applicant.agentid as AGENT_ID, applicant.agentidentnum as ID_NUMBER, appstatus.name as CATS_STATUS_CODE,applicant.phone as PRIMARY_PHONE,
ISNULL(CONVERT(varchar(50),applicant.mobilephone),'') as MOBILE_PHONE,

CASE WHEN applicant.mobileterms = 'Y' Then 'Yes' WHEN applicant.mobileterms = 'N' Then 'No' ELSE applicant.mobileterms END as MOBILE_TERMS, 

applicant.email as USERNAME,

--applicant.[password], 

project.name as PROGRAM_NAME, 'Welcome' as [GROUP] , PreparationData.rosterNumber as PATS_ROSTER_NUMBER,
TypeOfPreparation.name as TYPE_OF_PREP, PreparationTrainer.firstName + ' ' + PreparationTrainer.lastName as TRAINER_NAME,
PreparationData.dateStart as START_DATE, PreparationData.dateStop as END_DATE, 

CASE  WHEN PreparationAgent.completion = 'Y'  THEN 'Yes'
      WHEN PreparationAgent.completion = 'N'  THEN 'No'
      WHEN PreparationAgent.completion = 'A'  THEN 'DP'
	  WHEN PreparationAgent.completion = 'M'  THEN 'MR'
      ELSE PreparationAgent.completion END as COMPLETION_STATUS,

preparationreason.Name as REASON_CODE,

--Applicant.birthdatemmdd, Applicant.ssnlast4digits,

CASE WHEN PreparationData.openCloseStatus = 'C' Then 'Closed' ELSE 'Open' END as PATS_ROSTER_STATUS, applicant.mailaddr as STREET_ADDRESS, applicant.city as CITY,
applicant.idstate as [STATE_PROVINCE], applicant.zip as ZIP, applicant.idcountry as COUNTRY,
applicant.firstname + ' ' + RTRIM(LTRIM(applicant.middlinit)) + ' ' + applicant.lastname as CATS_PROFILE_NAME,
applicant.firstname + ' ' + left(applicant.lastname,1) + '. - WS Agent Since ' + Convert(char(3), PreparationData.dateStart, 0) + '. ' +  CAST(Year(PreparationData.dateStart) as varchar(4))  as NICKNAME,
applicant.DATEUPDATED  as LAST_CHANGED_DATE,

client.id	as CLIENT_ID,
client.name	as CLIENT_NAME

FROM 
APPLICANT applicant, APPSTATUS appstatus, PreparationData preparationdata, TypeOfPreparation typeofpreparation, 
PreparationTrainer preparationtrainer, PreparationAgent preparationagent, PreparationReason preparationreason,
Project project, AGENTS agents, CLIENT client

WHERE 
applicant.IDAPPSTATUS = appstatus.IDAPPSTATUS and 
preparationagent.IDAPPSTATUS = appstatus.IDAPPSTATUS and 
preparationdata.IDPREPARATIONDATA = preparationagent.IDPREPARATIONDATA and
preparationdata.IDPREPARATIONTRAINER = preparationtrainer.IDPREPARATIONTRAINER and 
preparationdata.IDTYPEOFPREPARATION = typeofpreparation.IDTYPEOFPREPARATION and 
preparationdata.idproject = project.idproject and
preparationreason.IDPREPARATIONREASON = preparationagent.IDPREPARATIONREASON  and
applicant.email = preparationagent.email and agents.login = applicant.email and
project.idclient = client.id and
preparationdata.idtypeofpreparation = 1 -- 1 = INITIAL

GO