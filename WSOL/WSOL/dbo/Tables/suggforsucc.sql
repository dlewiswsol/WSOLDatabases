CREATE TABLE [dbo].[suggforsucc] (
    [idSuggForSucc]      BIGINT IDENTITY (96669, 1) NOT NULL,
    [agentId]            BIGINT DEFAULT ((0)) NOT NULL,
    [idSuggForSuccEmail] BIGINT DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_suggforsucc_idSuggForSucc] PRIMARY KEY CLUSTERED ([idSuggForSucc] ASC)
);


GO
CREATE NONCLUSTERED INDEX [SuggForSucc_i02]
    ON [dbo].[suggforsucc]([idSuggForSuccEmail] ASC);


GO
ALTER INDEX [SuggForSucc_i02]
    ON [dbo].[suggforsucc] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SuggForSucc_i01]
    ON [dbo].[suggforsucc]([agentId] ASC);


GO
ALTER INDEX [SuggForSucc_i01]
    ON [dbo].[suggforsucc] DISABLE;

