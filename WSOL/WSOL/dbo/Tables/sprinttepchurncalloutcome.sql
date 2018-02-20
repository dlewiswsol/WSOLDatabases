CREATE TABLE [dbo].[sprinttepchurncalloutcome] (
    [id]      BIGINT        IDENTITY (9, 1) NOT NULL,
    [name]    VARCHAR (200) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_sprinttepchurncalloutcome_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

