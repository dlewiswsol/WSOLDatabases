CREATE TABLE [dbo].[schtimes_cancel_apprdenyqueue] (
    [id]                    BIGINT        IDENTITY (66575, 1) NOT NULL,
    [idrec_schtimes_cancel] BIGINT        DEFAULT ((0)) NOT NULL,
    [status]                VARCHAR (8)   DEFAULT (N'New') NOT NULL,
    [dateCreated]           DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [dateProcessed]         DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_schtimes_cancel_apprdenyqueue_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [schtimes_cancel_ApprDenyQueue2]
    ON [dbo].[schtimes_cancel_apprdenyqueue]([idrec_schtimes_cancel] ASC);


GO
ALTER INDEX [schtimes_cancel_ApprDenyQueue2]
    ON [dbo].[schtimes_cancel_apprdenyqueue] DISABLE;


GO
CREATE NONCLUSTERED INDEX [schtimes_cancel_ApprDenyQueue1]
    ON [dbo].[schtimes_cancel_apprdenyqueue]([status] ASC, [dateCreated] ASC);


GO
ALTER INDEX [schtimes_cancel_ApprDenyQueue1]
    ON [dbo].[schtimes_cancel_apprdenyqueue] DISABLE;

