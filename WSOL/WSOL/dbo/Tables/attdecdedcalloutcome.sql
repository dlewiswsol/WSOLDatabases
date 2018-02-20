CREATE TABLE [dbo].[attdecdedcalloutcome] (
    [id]      BIGINT        IDENTITY (8, 1) NOT NULL,
    [name]    VARCHAR (200) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_attdecdedcalloutcome_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

