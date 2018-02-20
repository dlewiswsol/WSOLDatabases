CREATE TABLE [dbo].[prodarea] (
    [id]   BIGINT        IDENTITY (6, 1) NOT NULL,
    [name] VARCHAR (100) DEFAULT (NULL) NULL,
    CONSTRAINT [PK_prodarea_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

