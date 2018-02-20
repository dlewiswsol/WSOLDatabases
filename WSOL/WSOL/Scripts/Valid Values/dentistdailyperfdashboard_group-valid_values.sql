
INSERT INTO valid_value_master(
	[table_name]
	,[description]
	,[primary_value]
)
SELECT 'USER_GROUP'
	,[description]
	,[name]
FROM [dentistdailyperfdashboard_group]
