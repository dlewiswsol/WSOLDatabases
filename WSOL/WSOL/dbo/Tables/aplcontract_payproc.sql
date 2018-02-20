CREATE TABLE [dbo].[aplcontract_payproc] (
    [login]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [idclient] BIGINT        DEFAULT ((0)) NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [login]
    ON [dbo].[aplcontract_payproc]([login] ASC);

