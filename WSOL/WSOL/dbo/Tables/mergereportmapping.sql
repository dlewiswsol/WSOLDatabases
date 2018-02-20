CREATE TABLE [dbo].[mergereportmapping] (
    [id]      BIGINT        NOT NULL,
    [name]    VARCHAR (200) NOT NULL,
    [visible] VARCHAR (3)   NOT NULL,
    CONSTRAINT [PK_mergereportmapping_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

