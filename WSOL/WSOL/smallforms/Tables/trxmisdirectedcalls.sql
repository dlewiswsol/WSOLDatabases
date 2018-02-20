CREATE TABLE [smallforms].[trxmisdirectedcalls] (
    [id]        BIGINT        IDENTITY (82, 1) NOT NULL,
    [firstname] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastname]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datecall]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [csrname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [issue]     VARCHAR (MAX) NOT NULL,
    [datew]     DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]     TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_trxmisdirectedcalls_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

