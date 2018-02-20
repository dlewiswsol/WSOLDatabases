CREATE PROCEDURE [dbo].[GetDailyStubHubRepLevelTransferAnalysisReport]
	@SDate datetime,
	@EDate datetime
AS
BEGIN
	SET NOCOUNT ON 

	DECLARE @StartDate Datetime = Format(@SDate, 'MM/dd/yyyy') +' 00:00:00:00' ,
	@EndDate Datetime = FORMAT(@EDate,'MM/dd/yyyy')+' 23:59:59:999',
	@RecCount Int,
	@AgentId Int

	CREATE TABLE #TempRepLevelTransfer(
		OfficialACLName NVARCHAR(1000),
		MIR INT Default(0),
		Tier2 INT Default(0),
		Sales INT Default(0),
		ECCTransfer INT Default(0),
		NationalEvents INT Default(0),
		TotalxFerCount INT Default(0),
		CurrentWkMIR INT Default(0),
		CurrentWkTier2 INT Default(0),
		CurrentWkSales INT Default(0),
		CurrentWkECCTransfer INT Default(0),
		CurrentWkNationalEvents INT Default(0),
		CurrentWkxFerTotal INT Default(0),
		MTDMIR INT Default(0),
		MTDTier2 INT Default(0),
		MTDSales INT Default(0),
		MTDECCTransfer INT Default(0),
		MTDNationalEvents INT Default(0),
		MTDxFerTotal INT Default(0)
	)

	SELECT DISTINCT 
		a.id, a.fname +' ' +a.lname as Name
	INTO #TmpAgents
	FROM
		Agents a 
		INNER JOIN StubHubRepUtilTransfer s on a.id = s.agents_id
	where s.Created between @StartDate AND @EndDate
	Order by  2 asc

	declare @columnNames nvarchar(max)
	declare @values nvarchar(max)
	declare @AgentName nvarchar(1000)
	declare @insertquery nvarchar(max)

	SELECT @RecCount = COUNT ('') FROM #TmpAgents

	WHILE (Select Count(*) From #TmpAgents) > 0
	BEGIN
		SELECT top 1  @AgentId = id,@AgentName = Name from #TmpAgents

		SELECT 
			Count(*) Rccount,typeofTransfer 
			INTO #TempCount
		FROM 
			StubHubRepUtilTransfer
		WHERE 
			created between @StartDate AND @EndDate And agents_id=@AgentId
			AND typeofTransfer in ('MIR', 'Tier 2', 'Sales', 'ECC Transfer', 'National Events','Total xFer Count','Current Wk MIR', 'Current Wk Tier 2', 'Current Wk Sales',
					'Current Wk ECC Transfer', 'Current Wk National Events','Current Wk xFer Total','MTD MIR', 'MTD Tier 2', 'MTD Sales', 'MTD ECC Transfer',
					'MTD National Events', 'MTD xFer Total')
		GROUP BY typeofTransfer 
	
		set @columnNames = ''
		SELECT @columnNames= coalesce(@columnNames + ', ', '') + REPLACE(a.typeofTransfer,' ','') 
		FROM (SELECT typeofTransfer FROM #TempCount) a
		set @columnNames = 'OfficialACLName' + @columnNames

		set @values = ''
		SELECT @values= coalesce(@values + ', ', '') + REPLACE(a.Rccount,' ','') 
		FROM (SELECT Rccount FROM #TempCount) a
		set @values =  '''' +@AgentName +'''' + @values

		SET @insertquery = ''
		set @insertquery = N'INSERT INTO #TempRepLevelTransfer(' + @columnNames + ') VALUES ('+ @values + ')'
		exec sp_executesql @insertquery
	
		Drop table #TempCount
		Delete #TmpAgents Where Id = @AgentId
	END
	SELECT * FROM #TempRepLevelTransfer

	DROP TABLE #TmpAgents
	DROP Table #TempRepLevelTransfer

END