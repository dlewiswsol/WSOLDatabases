CREATE TABLE [smallforms].[suncomctprcode] (
    [idcalltrcode] INT           DEFAULT ((0)) NOT NULL,
    [name]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [visible]      CHAR (1)      DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_suncomctprcode_idcalltrcode] PRIMARY KEY CLUSTERED ([idcalltrcode] ASC)
);

