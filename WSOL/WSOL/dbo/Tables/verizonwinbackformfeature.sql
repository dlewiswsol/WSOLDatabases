CREATE TABLE [dbo].[verizonwinbackformfeature] (
    [idVerizonWinBackFormFeature] BIGINT        NOT NULL,
    [name]                        VARCHAR (255) NOT NULL,
    [visible]                     SMALLINT      NOT NULL,
    CONSTRAINT [PK_verizonwinbackformfeature_idVerizonWinBackFormFeature] PRIMARY KEY CLUSTERED ([idVerizonWinBackFormFeature] ASC)
);

