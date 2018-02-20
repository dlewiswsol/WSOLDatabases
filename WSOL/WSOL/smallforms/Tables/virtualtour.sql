CREATE TABLE [smallforms].[virtualtour] (
    [id]         BIGINT        IDENTITY (11, 1) NOT NULL,
    [ticketnum]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [firstname]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [compname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [address]    VARCHAR (MAX) NOT NULL,
    [city]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [country]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [email]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [briefdescr] VARCHAR (MAX) NOT NULL,
    [datew]      DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]      TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_virtualtour_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

