CREATE TABLE [smallforms].[aform2] (
    [id]       BIGINT        IDENTITY (30, 1) NOT NULL,
    [name]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comments] VARCHAR (MAX) NOT NULL,
    [agentid]  VARCHAR (100) DEFAULT (N'') NOT NULL,
    [datew]    DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]    TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_aform2_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

