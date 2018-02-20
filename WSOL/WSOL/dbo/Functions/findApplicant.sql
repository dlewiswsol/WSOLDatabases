   CREATE FUNCTION [dbo].[findApplicant](@id int) RETURNS VARCHAR(4000) AS
 BEGIN
        DECLARE @agentFullName VARCHAR(500) = 'NOT FOUND';
    
        IF @id = 0 BEGIN
           SET @agentFullName = ' ';

        END
        ELSE BEGIN

           BEGIN
              SELECT
                 @agentFullName = RTRIM(LTRIM(ISNULL(RTRIM(LTRIM(isnull(a.firstname, '')+' '+isnull(a.middlinit, ''))), '') +' '+isnull(a.lastname, '')))
              FROM applicant a
              WHERE a.idapplicant=@id;

           if @@ROWCOUNT=0
                   SET @agentFullName = 'NOT FOUND';
           END;

        END 

        RETURN @agentFullName;

   END ;