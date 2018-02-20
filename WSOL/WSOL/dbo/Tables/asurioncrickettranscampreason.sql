CREATE TABLE [dbo].[asurioncrickettranscampreason] (
    [id]      BIGINT        IDENTITY (7, 1) NOT NULL,
    [name]    VARCHAR (500) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_asurioncrickettranscampreason_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

