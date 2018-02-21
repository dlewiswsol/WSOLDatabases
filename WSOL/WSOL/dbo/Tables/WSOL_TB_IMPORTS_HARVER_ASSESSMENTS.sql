CREATE TABLE [dbo].[WSOL_TB_IMPORTS_HARVER_ASSESSMENTS] (
    [IDAPPLICANT]                INT             NOT NULL,
    [AGENTIDENTNUM]              VARCHAR (9)     NULL,
    [OVERALL_TALENT_PITCH_SCORE] INT             NULL,
    [DECISIVENESS]               INT             NULL,
    [STRESS_TOLERANCE]           INT             NULL,
    [PLANNING_ORGANISING]        INT             NULL,
    [BEHAVIORAL_FLEXIBILITY]     INT             NULL,
    [ORAL_COMMUNICATION]         INT             NULL,
    [LEADERSHIP]                 INT             NULL,
    [SJT_1]                      DECIMAL (10, 2) NULL,
    [MULTITASKING]               DECIMAL (10, 2) NULL,
    [SJT_2]                      DECIMAL (10, 2) NULL,
    [PERSONALITY_TEST]           DECIMAL (10, 2) NULL,
    [LANGUAGE_TEST]              DECIMAL (10, 2) NULL,
    [WS_ROW_CREATED_TIME]        DATETIME        NULL,
    [WS_ROW_UPDATED_TIME]        DATETIME        NULL,
    [ID]                         INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WSOL_TB_IMPORTS_HARVER_ASSESSMENTS] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_APPLICANT_IDAPPLICANT] FOREIGN KEY ([IDAPPLICANT]) REFERENCES [dbo].[APPLICANT] ([IDAPPLICANT]) ON DELETE CASCADE ON UPDATE CASCADE
);



