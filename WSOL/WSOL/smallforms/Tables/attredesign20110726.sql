CREATE TABLE [smallforms].[attredesign20110726] (
    [idAttRedesign]          BIGINT         IDENTITY (305, 1) NOT NULL,
    [accountHolderName]      VARCHAR (250)  NOT NULL,
    [addressOfCellPhoneBill] VARCHAR (1000) NOT NULL,
    [city]                   VARCHAR (250)  NOT NULL,
    [idState]                CHAR (2)       NOT NULL,
    [zip]                    VARCHAR (5)    NOT NULL,
    [cellAreaCode]           CHAR (3)       NOT NULL,
    [cellPrefix]             CHAR (3)       NOT NULL,
    [cellLast4Numbers]       CHAR (4)       NOT NULL,
    [idOutcome]              BIGINT         NOT NULL,
    [comments]               VARCHAR (MAX)  NOT NULL,
    [agentName]              VARCHAR (250)  NOT NULL,
    [datew]                  DATETIME2 (0)  NOT NULL,
    CONSTRAINT [PK_attredesign20110726_idAttRedesign] PRIMARY KEY CLUSTERED ([idAttRedesign] ASC)
);


GO
CREATE NONCLUSTERED INDEX [AttRedesigni01]
    ON [smallforms].[attredesign20110726]([datew] ASC);

