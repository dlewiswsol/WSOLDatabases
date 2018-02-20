CREATE TABLE [dbo].[qualityreason] (
    [idqualityreason]  BIGINT        IDENTITY (41, 1) NOT NULL,
    [reasonname]       VARCHAR (200) DEFAULT (NULL) NULL,
    [idqualitysrcform] BIGINT        DEFAULT (NULL) NULL,
    CONSTRAINT [PK_qualityreason_idqualityreason] PRIMARY KEY CLUSTERED ([idqualityreason] ASC)
);

