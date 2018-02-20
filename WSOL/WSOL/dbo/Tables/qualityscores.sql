CREATE TABLE [dbo].[qualityscores] (
    [idqualityscores]  BIGINT        IDENTITY (7009, 1) NOT NULL,
    [idagent]          BIGINT        DEFAULT ((0)) NOT NULL,
    [score]            INT           DEFAULT ((0)) NOT NULL,
    [idqualitysrcform] BIGINT        DEFAULT ((0)) NOT NULL,
    [comments]         VARCHAR (MAX) NULL,
    [datew]            DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]            TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_qualityscores_idqualityscores] PRIMARY KEY CLUSTERED ([idqualityscores] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_qualityscores_5D64FA9A8E13F4104421D1A601B6853D]
    ON [dbo].[qualityscores]([idagent] ASC);

