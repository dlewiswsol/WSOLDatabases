﻿
CREATE VIEW [dbo].[PAYPALCOLLECTION_AGENT_ROLE] 
AS 
   SELECT DISTINCT a.EMAIL AS USERNAME, upper(dbo.MD5(a.[PASSWORD])) AS [PASSWORD], 'USER' AS GROUP_NAME
   FROM 
      dbo.APPLICANT  AS a 
         JOIN dbo.PREPARATIONAGENT  AS pa 
         ON (a.EMAIL = pa.EMAIL) 
         JOIN dbo.PREPARATIONDATA  AS pd 
         ON (pd.IDPREPARATIONDATA = pa.IDPREPARATIONDATA)
   WHERE 
      pd.IDPROJECT = 2339 AND 
      pd.ROSTERNUMBER >= 33 AND 
      pd.IDTYPEOFPREPARATION = 1