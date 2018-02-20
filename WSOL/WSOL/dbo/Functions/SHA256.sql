CREATE FUNCTION [dbo].[SHA256]
(
	@value varchar(200)
)
RETURNS INT
AS
BEGIN
	RETURN SUBSTRING(master.sys.fn_sqlvarbasetostr(HASHBYTES('SHA2_256', @value)),3,64);
END
