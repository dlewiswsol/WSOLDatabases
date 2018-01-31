
CREATE PROCEDURE [dbo].[usp_SQL_JOB_ERRORS__GET]
AS
SET NOCOUNT ON  

--  EXECUTE [dbo].[usp_SQL_JOB_ERRORS__GET] 

--	SELECT * FROM WSOL_TB_SQL_JOB_ERRORS ORDER BY CST_ROW_CREATED_TIME DESC

--===========================================================================

--===========================================================================
SELECT TOP 15
 SQL_JOB_NM
,CST_ROW_CREATED_TIME
,ERROR_MSG
FROM WSOL_TB_SQL_JOB_ERRORS
ORDER BY
 CST_ROW_CREATED_TIME DESC