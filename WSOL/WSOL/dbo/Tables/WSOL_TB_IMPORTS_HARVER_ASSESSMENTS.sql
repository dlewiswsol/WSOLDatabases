CREATE TABLE [dbo].[WSOL_TB_IMPORTS_HARVER_ASSESSMENTS] (
    [ID_APPLICANT]           INT             NOT NULL,
    [MATCHING_SCORE]         INT             NULL,
    [DECISIVENESS]           INT             NULL,
    [STRESS_TOLERANCE]       INT             NULL,
    [PLANNING_ORGANISING]    INT             NULL,
    [BEHAVIORAL_FLEXIBILITY] INT             NULL,
    [ORAL_COMMUNICATION]     INT             NULL,
    [LEADERSHIP]             INT             NULL,
    [LEADERSHIP_SJT]         DECIMAL (10, 2) NULL,
    [MULTITASKING]           DECIMAL (10, 2) NULL,
    [MULTITASKING_SJT]       DECIMAL (10, 2) NULL,
    [PERSONALITY_TEST]       DECIMAL (10, 2) NULL,
    [LANGUAGE_TEST]          DECIMAL (10, 2) NULL,
    [ID]                     INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_HARVER_ASSESSMENTS] PRIMARY KEY CLUSTERED ([ID] ASC)
);

