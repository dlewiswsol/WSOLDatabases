CREATE TABLE [dbo].[safnetpnrresponsecode] (
    [id]      BIGINT        NOT NULL,
    [name]    VARCHAR (200) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_safnetpnrresponsecode_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

