CREATE TABLE [dbo].[madssauditpolicy] (
    [idMAdSSAuditPolicy] BIGINT        IDENTITY (17, 1) NOT NULL,
    [policy]             VARCHAR (255) NOT NULL,
    [visible]            SMALLINT      NOT NULL,
    [datew]              DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_madssauditpolicy_idMAdSSAuditPolicy] PRIMARY KEY CLUSTERED ([idMAdSSAuditPolicy] ASC)
);


GO
CREATE NONCLUSTERED INDEX [MAdSSAuditPolicyi01]
    ON [dbo].[madssauditpolicy]([policy] ASC);


GO
ALTER INDEX [MAdSSAuditPolicyi01]
    ON [dbo].[madssauditpolicy] DISABLE;

