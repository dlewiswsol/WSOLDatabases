CREATE TABLE [dbo].[stubhubreputilqueue] (
    [id]      BIGINT        IDENTITY (6, 1) NOT NULL,
    [name]    VARCHAR (100) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_stubhubreputilqueue_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

