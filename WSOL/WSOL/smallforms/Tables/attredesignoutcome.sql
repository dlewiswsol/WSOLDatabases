CREATE TABLE [smallforms].[attredesignoutcome] (
    [idOutcome] BIGINT        NOT NULL,
    [name]      VARCHAR (250) NOT NULL,
    [visible]   SMALLINT      NOT NULL,
    CONSTRAINT [PK_attredesignoutcome_idOutcome] PRIMARY KEY CLUSTERED ([idOutcome] ASC)
);

