CREATE TABLE [dbo].[sprinttepchurncancelreason] (
    [id]      BIGINT        IDENTITY (10, 1) NOT NULL,
    [name]    VARCHAR (200) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_sprinttepchurncancelreason_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

