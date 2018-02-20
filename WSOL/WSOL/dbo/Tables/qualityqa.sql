CREATE TABLE [dbo].[qualityqa] (
    [idqualityqa]        BIGINT       IDENTITY (693, 1) NOT NULL,
    [idqualityscores]    BIGINT       DEFAULT ((0)) NOT NULL,
    [idreason]           BIGINT       DEFAULT ((0)) NOT NULL,
    [apprtime]           VARCHAR (50) DEFAULT (N'') NOT NULL,
    [idprogram]          BIGINT       DEFAULT ((0)) NOT NULL,
    [idmonitor]          BIGINT       DEFAULT ((0)) NOT NULL,
    [q1]                 SMALLINT     DEFAULT ((0)) NOT NULL,
    [q2]                 SMALLINT     DEFAULT ((0)) NOT NULL,
    [q3]                 SMALLINT     DEFAULT ((0)) NOT NULL,
    [q4]                 SMALLINT     DEFAULT ((0)) NOT NULL,
    [q5]                 SMALLINT     DEFAULT ((0)) NOT NULL,
    [q6]                 SMALLINT     DEFAULT ((0)) NOT NULL,
    [q7]                 SMALLINT     DEFAULT ((0)) NOT NULL,
    [q8]                 SMALLINT     DEFAULT ((0)) NOT NULL,
    [q9]                 SMALLINT     DEFAULT ((0)) NOT NULL,
    [longmin]            VARCHAR (50) DEFAULT (N'') NOT NULL,
    [idqualitysalescall] BIGINT       DEFAULT ((0)) NOT NULL,
    [idqualityqaq10]     BIGINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_qualityqa_idqualityqa] PRIMARY KEY CLUSTERED ([idqualityqa] ASC)
);

