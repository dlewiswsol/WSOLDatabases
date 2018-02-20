 CREATE function [dbo].[getNumberOrZero] (@str varchar(4000))
   returns float
   as
   begin
       declare @result int = 0;
    
       if Isnumeric(@str) != 0 set @result= cast(@str as int);
		return @result;       
   end