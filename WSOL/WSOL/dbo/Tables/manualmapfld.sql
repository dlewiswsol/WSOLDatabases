CREATE TABLE [dbo].[manualmapfld] (
    [idManualMapFld] BIGINT        IDENTITY (260, 1) NOT NULL,
    [fieldName]      VARCHAR (255) DEFAULT (N'') NOT NULL,
    [ftpServer]      VARCHAR (255) DEFAULT (N'') NOT NULL,
    [ftpUser]        VARCHAR (255) DEFAULT (N'') NOT NULL,
    [ftpPassword]    VARCHAR (255) DEFAULT (N'') NOT NULL,
    [ftpDirectory]   VARCHAR (255) DEFAULT (N'') NOT NULL,
    [ftpFileName]    VARCHAR (255) DEFAULT (N'') NOT NULL,
    [idProgram]      BIGINT        DEFAULT ((0)) NOT NULL,
    [status]         VARCHAR (8)   DEFAULT (N'Active') NOT NULL,
    [datew]          DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_manualmapfld_idManualMapFld] PRIMARY KEY CLUSTERED ([idManualMapFld] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ManualMapFldi02]
    ON [dbo].[manualmapfld]([fieldName] ASC);


GO
ALTER INDEX [ManualMapFldi02]
    ON [dbo].[manualmapfld] DISABLE;

