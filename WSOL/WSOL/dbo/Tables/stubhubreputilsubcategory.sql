CREATE TABLE [dbo].[stubhubreputilsubcategory] (
    [id]                        BIGINT        IDENTITY (33, 1) NOT NULL,
    [StubHubRepUtilCategory_id] BIGINT        NOT NULL,
    [name]                      VARCHAR (200) NOT NULL,
    [visible]                   SMALLINT      NOT NULL,
    [created]                   DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_stubhubreputilsubcategory_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_StubHubRepUtilSubCategory_StubHubRepUtilCategory1]
    ON [dbo].[stubhubreputilsubcategory]([StubHubRepUtilCategory_id] ASC);


GO
ALTER INDEX [fk_StubHubRepUtilSubCategory_StubHubRepUtilCategory1]
    ON [dbo].[stubhubreputilsubcategory] DISABLE;

