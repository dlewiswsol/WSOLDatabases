CREATE TABLE [dbo].[madssauditmarket] (
    [idMAdSSAuditMarket] BIGINT        IDENTITY (8, 1) NOT NULL,
    [market]             VARCHAR (255) NOT NULL,
    [visible]            SMALLINT      NOT NULL,
    [datew]              DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_madssauditmarket_idMAdSSAuditMarket] PRIMARY KEY CLUSTERED ([idMAdSSAuditMarket] ASC)
);


GO
CREATE NONCLUSTERED INDEX [MAdSSAuditMarketi01]
    ON [dbo].[madssauditmarket]([market] ASC);


GO
ALTER INDEX [MAdSSAuditMarketi01]
    ON [dbo].[madssauditmarket] DISABLE;

