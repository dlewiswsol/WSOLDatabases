CREATE TABLE [smallforms].[tmobileredesignold20081011] (
    [id]         BIGINT        IDENTITY (10037, 1) NOT NULL,
    [firstName]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastName]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [mobileNum]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [contactNum] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [make]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [model]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [action]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [notes]      VARCHAR (MAX) NOT NULL,
    [agentid]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]      DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_tmobileredesignold20081011_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

