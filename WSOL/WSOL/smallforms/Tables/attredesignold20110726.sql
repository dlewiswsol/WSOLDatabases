CREATE TABLE [smallforms].[attredesignold20110726] (
    [idAttRedesign]          BIGINT           DEFAULT ((0)) NOT NULL,
    [accountHolderName]      VARCHAR (250)    NOT NULL,
    [addressOfCellPhoneBill] VARCHAR (1000)   NOT NULL,
    [city]                   VARCHAR (250)    NOT NULL,
    [idState]                CHAR (2)         NOT NULL,
    [zip]                    VARCHAR (5)      NOT NULL,
    [cellAreaCode]           CHAR (3)         NOT NULL,
    [cellPrefix]             CHAR (3)         NOT NULL,
    [cellLast4Numbers]       CHAR (4)         NOT NULL,
    [idOutcome]              BIGINT           NOT NULL,
    [comments]               VARCHAR (MAX)    NOT NULL,
    [agentName]              VARCHAR (250)    NOT NULL,
    [datew]                  DATETIME2 (0)    NOT NULL,
    [ssma$rowid]             UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_attredesignold20110726_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

