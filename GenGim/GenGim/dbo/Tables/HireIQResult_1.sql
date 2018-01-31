﻿CREATE TABLE [dbo].[HireIQResult] (
    [ID]                BIGINT         NOT NULL,
    [IDAPPLICANT]       NUMERIC (20)   NOT NULL,
    [CANDIDATEFULLNAME] VARCHAR (200)  NOT NULL,
    [CANDIDATEEMAIL]    VARCHAR (200)  NOT NULL,
    [SCREENID]          BIGINT         NOT NULL,
    [STATE]             VARCHAR (100)  NULL,
    [APPLYURL]          VARCHAR (4000) NOT NULL,
    [OVERALLSCORE]      VARCHAR (100)  NULL,
    [QUALIFIERSSCORE]   VARCHAR (100)  NULL,
    [QUIZSCORE]         VARCHAR (100)  NULL,
    [TYPINGSCORE]       VARCHAR (100)  NULL,
    [LANGUAGEIQSCORE]   VARCHAR (100)  NULL,
    [PHONESCREENSCORE]  VARCHAR (100)  NULL,
    [REVIEWINGLINK]     VARCHAR (4000) NULL,
    [CREATEDDATE]       DATETIME2 (0)  NULL,
    [RISKBAND]          VARCHAR (1000) NULL,
    [WORDSPERMINUTE]    VARCHAR (100)  NULL,
    [ERRORRATE]         VARCHAR (100)  NULL,
    [COMPLETEDDATE]     DATETIME2 (0)  NULL
);

