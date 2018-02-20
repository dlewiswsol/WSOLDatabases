CREATE TABLE [smallforms].[vikingdata] (
    [idvikingdata]  BIGINT        IDENTITY (5940, 1) NOT NULL,
    [idvikingorder] BIGINT        DEFAULT ((0)) NOT NULL,
    [sku]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [proddescr]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [quant]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [color]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [unitprice]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]         DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]         TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_vikingdata_idvikingdata] PRIMARY KEY CLUSTERED ([idvikingdata] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idvikingorder]
    ON [smallforms].[vikingdata]([idvikingorder] ASC);

