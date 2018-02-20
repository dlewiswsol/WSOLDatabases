CREATE TABLE [smallforms].[balboacontinuation] (
    [idBalboaContinuation] BIGINT        IDENTITY (34, 1) NOT NULL,
    [customerName]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [street]               VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]                 VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]                CHAR (2)      DEFAULT (N'') NOT NULL,
    [zip]                  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [wirelessNum]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [contactNum]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [issue]                VARCHAR (MAX) NOT NULL,
    [agent]                VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]                DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]                TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_balboacontinuation_idBalboaContinuation] PRIMARY KEY CLUSTERED ([idBalboaContinuation] ASC)
);


GO
CREATE NONCLUSTERED INDEX [BalboaContinuation_i01]
    ON [smallforms].[balboacontinuation]([datew] ASC);

