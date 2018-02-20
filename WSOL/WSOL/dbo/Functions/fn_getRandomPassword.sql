
-----------------------------------------------------------------------
-- RANDOM PASSWORD GENERATOR
-- DWL 2-9-18
-- I found this here
-- https://www.mssqltips.com/sqlservertip/5303/simple-sql-server-function-to-generate-random-8-character-password/
-----------------------------------------------------------------------

CREATE FUNCTION fn_getRandomPassword()
RETURNS varchar(20)
AS
BEGIN

	-- Declare the variables here
   DECLARE @Result VARCHAR(8)
   DECLARE @BinaryData VARBINARY(8)
   DECLARE @CharacterData VARCHAR(8)
 
   SELECT @BinaryData = randval
   FROM vw_RANDOM_PWD_GEN
 
   Set @CharacterData=cast ('' as xml).value ('xs:base64Binary(sql:variable("@BinaryData"))',
                   'varchar (max)')
   
   SET @Result = @CharacterData
   
   -- Return the result of the function
   RETURN @Result
END