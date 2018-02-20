/*
*   SSMA informational messages:
*   M2SS0003: The following SQL clause was ignored during conversion:
*   ALGORITHM =  UNDEFINED.
*   M2SS0003: The following SQL clause was ignored during conversion:
*   DEFINER = `root`@`localhost`.
*   M2SS0003: The following SQL clause was ignored during conversion:
*   SQL SECURITY DEFINER.
*/

CREATE VIEW [dbo].[asurioncrickettranscamp_agent_group] ([idAgent], [idGroup])
AS 
   /*
   *   SSMA warning messages:
   *   M2SS0219: Converted operator may not work exactly the same as in MySQL
   */

   SELECT DISTINCT a.id AS idAgent, 
      CASE 
         WHEN ((a.isteamled = '0')) THEN 1
         ELSE 2
      END AS idGroup
   FROM (dbo.agents  AS a 
      INNER JOIN dbo.schacl  AS q 
      ON ((q.idagent = a.id)))
   WHERE (q.idprog IN ( 
      2078, 
      2062, 
      2077, 
      2076, 
      2316, 
      1369, 
      1367, 
      2278 ))