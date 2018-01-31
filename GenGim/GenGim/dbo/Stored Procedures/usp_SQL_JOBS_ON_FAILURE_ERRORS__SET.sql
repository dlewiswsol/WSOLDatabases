

CREATE PROCEDURE [dbo].[usp_SQL_JOBS_ON_FAILURE_ERRORS__SET]
 @TENANT_KEY      VARCHAR(10)   --'0' FOR ALL.
,@SQL_JOB_NM      VARCHAR(100)  --'YZ_...'
,@ERROR_MSG       VARCHAR(2500) --
,@TYPE_MSC        VARCHAR(10)   --
AS
SET NOCOUNT ON  

--  EXECUTE [dbo].[usp_SQL_JOBS_ON_FAILURE_ERRORS__SET] '900543','YZ_IMPORTS_NINE_WEST__70_Detail_CAS_File_Into_Email','Job Failed.','I'

--SELECT * FROM YZ_TB_SQL_JOBS_ON_FAILURE_ERRORS ORDER BY CST_ROW_CREATED_TIME DESC

--===========================================================================

--===========================================================================
INSERT INTO YZ_TB_SQL_JOBS_ON_FAILURE_ERRORS
SELECT 
 @TENANT_KEY
,@SQL_JOB_NM
,dbo.getdate()  --@CST_ROW_CREATED_TIME
,@ERROR_MSG

--Run wSystems / SQL_JOBS_ON_FAILURE_ERRORS report: (It is an email subscription)

--EXEC ReportServer.dbo.AddEvent @EventType='TimedSubscription', @EventData='8598EAAA-669B-47CE-970B-3EE49FB230A1'

--The report 'gets' from the YZ_TB_SQL_JOBS_ON_FAILURE_ERRORS table, that was just populated.


--RAISERROR('SQL Job, ' + @SQL_JOB_NM + ', has failed !', 16, 1)  
----RETURN -100


