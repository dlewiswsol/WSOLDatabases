INSERT INTO valid_value_master(
	[table_name]
	,[description]
	,[primary_value]
	,[secondary_value]
	,[visible]
)
SELECT 'HEARABOUT'
	,[NAME]
	,[IDHEARABOUT]
	,[FIELDSORTINDEX]
	, CASE WHEN visible = 'Y' THEN 1 ELSE 0 END
FROM HEARABOUT

select * from HEARABOUT






