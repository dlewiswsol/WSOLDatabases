CREATE VIEW WVAgent2AgentHelpOpp_agent_role AS
  SELECT
    DISTINCT
    a.email                                                                      AS username,
    LOWER(SUBSTRING(convert(nvarchar(100), cast(HashBytes('MD5', a.password) as varbinary(100)) ,1), 3, 34)) AS password,
    'USER'                                                                       AS group_name
  FROM applicant a LEFT JOIN agents ag ON (a.email = ag.email)
    LEFT JOIN schacl s ON (ag.id = s.idagent)
    LEFT JOIN program p ON (p.id = s.idprog)
  WHERE
    (a.idappstatus = 42 OR (p.idclient = 68 AND p.isshow = '1'))