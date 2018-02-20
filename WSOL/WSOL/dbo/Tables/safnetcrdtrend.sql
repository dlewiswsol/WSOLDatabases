CREATE TABLE [dbo].[safnetcrdtrend] (
    [id]      BIGINT        IDENTITY (12, 1) NOT NULL,
    [name]    VARCHAR (100) NOT NULL,
    [visible] VARCHAR (3)   NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_safnetcrdtrend_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

