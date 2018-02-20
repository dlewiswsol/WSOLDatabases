CREATE PROCEDURE [dbo].[GetAsurionVCReport]
AS
BEGIN
	SET NOCOUNT ON 
	DECLARE @LastId int
	DECLARE @MaxLastId int
	SELECT @LastId = LastId From smallforms.asurionlastrepvc

	if(@LastId is null or @LastId = '')
	BEGIN
		SET @LastId = 0
		INSERT INTO smallforms.asurionlastrepvc(lastid,dateproc,lastchar) VALUES(0, dbo.getdate(), 0)
	END

	SELECT 
		Source
		,custname as CustomerName
		,areacode
		,prefix
		,fnum as Number
		,city
		,state
		,zip
		, FORMAT(datew,'MM/dd/yyyy') as DateCalled,
		cancreas as ReasonforCancellation,
		comments as Notes
	FROM smallforms.asuriondatavc Where Id>@LastId ORDER BY ID


	SELECT @MaxLastId= Max(Id) From smallforms.asuriondatavc Where Id>@LastId

	if(@MaxLastId is not null or @MaxLastId <> '')
	BEGIN
		Update smallforms.asurionlastrepvc SET LastId=@MaxLastId,dateproc = dbo.getdate() 
	END
END