CREATE TABLE [smallforms].[xosservice] (
    [transid] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastupd] DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_xosservice_transid] PRIMARY KEY CLUSTERED ([transid] ASC)
);

