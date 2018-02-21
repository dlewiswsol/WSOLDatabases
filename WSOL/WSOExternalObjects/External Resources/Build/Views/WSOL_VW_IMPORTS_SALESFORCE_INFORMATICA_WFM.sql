


CREATE   VIEW [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM]
AS
with field_map_count_view (agent_id, agent_fld_map_count) as 
(select fml.agent_ID, count(fml.agent_id) 
from SF_FIELD_MAPPING_LIST fml, manualmapfld mmf 
where mmf.idmanualmapfld=fml.idmmf 
and (fml.invoice_map_key is not null and fml.invoice_map_key <> '')
and mmf.status='Active'
group by fml.AGENT_ID)

SELECT distinct    
applicant.agentidentnum as AGENT_ID, applicant.firstname as FIRST_NAME, applicant.middlinit as MIDDLE_NAME,
replace((left(applicant.firstname, 1) + left(applicant.lastname,7)),' ','') as ALIAS, applicant.lastname as LAST_NAME,
CASE WHEN applicant.corporatname = '' THEN NULL ELSE applicant.corporatname END as CORPORATE_NAME, 
agents.email as EMAIL_ADDRESS, 
--agents.pwd,
applicant.phone as WORK_PHONE, 
--applicant.phonealt,
ISNULL(CONVERT(varchar(50),applicant.mobilephone),'') as MOBILE_PHONE,
applicant.mailaddr as STREET_ADDRESS, applicant.city as CITY,
applicant.idstate as STATE_PROVINCE, applicant.zip as ZIP,
applicant.idcountry as COUNTRY,
applicant.firstname + ' ' + left(applicant.lastname,1) + '. - WS Agent Since ' + Convert(char(3), applicant.datecreated, 0) + '. ' +  CAST(Year(applicant.datecreated) as varchar(4))  as NICKNAME,
appstatus.name as CATS_STATUS,
applicant.firstname + ' ' + RTRIM(LTRIM(applicant.middlinit)) + ' ' + applicant.lastname as CATS_PROFILE_NAME,
'Contact' as sObject, 'Agent' as RecordTypeName, 55 as 'SF_A_Client_ID',applicant.DATEUPDATED  as LAST_CHANGED_DATE,
fmcv.agent_fld_map_count as FIELD_MAP_COUNT
FROM
APPLICANT applicant, APPSTATUS appstatus, AGENTS agents, field_map_count_view fmcv

where 
applicant.IDAPPSTATUS = appstatus.IDAPPSTATUS and agents.login = applicant.email 
and agents.id=fmcv.agent_id


--SELECT * FROM APPLICANT
GO