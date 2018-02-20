CREATE TABLE [dbo].[verizonwinbackform] (
    [idVerizonWinBackForm]        BIGINT        IDENTITY (89407, 1) NOT NULL,
    [formType]                    VARCHAR (8)   DEFAULT (N'Inbound') NOT NULL,
    [cellPhone]                   VARCHAR (255) DEFAULT (N'') NOT NULL,
    [firstName]                   VARCHAR (255) DEFAULT (N'') NOT NULL,
    [lastName]                    VARCHAR (255) DEFAULT (N'') NOT NULL,
    [coverage]                    VARCHAR (3)   NOT NULL,
    [region]                      VARCHAR (9)   DEFAULT (N'') NOT NULL,
    [idVerizonWinBackFormFeature] BIGINT        NOT NULL,
    [comment]                     VARCHAR (MAX) NULL,
    [datew]                       DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_verizonwinbackform_idVerizonWinBackForm] PRIMARY KEY CLUSTERED ([idVerizonWinBackForm] ASC)
);


GO
CREATE NONCLUSTERED INDEX [VerizonWinBackFormi01]
    ON [dbo].[verizonwinbackform]([datew] ASC);


GO
ALTER INDEX [VerizonWinBackFormi01]
    ON [dbo].[verizonwinbackform] DISABLE;

