INSERT INTO valid_value_master(
	[table_name]
	,[description]
	,[primary_value]
	,[visible]
)
SELECT 'INTERVIEWEDRECOM'
	,[NAME]
	,[IDINTERVIEWEDRECOM]
	, CASE WHEN visible = 'Y' THEN 1 ELSE 0 END
FROM INTERVIEWEDRECOM

select * from INTERVIEWEDRECOM







