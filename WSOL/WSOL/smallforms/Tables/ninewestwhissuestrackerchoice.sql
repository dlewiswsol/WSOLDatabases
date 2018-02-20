CREATE TABLE [smallforms].[ninewestwhissuestrackerchoice] (
    [idchoice] BIGINT        IDENTITY (12, 1) NOT NULL,
    [name]     VARCHAR (255) DEFAULT (N'') NOT NULL,
    [visible]  VARCHAR (3)   DEFAULT (N'Yes') NOT NULL,
    CONSTRAINT [PK_ninewestwhissuestrackerchoice_idchoice] PRIMARY KEY CLUSTERED ([idchoice] ASC)
);

