

Create Procedure [dbo].[sp_GetRowsForAllTables]
@DBName varchar(128) = null
as

	set nocount on
	if @DBName is null
		set @DBName = db_name()

	create table #a
	(TableName varchar(128), norows int null, id int identity(1,1))
	
declare	@id		int ,
	@maxID		int ,
	@TableName	varchar(128) ,
	@FKName		varchar(128) ,
	@cmd		nvarchar(1000) ,
	@rc		int, 
	@spcmd		varchar(1000)
	
	set @cmd = 'exec ' + @DBName + '..sp_executesql N''insert #a (TableName) 
			select TABLE_NAME from information_schema.tables
			where TABLE_TYPE = ''''BASE TABLE'''' ''
		'
	exec (@cmd)
	
	select 	@id = 0 ,
		@maxID = max(id)
	from	#a
	
	while @id < @maxID
	begin
		select 	@id = min(id)
		from	#a
		where	id > @id
		
		select	@TableName = TableName
		from	#a
		where 	id = @id
		
		set	@cmd = 'exec ' + @DBName + '..sp_executesql N''update #a set norows = (select rows from sysindexes where indid in (0,1) and id = object_id(''''' + @TableName + '''''))'
		set	@cmd = @cmd + ' where #a.id = ' + convert(varchar(10),@id) + ''''
		
		exec  (@cmd)
		if @rc <> 0 or @@error <> 0
		begin
			raiserror('failed %s',16,-1,@TableName)
			return
		end
	end

	select * from #a

	drop table #a

