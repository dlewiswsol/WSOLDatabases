/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--drop first
:r .\Drop\Tables.sql
:r .\Drop\Functions.sql
:r .\Drop\Views.sql
:r .\Drop\StoredProcedures.sql
:r .\Drop\ExternalDataSource.sql

--build the external data source
CREATE DATABASE SCOPED CREDENTIAL  [GENGIM]
	WITH IDENTITY = 'dlewis'
GO
CREATE EXTERNAL DATA SOURCE [GEN_GIM_REMOTE_DATA] WITH (
	TYPE = RDBMS, 
	LOCATION = N'wsol-prodsql.database.windows.net', 
	CREDENTIAL = [GENGIM], 
	DATABASE_NAME = N'GEN_GIM'
)

--build the tables
:r .\Build\Tables.sql

--views
:r .\Build\Views.sql

--functions
:r .\Build\Functions.sql

--stored procs
:r .\Build\StoredProcedures.sql