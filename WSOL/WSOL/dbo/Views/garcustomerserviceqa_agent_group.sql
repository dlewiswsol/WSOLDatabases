/*
*   SSMA informational messages:
*   M2SS0003: The following SQL clause was ignored during conversion:
*   ALGORITHM =  UNDEFINED.
*   M2SS0003: The following SQL clause was ignored during conversion:
*   DEFINER = `root`@`localhost`.
*   M2SS0003: The following SQL clause was ignored during conversion:
*   SQL SECURITY DEFINER.
*/

CREATE VIEW [dbo].[garcustomerserviceqa_agent_group] ([idAgent], [idGroup])
AS 
   /*
   *   SSMA warning messages:
   *   M2SS0219: Converted operator may not work exactly the same as in MySQL
   */

   SELECT a.id AS idAgent, 
      CASE 
         WHEN ((a.isteamled = '0')) THEN 1
         ELSE 2
      END AS idGroup
   FROM (dbo.agents  AS a 
      INNER JOIN dbo.schacl  AS s 
      ON ((a.id = s.idagent)))
   WHERE (s.idprog IN ( 
      2786, 
      2587, 
      1369, 
      1368, 
      2676, 
      1181 ))