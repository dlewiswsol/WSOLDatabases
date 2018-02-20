CREATE TABLE [dbo].[ts1trainername] (
    [idts1trainername] BIGINT   IDENTITY (92, 1) NOT NULL,
    [idagent]          BIGINT   DEFAULT ((0)) NOT NULL,
    [isvisible]        CHAR (1) DEFAULT (N'Y') NOT NULL,
    CONSTRAINT [PK_ts1trainername_idts1trainername] PRIMARY KEY CLUSTERED ([idts1trainername] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ts1trainernamei01]
    ON [dbo].[ts1trainername]([idagent] ASC);


GO
ALTER INDEX [ts1trainernamei01]
    ON [dbo].[ts1trainername] DISABLE;

