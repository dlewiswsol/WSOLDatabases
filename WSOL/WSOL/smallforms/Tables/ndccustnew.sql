﻿CREATE TABLE [smallforms].[ndccustnew] (
    [id]         BIGINT        IDENTITY (6322, 1) NOT NULL,
    [scustname]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [scustnum]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [sadr1]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [sadr2]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [scity]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ssate]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [szip]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [sphone]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [semail]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [sfax]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [prodcode]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [proddesc]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [saledate]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ccname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [cctype]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ccnum]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [expdate]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [authnum]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [dollamount] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [agentname]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]      DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [comm]       VARCHAR (MAX) NOT NULL,
    [purcthro]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [nameresel]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [calldist]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_ndccustnew_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

