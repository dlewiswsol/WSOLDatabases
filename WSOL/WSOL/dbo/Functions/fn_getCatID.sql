CREATE FUNCTION [dbo].[fn_getCatID] (@input INT, @pad tinyint)
RETURNS VARCHAR(250)
AS BEGIN
    DECLARE @NumStr VARCHAR(250)

    SET @NumStr = LTRIM(@input)

    IF(@pad > LEN(@NumStr))
        select @NumStr = 'H' + @NumStr + REPLICATE('0', @Pad - LEN(@NumStr));

    RETURN @NumStr;
END