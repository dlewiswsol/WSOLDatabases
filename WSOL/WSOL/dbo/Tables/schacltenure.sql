CREATE TABLE [dbo].[schacltenure] (
    [idschaclTenure] BIGINT   IDENTITY (749023, 1) NOT NULL,
    [idagent]        BIGINT   DEFAULT ((0)) NOT NULL,
    [idprog]         BIGINT   DEFAULT ((0)) NOT NULL,
    [startDate]      DATE     DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [startTime]      TIME (7) DEFAULT ('00:00:00') NOT NULL,
    [stopDate]       DATE     DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [stopTime]       TIME (7) DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_schacltenure_idschaclTenure] PRIMARY KEY CLUSTERED ([idschaclTenure] ASC),
    CONSTRAINT [schacltenure$schaclTenure_i01] UNIQUE NONCLUSTERED ([idagent] ASC, [idprog] ASC, [stopDate] ASC, [stopTime] ASC)
);


GO
CREATE NONCLUSTERED INDEX [stopDateI]
    ON [dbo].[schacltenure]([stopDate] ASC);


GO
ALTER INDEX [stopDateI]
    ON [dbo].[schacltenure] DISABLE;


GO
CREATE NONCLUSTERED INDEX [startDateI]
    ON [dbo].[schacltenure]([startDate] ASC);


GO
ALTER INDEX [startDateI]
    ON [dbo].[schacltenure] DISABLE;


GO
CREATE NONCLUSTERED INDEX [schaclTenure_i02]
    ON [dbo].[schacltenure]([idprog] ASC, [stopDate] ASC);


GO
ALTER INDEX [schaclTenure_i02]
    ON [dbo].[schacltenure] DISABLE;

