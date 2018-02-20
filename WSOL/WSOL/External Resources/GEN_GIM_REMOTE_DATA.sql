CREATE EXTERNAL DATA SOURCE [GEN_GIM_REMOTE_DATA] WITH
(  
	TYPE = HADOOP,
	LOCATION = 'staging-serversql.database.windows.net'
)