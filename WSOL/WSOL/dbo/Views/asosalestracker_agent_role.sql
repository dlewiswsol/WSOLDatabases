CREATE VIEW [dbo].[asosalestracker_agent_role] AS 
select [email] AS username,dbo.MD5([pwd]) AS password,dbo.asoSalesTrackerGroup(a.id) AS group_name 
from agents a join schacl s on a.id = s.idagent
where s.idprog in (2576,2577,1369,1368,2629);