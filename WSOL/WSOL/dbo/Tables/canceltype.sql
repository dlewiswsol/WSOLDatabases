CREATE TABLE [dbo].[canceltype] (
    [idCancelType] BIGINT        DEFAULT ((0)) NOT NULL,
    [name]         VARCHAR (255) DEFAULT (N'') NOT NULL,
    [datew]        DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_canceltype_idCancelType] PRIMARY KEY CLUSTERED ([idCancelType] ASC)
);

