CREATE TABLE [smallforms].[asurionescal] (
    [id]           BIGINT        IDENTITY (47197, 1) NOT NULL,
    [subject]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [priority]     CHAR (1)      DEFAULT (N'') NOT NULL,
    [customername] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [wirelessnum]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [contactnum]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [issue]        VARCHAR (MAX) NOT NULL,
    [agentid]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]        DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [claimnumber]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ftype]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [email]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [promo]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_asurionescal_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

