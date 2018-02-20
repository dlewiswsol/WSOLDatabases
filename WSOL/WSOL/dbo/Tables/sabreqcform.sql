CREATE TABLE [dbo].[sabreqcform] (
    [id]               BIGINT          IDENTITY (4946, 1) NOT NULL,
    [agents_id]        BIGINT          NOT NULL,
    [monitoredBy]      BIGINT          NOT NULL,
    [monitorName]      VARCHAR (250)   NOT NULL,
    [recordingId]      VARCHAR (30)    NOT NULL,
    [datetimefield]    DATETIME2 (0)   DEFAULT (NULL) NULL,
    [sessionId]        VARCHAR (50)    NOT NULL,
    [f1a]              SMALLINT        NOT NULL,
    [f1aText]          VARCHAR (3)     NOT NULL,
    [f1b]              SMALLINT        NOT NULL,
    [f1bText]          VARCHAR (3)     NOT NULL,
    [f1c]              SMALLINT        NOT NULL,
    [f1cText]          VARCHAR (3)     NOT NULL,
    [f2]               SMALLINT        NOT NULL,
    [f2Text]           VARCHAR (3)     NOT NULL,
    [f3]               SMALLINT        NOT NULL,
    [f3Text]           VARCHAR (3)     NOT NULL,
    [f4]               SMALLINT        NOT NULL,
    [f4Text]           VARCHAR (3)     NOT NULL,
    [f5]               SMALLINT        NOT NULL,
    [f5Text]           VARCHAR (3)     NOT NULL,
    [f6]               SMALLINT        NOT NULL,
    [f6Text]           VARCHAR (3)     NOT NULL,
    [f6a]              SMALLINT        NOT NULL,
    [f6aText]          VARCHAR (3)     NOT NULL,
    [f7a]              SMALLINT        NOT NULL,
    [f7aText]          VARCHAR (3)     NOT NULL,
    [f7b]              SMALLINT        NOT NULL,
    [f7bText]          VARCHAR (3)     NOT NULL,
    [f8]               SMALLINT        NOT NULL,
    [f8Text]           VARCHAR (3)     NOT NULL,
    [f8a]              SMALLINT        NOT NULL,
    [f8aText]          VARCHAR (3)     NOT NULL,
    [f8b]              SMALLINT        NOT NULL,
    [f8bText]          VARCHAR (3)     NOT NULL,
    [f9]               SMALLINT        NOT NULL,
    [f9Text]           VARCHAR (3)     NOT NULL,
    [f10]              SMALLINT        NOT NULL,
    [f10Text]          VARCHAR (3)     NOT NULL,
    [f11]              SMALLINT        NOT NULL,
    [f11Text]          VARCHAR (3)     NOT NULL,
    [f12]              SMALLINT        NOT NULL,
    [f12Text]          VARCHAR (3)     NOT NULL,
    [f12a]             SMALLINT        NOT NULL,
    [f12aText]         VARCHAR (3)     NOT NULL,
    [f13]              SMALLINT        NOT NULL,
    [f13Text]          VARCHAR (3)     NOT NULL,
    [f14]              SMALLINT        NOT NULL,
    [f14Text]          VARCHAR (3)     NOT NULL,
    [f15]              SMALLINT        NOT NULL,
    [f15Text]          VARCHAR (3)     NOT NULL,
    [f16]              SMALLINT        NOT NULL,
    [f16Text]          VARCHAR (3)     NOT NULL,
    [f17]              SMALLINT        NOT NULL,
    [f17Text]          VARCHAR (3)     NOT NULL,
    [f19]              SMALLINT        NOT NULL,
    [f19Text]          VARCHAR (3)     NOT NULL,
    [f20]              SMALLINT        NOT NULL,
    [f20Text]          VARCHAR (3)     NOT NULL,
    [f21]              SMALLINT        NOT NULL,
    [f21Text]          VARCHAR (3)     NOT NULL,
    [f22]              SMALLINT        NOT NULL,
    [f22Text]          VARCHAR (3)     NOT NULL,
    [f23]              SMALLINT        NOT NULL,
    [f23Text]          VARCHAR (3)     NOT NULL,
    [f24]              SMALLINT        NOT NULL,
    [f24Text]          VARCHAR (3)     NOT NULL,
    [f25]              SMALLINT        NOT NULL,
    [f25Text]          VARCHAR (3)     NOT NULL,
    [f25a]             SMALLINT        NOT NULL,
    [f25aText]         VARCHAR (3)     NOT NULL,
    [f26]              SMALLINT        NOT NULL,
    [f26Text]          VARCHAR (3)     NOT NULL,
    [f27]              SMALLINT        NOT NULL,
    [f27Text]          VARCHAR (3)     NOT NULL,
    [f28]              SMALLINT        NOT NULL,
    [f28Text]          VARCHAR (3)     NOT NULL,
    [f29]              SMALLINT        NOT NULL,
    [f29Text]          VARCHAR (3)     NOT NULL,
    [f30]              SMALLINT        NOT NULL,
    [f30Text]          VARCHAR (3)     NOT NULL,
    [f31]              SMALLINT        NOT NULL,
    [f31Text]          VARCHAR (3)     NOT NULL,
    [f32]              SMALLINT        NOT NULL,
    [f32Text]          VARCHAR (3)     NOT NULL,
    [f33]              SMALLINT        NOT NULL,
    [f33Text]          VARCHAR (3)     NOT NULL,
    [f34]              SMALLINT        NOT NULL,
    [f34Text]          VARCHAR (3)     NOT NULL,
    [f35]              SMALLINT        NOT NULL,
    [f35Text]          VARCHAR (3)     NOT NULL,
    [f36]              SMALLINT        NOT NULL,
    [f36Text]          VARCHAR (3)     NOT NULL,
    [f37]              SMALLINT        NOT NULL,
    [f37Text]          VARCHAR (3)     NOT NULL,
    [f38]              SMALLINT        NOT NULL,
    [f38Text]          VARCHAR (3)     NOT NULL,
    [f39]              SMALLINT        NOT NULL,
    [f39Text]          VARCHAR (3)     NOT NULL,
    [notes]            VARCHAR (MAX)   NOT NULL,
    [score]            DECIMAL (12, 2) NOT NULL,
    [percent]          DECIMAL (12, 2) NOT NULL,
    [idqualitysrcform] BIGINT          NOT NULL,
    [idqualityqaq10]   BIGINT          NOT NULL,
    [datew]            DATE            NOT NULL,
    [timew]            TIME (7)        NOT NULL,
    CONSTRAINT [PK_sabreqcform_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [SabreQcFormI02]
    ON [dbo].[sabreqcform]([datew] ASC);


GO
ALTER INDEX [SabreQcFormI02]
    ON [dbo].[sabreqcform] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SabreQcFormI01]
    ON [dbo].[sabreqcform]([agents_id] ASC, [datew] ASC);


GO
ALTER INDEX [SabreQcFormI01]
    ON [dbo].[sabreqcform] DISABLE;


GO
CREATE NONCLUSTERED INDEX [fk_SabreQcForm_agents1_idx]
    ON [dbo].[sabreqcform]([monitoredBy] ASC);


GO
ALTER INDEX [fk_SabreQcForm_agents1_idx]
    ON [dbo].[sabreqcform] DISABLE;


GO
CREATE NONCLUSTERED INDEX [fk_SabreQcForm_agents_idx]
    ON [dbo].[sabreqcform]([agents_id] ASC);


GO
ALTER INDEX [fk_SabreQcForm_agents_idx]
    ON [dbo].[sabreqcform] DISABLE;

