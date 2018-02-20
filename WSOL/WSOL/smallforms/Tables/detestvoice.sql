CREATE TABLE [smallforms].[detestvoice] (
    [id]       BIGINT        IDENTITY (13562, 1) NOT NULL,
    [transid]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [title]    CHAR (2)      DEFAULT (N'') NOT NULL,
    [fname]    VARCHAR (50)  DEFAULT (N'') NOT NULL,
    [mi]       CHAR (2)      DEFAULT (N'') NOT NULL,
    [lname]    VARCHAR (50)  DEFAULT (N'') NOT NULL,
    [suffix]   VARCHAR (10)  DEFAULT (N'') NOT NULL,
    [addr1]    VARCHAR (100) DEFAULT (N'') NOT NULL,
    [addr2]    VARCHAR (100) DEFAULT (N'') NOT NULL,
    [city]     VARCHAR (30)  DEFAULT (N'') NOT NULL,
    [state]    CHAR (2)      DEFAULT (N'') NOT NULL,
    [zip]      VARCHAR (10)  DEFAULT (N'') NOT NULL,
    [phone]    VARCHAR (10)  DEFAULT (N'') NOT NULL,
    [altexc]   CHAR (1)      DEFAULT (N'') NOT NULL,
    [altmemo]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [agentid]  VARCHAR (20)  DEFAULT (N'') NOT NULL,
    [testfor]  CHAR (2)      DEFAULT (N'DE') NOT NULL,
    [timesub]  TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [datesub]  DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [filetime] TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [filedate] DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [status]   CHAR (1)      DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_detestvoice_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [in2]
    ON [smallforms].[detestvoice]([transid] ASC, [agentid] ASC);


GO
CREATE NONCLUSTERED INDEX [in1]
    ON [smallforms].[detestvoice]([agentid] ASC);


GO
CREATE NONCLUSTERED INDEX [i1detestvoice]
    ON [smallforms].[detestvoice]([agentid] ASC);

