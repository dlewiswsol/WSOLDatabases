  CREATE FUNCTION [dbo].[calcSATSAmount](@id int) RETURNS int AS
 BEGIN
        DECLARE @amount int = 0;
    
        BEGIN
           SELECT
              @amount = COUNT(*)
           FROM SatsInfo si
           WHERE
           si.idapplicant=@id;

        if @@ROWCOUNT =0
                SET @amount = 0;
        END;

        RETURN @amount;
   END ;