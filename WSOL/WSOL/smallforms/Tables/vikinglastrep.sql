﻿CREATE TABLE [smallforms].[vikinglastrep] (
    [lastid]     INT              DEFAULT ((0)) NOT NULL,
    [dateproc]   DATE             DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [lastchar]   INT              DEFAULT ((0)) NOT NULL,
    [ssma$rowid] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_vikinglastrep_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

