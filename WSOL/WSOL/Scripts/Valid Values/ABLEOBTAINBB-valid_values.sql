INSERT INTO valid_value_master(
	[table_name]
	,[description]
	,[primary_value]
	,[visible]
)
SELECT 'ABLEOBTAINBBB'
	,[name]
	,[IDABLEOBTAINBB]
	, CASE WHEN visible = 'Y' THEN 1 ELSE 0 END
FROM [ABLEOBTAINBB]

