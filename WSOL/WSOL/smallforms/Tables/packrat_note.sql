CREATE TABLE [smallforms].[packrat_note] (
    [idnote]    BIGINT        IDENTITY (1469, 1) NOT NULL,
    [idrecord]  BIGINT        DEFAULT ((0)) NOT NULL,
    [comment]   VARCHAR (MAX) NOT NULL,
    [agentname] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recstatus] CHAR (1)      DEFAULT (N'') NOT NULL,
    [datestart] DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [dateins]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_packrat_note_idnote] PRIMARY KEY CLUSTERED ([idnote] ASC)
);


GO
CREATE NONCLUSTERED INDEX [inote02]
    ON [smallforms].[packrat_note]([dateins] ASC, [recstatus] ASC);


GO
CREATE NONCLUSTERED INDEX [inote01]
    ON [smallforms].[packrat_note]([idrecord] ASC);

