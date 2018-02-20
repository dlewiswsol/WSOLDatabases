CREATE TABLE [dbo].[madssauditjobtype] (
    [idMAdSSAuditJobType] BIGINT        IDENTITY (7, 1) NOT NULL,
    [jobType]             VARCHAR (255) NOT NULL,
    [visible]             SMALLINT      NOT NULL,
    [datew]               DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_madssauditjobtype_idMAdSSAuditJobType] PRIMARY KEY CLUSTERED ([idMAdSSAuditJobType] ASC)
);


GO
CREATE NONCLUSTERED INDEX [MAdSSAuditJobTypei01]
    ON [dbo].[madssauditjobtype]([jobType] ASC);


GO
ALTER INDEX [MAdSSAuditJobTypei01]
    ON [dbo].[madssauditjobtype] DISABLE;

