/*
*   SSMA informational messages:
*   M2SS0003: The following SQL clause was ignored during conversion:
*   ALGORITHM =  UNDEFINED.
*   M2SS0003: The following SQL clause was ignored during conversion:
*   DEFINER = `root`@`localhost`.
*   M2SS0003: The following SQL clause was ignored during conversion:
*   SQL SECURITY DEFINER.
*/

CREATE VIEW [dbo].[ninewestemailqaform_agent_group] ([idAgent], [idGroup])
AS 
   SELECT DISTINCT q.idagent AS idAgent, 1 AS idGroup
   FROM dbo.qualitymonitor  AS q
   WHERE (q.idqualitysrcform = 102)