CREATE TABLE [smallforms].[offcontlist] (
    [id]          BIGINT        IDENTITY (1472, 1) NOT NULL,
    [firlastname] VARCHAR (MAX) NOT NULL,
    [docspec]     VARCHAR (MAX) NOT NULL,
    [address]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [meetcall]    VARCHAR (MAX) NOT NULL,
    [meettype]    VARCHAR (MAX) NOT NULL,
    [comment]     VARCHAR (MAX) NOT NULL,
    [agentname]   VARCHAR (100) DEFAULT (N'') NOT NULL,
    [timew]       TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [datew]       DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_offcontlist_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

