CREATE TABLE [dbo].[sabrecsrnotificationshotel2] (
    [id]          BIGINT        IDENTITY (119, 1) NOT NULL,
    [chain]       VARCHAR (250) NOT NULL,
    [csrLink]     VARCHAR (450) NOT NULL,
    [visible]     VARCHAR (3)   DEFAULT (N'Yes') NOT NULL,
    [csrLinkType] VARCHAR (6)   DEFAULT (N'E-mail') NOT NULL,
    [datew]       DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_sabrecsrnotificationshotel2_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_SabreCsrNotif_1]
    ON [dbo].[sabrecsrnotificationshotel2]([chain] ASC);


GO
ALTER INDEX [fk_SabreCsrNotif_1]
    ON [dbo].[sabrecsrnotificationshotel2] DISABLE;

