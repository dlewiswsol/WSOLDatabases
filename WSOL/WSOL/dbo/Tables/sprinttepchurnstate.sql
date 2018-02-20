CREATE TABLE [dbo].[sprinttepchurnstate] (
    [id]      CHAR (2)      NOT NULL,
    [name]    VARCHAR (200) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    CONSTRAINT [PK_sprinttepchurnstate_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

