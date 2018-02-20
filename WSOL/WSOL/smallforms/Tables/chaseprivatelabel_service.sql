CREATE TABLE [smallforms].[chaseprivatelabel_service] (
    [fname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [fdate]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [ftime]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [lastupd] DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_chaseprivatelabel_service_fname] PRIMARY KEY CLUSTERED ([fname] ASC, [fdate] ASC, [ftime] ASC)
);

