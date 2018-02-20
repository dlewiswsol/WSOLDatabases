CREATE PROCEDURE [dbo].[GetDailyStubHubTeamTransferAnalysisReport]
AS
BEGIN
	SET NOCOUNT ON 

	CREATE TABLE #TempRepLevelTransfer(
		Range NVARCHAR(1000),
		MIR INT Default(0),
		Tier2 INT Default(0),
		Sales INT Default(0),
		ECCTransfer INT Default(0),
		NationalEvents INT Default(0),
		TotalxFerCount INT Default(0)
	)

	declare @columnNames nvarchar(max)
	declare @values nvarchar(max)
	declare @insertquery nvarchar(max)
	declare @startdate datetime
	declare @enddate datetime
	declare @RangeValue nvarchar(100)

	DECLARE @LoopCounter INT = 1
	WHILE (@LoopCounter <= 3)
	BEGIN
	
		If(@LoopCounter = 1)
		BEGIN
			SET @startdate = Format(dbo.getdate()-1, 'MM/dd/yyyy') +' 00:00:00:00' 
			SET @enddate = Format(dbo.getdate()-1, 'MM/dd/yyyy') +' 23:59:59:999'
			SET @RangeValue = '''Yesterday [' + Convert(nvarchar,Format(dbo.getdate()-1, 'MM/dd/yyyy')) +']'''
		END
		Else if(@LoopCounter = 2)
		BEGIN
			SET @startdate = Format(DATEADD(week, DATEDIFF(day, 0, dbo.getdate())/7, 0),'MM/dd/yyyy') +' 00:00:00:00'
			SET @enddate = Format(dbo.getdate()-1, 'MM/dd/yyyy') +' 23:59:59:999'
			SET @RangeValue = '''Current Week'''
		END
		ELSE if(@LoopCounter = 3)
		BEGIN
			SET @startdate = Format(DATEADD(month, DATEDIFF(month, 0,  dbo.getdate()), 0),'MM/dd/yyyy') +' 00:00:00:00'
			SET @enddate = Format(dbo.getdate()-1, 'MM/dd/yyyy') +' 23:59:59:999'
			SET @RangeValue = '''Month to Date'''
		END

		SELECT 
			count(*) Rccount,typeofTransfer 
			INTO #TempCount
		FROM 
			StubHubRepUtilTransfer
		WHERE 
			created between @startdate AND @enddate
			AND typeofTransfer in ('MIR', 'Tier 2', 'Sales', 'ECC Transfer', 'National Events','Total xFer Count')
		GROUP BY typeofTransfer 

		SET @columnNames = ''
		SELECT @columnNames= coalesce(@columnNames + ', ', '') + REPLACE(a.typeofTransfer,' ','') 
		FROM (SELECT typeofTransfer FROM #TempCount) a
		SET @columnNames = 'Range' + @columnNames

		set @values = ''
		SELECT @values= coalesce(@values + ', ', '') + REPLACE(a.Rccount,' ','') 
		FROM (SELECT Rccount FROM #TempCount) a
		set @values =  @RangeValue + @values

		Drop table #TempCount

		SET @insertquery = ''
		set @insertquery = N'INSERT INTO #TempRepLevelTransfer(' + @columnNames + ') VALUES ('+ @values + ')'
		exec sp_executesql @insertquery

		SET @LoopCounter = @LoopCounter + 1
	END

	SELECT * FROM #TempRepLevelTransfer
	DROP TABLE #TempRepLevelTransfer
END