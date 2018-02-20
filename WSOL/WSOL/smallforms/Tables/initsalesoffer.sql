CREATE TABLE [smallforms].[initsalesoffer] (
    [id]        BIGINT        IDENTITY (28, 1) NOT NULL,
    [lastname]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [custnum]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ordernum]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [orderdate] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [cbnumber]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [custver]   VARCHAR (MAX) NOT NULL,
    [agentname] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]     DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]     TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_initsalesoffer_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

