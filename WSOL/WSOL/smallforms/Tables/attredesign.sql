CREATE TABLE [smallforms].[attredesign] (
    [idAttRedesign]        BIGINT        IDENTITY (20325, 1) NOT NULL,
    [idBeginReasCallAbout] BIGINT        NOT NULL,
    [accountHolderName]    VARCHAR (250) NOT NULL,
    [city]                 VARCHAR (250) NOT NULL,
    [idState]              CHAR (2)      NOT NULL,
    [zip]                  VARCHAR (5)   NOT NULL,
    [cellAreaCode]         CHAR (3)      NOT NULL,
    [cellPrefix]           CHAR (3)      NOT NULL,
    [cellLast4Numbers]     CHAR (4)      NOT NULL,
    [idOutcome]            BIGINT        NOT NULL,
    [comments]             VARCHAR (MAX) NOT NULL,
    [agentName]            VARCHAR (250) NOT NULL,
    [idAgent]              BIGINT        DEFAULT ((0)) NOT NULL,
    [datew]                DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_attredesign_idAttRedesign] PRIMARY KEY CLUSTERED ([idAttRedesign] ASC)
);


GO
CREATE NONCLUSTERED INDEX [AttRedesigni01]
    ON [smallforms].[attredesign]([datew] ASC);

