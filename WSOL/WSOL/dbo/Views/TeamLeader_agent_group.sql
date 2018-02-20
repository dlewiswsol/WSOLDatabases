CREATE view [dbo].[TeamLeader_agent_group] AS 
SELECT 
    DISTINCT a.id as idAgent, 
    2 as idGroup
FROM agents a 
WHERE
    a.isteamled='1';