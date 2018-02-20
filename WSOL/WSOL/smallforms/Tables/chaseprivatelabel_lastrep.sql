CREATE TABLE [smallforms].[chaseprivatelabel_lastrep] (
    [lastid]     INT              DEFAULT ((0)) NOT NULL,
    [dateproc]   DATE             DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_chaseprivatelabel_lastrep_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

