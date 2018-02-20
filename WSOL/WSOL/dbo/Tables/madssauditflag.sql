CREATE TABLE [dbo].[madssauditflag] (
    [idMAdSSAuditFlag] BIGINT        IDENTITY (134, 1) NOT NULL,
    [flag]             VARCHAR (255) NOT NULL,
    [visible]          SMALLINT      NOT NULL,
    [datew]            DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_madssauditflag_idMAdSSAuditFlag] PRIMARY KEY CLUSTERED ([idMAdSSAuditFlag] ASC)
);


GO
CREATE NONCLUSTERED INDEX [MAdSSAuditFlagi01]
    ON [dbo].[madssauditflag]([flag] ASC);


GO
ALTER INDEX [MAdSSAuditFlagi01]
    ON [dbo].[madssauditflag] DISABLE;

