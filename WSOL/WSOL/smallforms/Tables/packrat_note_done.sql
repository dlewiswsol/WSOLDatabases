CREATE TABLE [smallforms].[packrat_note_done] (
    [idnote]    BIGINT        DEFAULT ((0)) NOT NULL,
    [idrecord]  BIGINT        DEFAULT ((0)) NOT NULL,
    [comment]   VARCHAR (MAX) NOT NULL,
    [agentname] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recstatus] CHAR (1)      DEFAULT (N'') NOT NULL,
    [datestart] DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [dateins]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_packrat_note_done_idnote] PRIMARY KEY CLUSTERED ([idnote] ASC)
);

