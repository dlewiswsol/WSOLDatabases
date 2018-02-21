-----------------------------------------------------------------------------------------------------------------
--DROP FUNCTIONS
-----------------------------------------------------------------------------------------------------------------
/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_WORK_DATA_BY_INTERVALS]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_WORK_DATA_BY_INTERVALS')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_WORK_DATA_BY_INTERVALS]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_SCHEDULE_TYPE_DATA_BY_INTERVALS]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_SCHEDULE_TYPE_DATA_BY_INTERVALS')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_SCHEDULE_TYPE_DATA_BY_INTERVALS]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS_WITH_DATE_SCHEDULED]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS_WITH_DATE_SCHEDULED')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS_WITH_DATE_SCHEDULED]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_SCHEDULE_DATA_BY_INTERVALS]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_MANUAL_MAP_DATA]    Script Date: 2/20/2018 11:37:31 AM ******/
IF EXISTS(SELECT top(1)* FROM sysobjects WHERE name='TVF_WSOL_MANUAL_MAP_DATA')
BEGIN
	DROP FUNCTION [dbo].[TVF_WSOL_MANUAL_MAP_DATA]
END
GO

/****** Object:  UserDefinedFunction [dbo].[TVF_WSOL_MANUAL_MAP_DATA]    Script Date: 2/20/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO