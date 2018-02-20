CREATE VIEW [dbo].[sprint3cmrefund_agent_role] AS select a.login AS username
,dbo.MD5(a.pwd) AS password
,case WHEN ag.idGroup = 'USER' then 'Regular User' ELSE 'Administration User' END  AS  group_name 
from (sprint3cmrefund_agent_group ag join agents a on((a.id = ag.idAgent)));