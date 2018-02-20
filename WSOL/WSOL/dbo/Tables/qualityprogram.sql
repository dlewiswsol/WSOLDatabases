CREATE TABLE [dbo].[qualityprogram] (
    [idqualityprogram] BIGINT IDENTITY (207, 1) NOT NULL,
    [idprogram]        BIGINT DEFAULT (NULL) NULL,
    [idqualitysrcform] BIGINT DEFAULT (NULL) NULL,
    CONSTRAINT [PK_qualityprogram_idqualityprogram] PRIMARY KEY CLUSTERED ([idqualityprogram] ASC)
);

