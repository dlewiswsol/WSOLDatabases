INSERT INTO valid_value_master(
	[table_name]
	,[description]
	,[primary_value]
	,[visible]
)
SELECT 'INTEREST'
	,[NAME]
	,[IDINTEREST]
	, CASE WHEN visible = 'Y' THEN 1 ELSE 0 END
FROM INTEREST

select * from INTEREST







