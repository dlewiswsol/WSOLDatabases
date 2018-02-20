CREATE TABLE [dbo].[safnetdesignator] (
    [id]      BIGINT        IDENTITY (4, 1) NOT NULL,
    [name]    VARCHAR (100) NOT NULL,
    [visible] VARCHAR (3)   NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_safnetdesignator_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

