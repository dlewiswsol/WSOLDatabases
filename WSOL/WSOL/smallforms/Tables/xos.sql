CREATE TABLE [smallforms].[xos] (
    [fname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastupd]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [agentname] VARCHAR (250) DEFAULT (N'') NULL,
    CONSTRAINT [PK_xos_fname] PRIMARY KEY CLUSTERED ([fname] ASC)
);

