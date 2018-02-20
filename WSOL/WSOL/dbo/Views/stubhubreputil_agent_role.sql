CREATE VIEW [dbo].[stubhubreputil_agent_role] 
AS 
select a.login AS username,dbo.MD5(a.pwd) AS password, 'USER' AS group_name 
from agents a join schacl s on a.id = s.idagent where s.idprog in (2207,2158,2157);