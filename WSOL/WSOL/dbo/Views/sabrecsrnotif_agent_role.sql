CREATE VIEW [dbo].[sabrecsrnotif_agent_role] AS select a.login AS username
,dbo.MD5(a.pwd) AS password
,case WHEN ag.idGroup = 'USER' then 'Regular User' ELSE 'Administration User' END  AS  group_name 
from (sabrecsrnotif_agent_group ag join agents a on((a.id = ag.idAgent))) where (not(a.id in (select distinct s.idagent from schacl s where (s.idprog in (2753,2754)))));