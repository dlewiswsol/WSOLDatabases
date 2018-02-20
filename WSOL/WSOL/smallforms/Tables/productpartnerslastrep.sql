CREATE TABLE [smallforms].[productpartnerslastrep] (
    [lastid]     INT              DEFAULT ((0)) NOT NULL,
    [dateproc]   DATE             DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [lastchar]   SMALLINT         DEFAULT ((0)) NOT NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_productpartnerslastrep_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

