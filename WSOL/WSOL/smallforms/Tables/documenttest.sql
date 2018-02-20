CREATE TABLE [smallforms].[documenttest] (
    [id]      BIGINT        IDENTITY (2876, 1) NOT NULL,
    [fname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [adr1]    VARCHAR (MAX) NOT NULL,
    [adr2]    VARCHAR (MAX) NOT NULL,
    [city]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [note]    VARCHAR (MAX) NOT NULL,
    [agentid] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_documenttest_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

