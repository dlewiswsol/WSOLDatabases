CREATE TABLE [dbo].[qualitymonitor] (
    [idqualitymonitor] BIGINT IDENTITY (2886, 1) NOT NULL,
    [idagent]          BIGINT DEFAULT (NULL) NULL,
    [idqualitysrcform] BIGINT DEFAULT (NULL) NULL,
    CONSTRAINT [PK_qualitymonitor_idqualitymonitor] PRIMARY KEY CLUSTERED ([idqualitymonitor] ASC)
);


GO
CREATE NONCLUSTERED INDEX [qualitymonitori02]
    ON [dbo].[qualitymonitor]([idagent] ASC, [idqualitysrcform] ASC);


GO
ALTER INDEX [qualitymonitori02]
    ON [dbo].[qualitymonitor] DISABLE;

