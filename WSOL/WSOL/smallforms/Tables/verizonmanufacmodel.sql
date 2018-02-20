CREATE TABLE [smallforms].[verizonmanufacmodel] (
    [idVerizonManufacModel] BIGINT        NOT NULL,
    [manufac]               VARCHAR (100) NOT NULL,
    [model]                 VARCHAR (100) NOT NULL,
    [visible]               SMALLINT      NOT NULL,
    [datew]                 DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_verizonmanufacmodel_idVerizonManufacModel] PRIMARY KEY CLUSTERED ([idVerizonManufacModel] ASC)
);


GO
CREATE NONCLUSTERED INDEX [VerizonManufacModeli02]
    ON [smallforms].[verizonmanufacmodel]([model] ASC);


GO
CREATE NONCLUSTERED INDEX [VerizonManufacModeli01]
    ON [smallforms].[verizonmanufacmodel]([manufac] ASC);

