CREATE TABLE [smallforms].[tmobileredesign] (
    [id]            BIGINT        IDENTITY (27963, 1) NOT NULL,
    [firstName]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastName]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [mobileNum]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [contactNum]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [accountNumber] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [featureCode]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [action]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [notes]         VARCHAR (MAX) NOT NULL,
    [agentid]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]         DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_tmobileredesign_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

