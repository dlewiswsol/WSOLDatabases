CREATE TABLE [smallforms].[hotelslacalls] (
    [id]      BIGINT        IDENTITY (355, 1) NOT NULL,
    [prank]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [note]    VARCHAR (MAX) NOT NULL,
    [agentid] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_hotelslacalls_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

