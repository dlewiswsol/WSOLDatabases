CREATE PROCEDURE [dbo].[usp_SQL_JOB_ERRORS__SET]
 @TENANT_KEY      VARCHAR(10)   --'0' FOR ALL.
,@SQL_JOB_NM      VARCHAR(100)  --'WSOL_...'
,@ERROR_MSG       VARCHAR(2500) --
,@TYPE_MSC        VARCHAR(10)   --
AS
SET NOCOUNT ON  

-- EXECUTE [dbo].[usp_SQL_JOB_ERRORS__SET] '900900','WD_Import__50_Move_Files_To_Archive_Or_Failed','Job Failed.','I'

-- SELECT * FROM WSOL_TB_SQL_JOB_ERRORS ORDER BY CST_ROW_CREATED_TIME DESC

--===========================================================================

--===========================================================================
INSERT INTO WSOL_TB_SQL_JOB_ERRORS
SELECT 
 @TENANT_KEY
,@SQL_JOB_NM
,dbo.GETDATE()  --@CST_ROW_CREATED_TIME
,@ERROR_MSG

--Run WSOL_Systems / SQL_JOB_ERRORS report: (It is an email subscription)


--Commented by Impiger.  "Reportserver.dbo." format incompatible in SQL Azure--

--EXEC ReportServer.dbo.AddEvent @EventType='TimedSubscription', @EventData='0E104EFD-EA52-438D-9F0C-17BC3989B0D2'---



--The report 'gets' from the WSOL_TB_SQL_JOB_ERRORS table, that was just populated.


--RAISERROR('SQL Job, ' + @SQL_JOB_NM + ', has failed !', 16, 1)  
----RETURN -100