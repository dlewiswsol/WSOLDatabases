﻿CREATE VIEW  [dbo].[HireIQDataView] AS

SELECT IDAPPLICANT,CANDIDATEFULLNAME,[STATE] ,OVERALLSCORE,QUALIFIERSSCORE
,QUIZSCORE,TYPINGSCORE,LANGUAGEIQSCORE,PHONESCREENSCORE,REVIEWINGLINK,COMPLETEDDATE,WORDSPERMINUTE,ERRORRATE,RISKBAND,createddate FROM HireIQResult

union

SELECT 
IDAPPLICANT,CANDIDATEFULLNAME,'Completed' AS [STATE] ,0 AS OVERALLSCORE,0 AS QUALIFIERSSCORE,QUIZSCORE,0 AS TYPINGSCORE,LANGUAGEIQSCORE,0 AS PHONESCREENSCORE
,REVIEWINGLINK,COMPLETEDDATE,WORDSPERMINUTE,ERRORRATE,RISKBAND,created FROM hireiq_cats_import