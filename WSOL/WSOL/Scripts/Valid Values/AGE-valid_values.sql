
  INSERT INTO valid_value_master(
	[table_name]
	,[description]
	,[primary_value]
	,[visible]
)
SELECT 'AGE'
	,[name]
	,[IDAGE]
	, CASE WHEN visible = 'Y' THEN 1 ELSE 0 END
FROM [AGE]