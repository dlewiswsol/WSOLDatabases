CREATE PROCEDURE [dbo].[usp_SQL_JOBS_ON_FAILURE_ERRORS__GET]
AS
SET NOCOUNT ON  

--  EXECUTE [dbo].[usp_SQL_JOBS_ON_FAILURE_ERRORS__GET] 

--SELECT * FROM YZ_TB_SQL_JOBS_ON_FAILURE_ERRORS ORDER BY CST_ROW_CREATED_TIME DESC

--Would have to create an email subscription for each of the tenants !!!
--===========================================================================

--===========================================================================
SELECT TOP 15
 SQL_JOB_NM
,CST_ROW_CREATED_TIME
,ERROR_MSG
FROM YZ_TB_SQL_JOBS_ON_FAILURE_ERRORS
ORDER BY
 CST_ROW_CREATED_TIME DESC