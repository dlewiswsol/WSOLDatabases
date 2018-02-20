CREATE TABLE [dbo].[invoiceformmembership] (
    [idInvoiceFormMembership] BIGINT        IDENTITY (6, 1) NOT NULL,
    [name]                    VARCHAR (200) NOT NULL,
    [visible]                 SMALLINT      NOT NULL,
    [datew]                   DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_invoiceformmembership_idInvoiceFormMembership] PRIMARY KEY CLUSTERED ([idInvoiceFormMembership] ASC)
);

