/*
*   SSMA informational messages:
*   M2SS0003: The following SQL clause was ignored during conversion:
*   ALGORITHM =  UNDEFINED.
*   M2SS0003: The following SQL clause was ignored during conversion:
*   DEFINER = `root`@`localhost`.
*   M2SS0003: The following SQL clause was ignored during conversion:
*   SQL SECURITY DEFINER.
*/

CREATE VIEW [dbo].[attqaform_agent_group] ([idAgent], [idGroup])
AS 
   SELECT DISTINCT a.id AS idAgent, 
      CASE 
         WHEN ((a.isteamled = '0')) THEN 1
         ELSE 2
      END AS idGroup
   FROM (dbo.agents  AS a 
      INNER JOIN dbo.qualitymonitor  AS q 
      ON ((q.idagent = a.id)))
   WHERE (q.idqualitysrcform = 110)