   CREATE FUNCTION [dbo].[getAgentAvailabPrefs](@idapplicant_in int, @separator_in VARCHAR(4000))
   RETURNS VARCHAR(4000)
   AS
   BEGIN
        DECLARE @result          VARCHAR(4000);
        DECLARE @name VARCHAR(4000)            /* Use -meta option availabilitylist.name%TYPE */;
        DECLARE c1 CURSOR LOCAL FOR
            SELECT al.name
            FROM availabilityuse au JOIN availabilitylist al
                                    ON (al.idavailabilitylist=au.idavailabilitylist)
            WHERE
                 au.idapplicant=@idapplicant_in;

    
        open c1;
        while 1=1 begin
            fetch c1 into @name;
            IF @@FETCH_STATUS <> 0 BREAK ;
            SET @result = isnull(@result, '') + isnull(@name, '') + isnull(@separator_in, '');
        end;
        close c1;
        deallocate c1;

        RETURN @result;

   END ;