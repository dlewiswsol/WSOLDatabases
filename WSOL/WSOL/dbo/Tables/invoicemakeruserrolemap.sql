CREATE TABLE [dbo].[invoicemakeruserrolemap] (
    [id]     INT    IDENTITY (1, 1) NOT NULL,
    [iduser] BIGINT NOT NULL,
    [role]   INT    NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([iduser]) REFERENCES [dbo].[invoicemakeruser] ([ID]),
    FOREIGN KEY ([role]) REFERENCES [dbo].[invoicemakerrole] ([id])
);

