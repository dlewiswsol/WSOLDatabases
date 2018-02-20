	CREATE VIEW [dbo].[TeamLeader_agent_role] AS 
SELECT
    a.login as username, 
    dbo.SHA256(a.pwd) as password, 
    case WHEN ag.idGroup = 'USER' then 'Regular User' ELSE 'Administration User' END  AS  group_name 
FROM TeamLeader_agent_group ag 
    JOIN agents a ON a.id=ag.idAgent;