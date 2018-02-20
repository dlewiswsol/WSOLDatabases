-------------------------------------------------------------------------------------------------------------------
--DROP THE EXTERNAL DATA SOURCE
--DWL: 2-20-17
-----------------------------------------------------------------------------------------------------------------

--this has to be done after all the tables have been dropped because SQL will error if there are
--objects tied to the Datasource
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
IF EXISTS(select * from sys.external_data_sources where name='GEN_GIM_REMOTE_DATA')
BEGIN
	DROP EXTERNAL DATA SOURCE [GEN_GIM_REMOTE_DATA] 
END

IF EXISTS(select * from sys.database_scoped_credentials where name='GENGIM')
BEGIN
	DROP DATABASE SCOPED CREDENTIAL [GENGIM]
END