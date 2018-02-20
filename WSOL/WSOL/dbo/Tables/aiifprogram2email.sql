CREATE TABLE [dbo].[aiifprogram2email] (
    [aiifProgram_id] BIGINT        NOT NULL,
    [toList]         VARCHAR (MAX) NOT NULL,
    [ccList]         VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_aiifprogram2email_aiifProgram_id] PRIMARY KEY CLUSTERED ([aiifProgram_id] ASC),
    CONSTRAINT [aiifprogram2email$aiifProgram_id_UNIQUE] UNIQUE NONCLUSTERED ([aiifProgram_id] ASC)
);

