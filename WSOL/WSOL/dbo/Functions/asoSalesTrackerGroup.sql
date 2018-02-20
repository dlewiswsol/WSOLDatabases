



create FUNCTION [dbo].[asoSalesTrackerGroup] 
( 
   @agent_id int
)
RETURNS nvarchar(100)
AS 
   BEGIN

      DECLARE
         @cnt int

      DECLARE
         @result nvarchar(100)

      /*
      *   SSMA warning messages:
      *   M2SS0219: Converted operator may not work exactly the same as in MySQL
      */

      SELECT @cnt = count_big(*)
      FROM dbo.schacl
      WHERE schacl.idagent = @agent_id AND schacl.idprog IN ( 1369, 1368 )

      IF @cnt > 0
         SET @result = N'admin'
      ELSE 
         SET @result = N'user'

      RETURN @result

   END