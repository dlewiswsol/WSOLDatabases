CREATE TABLE [smallforms].[attredesignstate] (
    [idState] CHAR (2)      NOT NULL,
    [name]    VARCHAR (250) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    CONSTRAINT [PK_attredesignstate_idState] PRIMARY KEY CLUSTERED ([idState] ASC)
);

