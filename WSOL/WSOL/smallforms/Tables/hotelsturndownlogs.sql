CREATE TABLE [smallforms].[hotelsturndownlogs] (
    [id]         BIGINT        IDENTITY (2025, 1) NOT NULL,
    [hour]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [calldate]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [hotelname]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [checkin]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [checkout]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [adults]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [reasoncode] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]      DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]      TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_hotelsturndownlogs_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

