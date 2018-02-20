CREATE TABLE [smallforms].[ndccustexs10262004] (
    [id]          BIGINT           DEFAULT ((0)) NOT NULL,
    [oracustid]   VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [custname]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [fax]         VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [ssate]       VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [productcode] VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [saledate]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [ccname]      VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [cctype]      VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [ccnum]       VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [expdate]     VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [authnum]     VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [dollamount]  VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [agentname]   VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [datew]       DATETIME2 (0)    DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [comm]        VARCHAR (MAX)    NOT NULL,
    [purcthro]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [nameresel]   VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [calldist]    VARCHAR (250)    DEFAULT (N'') NOT NULL,
    [ssma$rowid]  UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_ndccustexs10262004_ssma$rowid] PRIMARY KEY CLUSTERED ([ssma$rowid] ASC)
);

