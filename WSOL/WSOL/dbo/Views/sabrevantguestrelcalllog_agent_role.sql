CREATE VIEW [dbo].[sabrevantguestrelcalllog_agent_role] AS select a.login AS username

,dbo.MD5(a.pwd) AS password
,case WHEN ag.idGroup = 'USER' then 'Regular User' ELSE 'Administration User' END  AS  group_name 
from (sabrevantguestrelcalllog_agent_group ag join agents a on((a.id = ag.idAgent))) 
where a.id in (select distinct s.idagent from schacl s where (s.idprog in (2753,2754,1369)));