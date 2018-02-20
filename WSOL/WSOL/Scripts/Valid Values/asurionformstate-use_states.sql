  INSERT INTO usa_states(
	[state_cd]
	,[name]
	,[visible]
)
SELECT [id]
	,[name]
	, visible 
FROM asurionformstate


