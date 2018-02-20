CREATE TABLE [dbo].[manualmapdata] (
    [idManualMapData] BIGINT        IDENTITY (21644, 1) NOT NULL,
    [idAgent]         BIGINT        DEFAULT ((0)) NOT NULL,
    [idManualMapFld]  BIGINT        DEFAULT ((0)) NOT NULL,
    [userId]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [datew]           DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_manualmapdata_idManualMapData] PRIMARY KEY CLUSTERED ([idManualMapData] ASC),
    CONSTRAINT [manualmapdata$ManualMapDatai01] UNIQUE NONCLUSTERED ([idAgent] ASC, [idManualMapFld] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_manualmapdata_855F807B6B68F66C512606C48A02C5BF]
    ON [dbo].[manualmapdata]([idManualMapFld] ASC)
    INCLUDE([idAgent], [userId]);


GO
CREATE NONCLUSTERED INDEX [ManualMapDatai02]
    ON [dbo].[manualmapdata]([idManualMapFld] ASC, [userId] ASC);


GO
ALTER INDEX [ManualMapDatai02]
    ON [dbo].[manualmapdata] DISABLE;

