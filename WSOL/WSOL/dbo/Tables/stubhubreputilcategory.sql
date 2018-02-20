CREATE TABLE [dbo].[stubhubreputilcategory] (
    [id]      BIGINT        IDENTITY (6, 1) NOT NULL,
    [name]    VARCHAR (200) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_stubhubreputilcategory_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

