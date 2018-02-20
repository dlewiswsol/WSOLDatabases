CREATE TABLE [dbo].[invoicecategory] (
    [idinvoiceCategory] BIGINT        IDENTITY (5, 1) NOT NULL,
    [name]              VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datecr]            DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_invoicecategory_idinvoiceCategory] PRIMARY KEY CLUSTERED ([idinvoiceCategory] ASC)
);

