CREATE TABLE [dbo].[preparationdatainvdetails] (
    [id]             BIGINT          IDENTITY (14642, 1) NOT NULL,
    [idautoinvTotal] BIGINT          NOT NULL,
    [prepStartDate]  DATE            NOT NULL,
    [prepEndDate]    DATE            NOT NULL,
    [invoiceHeader]  VARCHAR (100)   NOT NULL,
    [trainingTopic]  VARCHAR (100)   NOT NULL,
    [hours]          DECIMAL (12, 4) NOT NULL,
    [rate]           DECIMAL (12, 4) NOT NULL,
    CONSTRAINT [PK_preparationdatainvdetails_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [PreparationDataInvDetails_i01]
    ON [dbo].[preparationdatainvdetails]([idautoinvTotal] ASC);


GO
ALTER INDEX [PreparationDataInvDetails_i01]
    ON [dbo].[preparationdatainvdetails] DISABLE;

