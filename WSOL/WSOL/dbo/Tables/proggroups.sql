CREATE TABLE [dbo].[proggroups] (
    [id]       BIGINT        IDENTITY (7, 1) NOT NULL,
    [name]     VARCHAR (100) DEFAULT (NULL) NULL,
    [inserted] DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_proggroups_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

