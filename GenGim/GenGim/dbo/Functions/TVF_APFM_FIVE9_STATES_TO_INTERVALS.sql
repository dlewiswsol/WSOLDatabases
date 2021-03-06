﻿-- ===========================================================
-- Author:		ISAAC GUARDIOLA
-- Create date: 2016/07/12
-- Description:	FUNCTION TO PARSE STATE DATA INTO INTERVALS
-- ===========================================================
CREATE FUNCTION [dbo].[TVF_APFM_FIVE9_STATES_TO_INTERVALS]
(
	-- Add the parameters for the function here
	 @FF_DATE					VARCHAR(50)
	,@FF_HOUR					VARCHAR(50)
	,@FF_SKILL_AVAILABILITY		VARCHAR(500)
	,@FF_AGENT_NAME				VARCHAR(100)
	,@FF_STATE					VARCHAR(50)
	,@FF_REASON_CODE			VARCHAR(50)
	,@FF_AGENT_STATE_TIME		VARCHAR(50)
	,@FF_TIMESTAMP				VARCHAR(50)
	,@EVENT_START_TIME			DATETIME
	,@EVENT_DURATION_SECS		DECIMAL(10,2)
	,@SEQNO_ADDED_TIME			DATETIME
	,@SEQNO						INT
	,@FTP_FILE_NAME				VARCHAR(100)
	,@INTERVAL_SECS				INT
)
RETURNS 
 @RESULTS_TABLE	TABLE
(
	-- Add the column definitions for the TABLE variable here
	 FF_DATE							VARCHAR(50)
	,FF_HOUR							VARCHAR(50)
	,FF_SKILL_AVAILABILITY				VARCHAR(500)
	,FF_AGENT_NAME						VARCHAR(100)
	,FF_STATE							VARCHAR(50)
	,FF_REASON_CODE						VARCHAR(50)
	,FF_AGENT_STATE_TIME				VARCHAR(50)
	,FF_TIMESTAMP						VARCHAR(50)
	,EVENT_START_TIME					DATETIME
	,EVENT_DURATION_SECS				DECIMAL(10,2)
	,INTERVAL_START_TIME				DATETIME
	,INTERVAL_END_TIME					DATETIME
	,EVENT_DURATION_IN_INTERVAL_SECS	FLOAT
	,SEQNO_ADDED_TIME					DATETIME
	,SEQNO								INT
	,FTP_FILE_NAME						VARCHAR(100)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set
	
	DECLARE @EVENT_SECOND_OF_DAY	INT
	SET @EVENT_SECOND_OF_DAY = DATEPART(HOUR,@EVENT_START_TIME) * 3600 + DATEPART(MINUTE,@EVENT_START_TIME) * 60 + DATEPART(SECOND,@EVENT_START_TIME)

	DECLARE @INTERVAL_START_SECOND	INT
	SET @INTERVAL_START_SECOND	= @EVENT_SECOND_OF_DAY - @EVENT_SECOND_OF_DAY % @INTERVAL_SECS

	DECLARE @INTERVAL_START_TIME	DATETIME
	SET @INTERVAL_START_TIME	= DATEADD(SECOND, @INTERVAL_START_SECOND, CAST(FLOOR(CAST(@EVENT_START_TIME AS FLOAT)) AS DATETIME))

	DECLARE @INTERVAL_END_TIME		DATETIME
	SET @INTERVAL_END_TIME		= DATEADD(SECOND, @INTERVAL_SECS, @INTERVAL_START_TIME)

	DECLARE @EVENT_DURATION_IN_INTERVAL_SECS	FLOAT
	
	WHILE (@EVENT_DURATION_SECS > 0)
	BEGIN

		SET @EVENT_DURATION_IN_INTERVAL_SECS = CAST(@INTERVAL_END_TIME - @EVENT_START_TIME AS FLOAT) * 24 * 60 * 60
		IF @EVENT_DURATION_SECS < @EVENT_DURATION_IN_INTERVAL_SECS
			SET @EVENT_DURATION_IN_INTERVAL_SECS = @EVENT_DURATION_SECS

		INSERT INTO @RESULTS_TABLE
		SELECT
		 @FF_DATE
		,@FF_HOUR
		,@FF_SKILL_AVAILABILITY
		,@FF_AGENT_NAME
		,@FF_STATE
		,@FF_REASON_CODE
		,@FF_AGENT_STATE_TIME
		,@FF_TIMESTAMP
		,@EVENT_START_TIME
		,@EVENT_DURATION_SECS
		,@INTERVAL_START_TIME
		,@INTERVAL_END_TIME
		,@EVENT_DURATION_IN_INTERVAL_SECS
		,@SEQNO_ADDED_TIME
		,@SEQNO
		,@FTP_FILE_NAME

		SET @EVENT_DURATION_SECS	= @EVENT_DURATION_SECS - @EVENT_DURATION_IN_INTERVAL_SECS
		SET @EVENT_START_TIME		= @INTERVAL_END_TIME

		SET @INTERVAL_START_TIME	= @INTERVAL_END_TIME
		SET @INTERVAL_END_TIME		= DATEADD(SECOND, @INTERVAL_SECS, @INTERVAL_END_TIME)

	END

	RETURN 
END