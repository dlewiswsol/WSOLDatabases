CREATE TABLE [dbo].[primaryprojectmanager] (
    [idManager] BIGINT        DEFAULT ((0)) NOT NULL,
    [datew]     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_primaryprojectmanager_idManager] PRIMARY KEY CLUSTERED ([idManager] ASC)
);

