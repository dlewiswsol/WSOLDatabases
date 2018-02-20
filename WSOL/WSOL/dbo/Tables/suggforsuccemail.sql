CREATE TABLE [dbo].[suggforsuccemail] (
    [idSuggForSuccEmail]     BIGINT        IDENTITY (60403, 1) NOT NULL,
    [projectId]              BIGINT        DEFAULT ((0)) NOT NULL,
    [subject]                VARCHAR (250) DEFAULT (N'') NOT NULL,
    [greeting]               VARCHAR (250) DEFAULT (N'') NOT NULL,
    [idSuggForSuccSignature] BIGINT        DEFAULT ((0)) NOT NULL,
    [comment]                VARCHAR (MAX) NOT NULL,
    [datew]                  DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]                  TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_suggforsuccemail_idSuggForSuccEmail] PRIMARY KEY CLUSTERED ([idSuggForSuccEmail] ASC)
);


GO
CREATE NONCLUSTERED INDEX [SuggForSuccEmail_i03]
    ON [dbo].[suggforsuccemail]([idSuggForSuccSignature] ASC);


GO
ALTER INDEX [SuggForSuccEmail_i03]
    ON [dbo].[suggforsuccemail] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SuggForSuccEmail_i02]
    ON [dbo].[suggforsuccemail]([datew] ASC);


GO
ALTER INDEX [SuggForSuccEmail_i02]
    ON [dbo].[suggforsuccemail] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SuggForSuccEmail_i01]
    ON [dbo].[suggforsuccemail]([projectId] ASC);


GO
ALTER INDEX [SuggForSuccEmail_i01]
    ON [dbo].[suggforsuccemail] DISABLE;

