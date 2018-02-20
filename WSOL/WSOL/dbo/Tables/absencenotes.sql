CREATE TABLE [dbo].[absencenotes] (
    [id]                        BIGINT        IDENTITY (17186, 1) NOT NULL,
    [idagent]                   BIGINT        DEFAULT ((0)) NOT NULL,
    [datefr]                    DATE          DEFAULT ([dbo].[GETDATE]()) NULL,
    [datett]                    DATE          DEFAULT ([dbo].[GETDATE]()) NULL,
    [vacation]                  CHAR (1)      DEFAULT (N'N') NOT NULL,
    [illness]                   CHAR (1)      DEFAULT (N'N') NOT NULL,
    [note]                      VARCHAR (MAX) NOT NULL,
    [dateins]                   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [idAgentInvoiceInquiryProj] BIGINT        DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_absencenotes_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [absencei1]
    ON [dbo].[absencenotes]([idagent] ASC);

