CREATE TABLE [dbo].[attwueentryformcustreq] (
    [id]      BIGINT        IDENTITY (4, 1) NOT NULL,
    [name]    VARCHAR (100) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    CONSTRAINT [PK_attwueentryformcustreq_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

