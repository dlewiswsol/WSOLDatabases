CREATE TABLE [smallforms].[assattend] (
    [id]          BIGINT        IDENTITY (43, 1) NOT NULL,
    [docreq]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [firlastname] VARCHAR (MAX) NOT NULL,
    [whatmeet]    VARCHAR (MAX) NOT NULL,
    [fdate]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ftime]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [address]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comment]     VARCHAR (MAX) NOT NULL,
    [agentname]   VARCHAR (100) DEFAULT (N'') NOT NULL,
    [timew]       TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [datew]       DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [specialty]   VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_assattend_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

