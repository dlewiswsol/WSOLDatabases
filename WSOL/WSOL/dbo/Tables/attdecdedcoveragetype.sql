﻿CREATE TABLE [dbo].[attdecdedcoveragetype] (
    [id]      BIGINT        IDENTITY (5, 1) NOT NULL,
    [name]    VARCHAR (200) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [created] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_attdecdedcoveragetype_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

