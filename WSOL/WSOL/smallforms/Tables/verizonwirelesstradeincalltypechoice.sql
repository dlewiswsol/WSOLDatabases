CREATE TABLE [smallforms].[verizonwirelesstradeincalltypechoice] (
    [idchoice] BIGINT        IDENTITY (24, 1) NOT NULL,
    [name]     VARCHAR (255) DEFAULT (N'') NOT NULL,
    [visible]  VARCHAR (3)   DEFAULT (N'Yes') NOT NULL,
    CONSTRAINT [PK_verizonwirelesstradeincalltypechoice_idchoice] PRIMARY KEY CLUSTERED ([idchoice] ASC)
);

