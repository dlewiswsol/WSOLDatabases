CREATE TABLE [smallforms].[tmobileredesignitems] (
    [id]       BIGINT        IDENTITY (22, 1) NOT NULL,
    [itemName] VARCHAR (255) NOT NULL,
    [visible]  SMALLINT      NOT NULL,
    [datew]    DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_tmobileredesignitems_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [TMobileRedesignItemsi01]
    ON [smallforms].[tmobileredesignitems]([itemName] ASC);

