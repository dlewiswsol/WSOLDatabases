CREATE TABLE [dbo].[qualityqaq10] (
    [idqualityqaq10]   BIGINT        IDENTITY (1313, 1) NOT NULL,
    [q10]              VARCHAR (250) DEFAULT (N'') NOT NULL,
    [isvisible]        CHAR (1)      DEFAULT (N'Y') NOT NULL,
    [idqualitysrcform] BIGINT        DEFAULT ((0)) NOT NULL,
    [qualityIndex]     TINYINT       DEFAULT ((0)) NULL,
    CONSTRAINT [PK_qualityqaq10_idqualityqaq10] PRIMARY KEY CLUSTERED ([idqualityqaq10] ASC)
);

