


CREATE    VIEW [dbo].[SF_Field_Mapping_List]
AS

WITH MMD_AGENTS
	(idmmf, idagent, userid, idprog, fname, lname, catsid)
  AS

( SELECT
   MMD.idmanualmapfld
  ,MMD.idagent
  ,mmd.userid
  ,MMF.idProgram
  ,  A.fname
  ,  A.lname
  ,APP.AGENTIDENTNUM

  FROM		manualmapdata MMD
		  , manualmapfld  MMF
		  , agents		  A
		  , applicant	  APP

  WHERE MMD.idmanualmapfld	=	MMF.idmanualmapfld
    AND	  A.id				=	MMD.idagent
	AND	  A.email			=	APP.email
 )

SELECT
 MAG.idagent						AS AGENT_ID
,MAG.catsid							AS [CATS_ID]
,userid								as INVOICE_MAP_KEY
,CONCAT(mag.fname,' ',mag.lname)	AS [Official_ACL_Name]
,MAG.idmmf
,MAG.idprog

FROM	MMD_AGENTS  MAG
	   ,schacl		S 

WHERE MAG.idagent	=	S.idagent
  AND MAG.idprog	=	S.idprog