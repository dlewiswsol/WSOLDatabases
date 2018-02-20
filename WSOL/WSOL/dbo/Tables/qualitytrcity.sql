﻿CREATE TABLE [dbo].[qualitytrcity] (
    [idqualitytrcity] BIGINT IDENTITY (992, 1) NOT NULL,
    [idqualityscores] BIGINT DEFAULT ((0)) NOT NULL,
    [idreason]        BIGINT DEFAULT ((0)) NOT NULL,
    [idprogram]       BIGINT DEFAULT ((0)) NOT NULL,
    [idmonitor]       BIGINT DEFAULT ((0)) NOT NULL,
    [f11]             INT    DEFAULT (NULL) NULL,
    [f12]             INT    DEFAULT (NULL) NULL,
    [f13]             INT    DEFAULT (NULL) NULL,
    [f14]             INT    DEFAULT (NULL) NULL,
    [f15]             INT    DEFAULT (NULL) NULL,
    [f21]             INT    DEFAULT (NULL) NULL,
    [f22]             INT    DEFAULT (NULL) NULL,
    [f23]             INT    DEFAULT (NULL) NULL,
    [f24]             INT    DEFAULT (NULL) NULL,
    [f25]             INT    DEFAULT (NULL) NULL,
    [f31]             INT    DEFAULT (NULL) NULL,
    [f32]             INT    DEFAULT (NULL) NULL,
    [f41]             INT    DEFAULT (NULL) NULL,
    [f42]             INT    DEFAULT (NULL) NULL,
    [f43]             INT    DEFAULT (NULL) NULL,
    [f44]             INT    DEFAULT (NULL) NULL,
    [f45]             INT    DEFAULT (NULL) NULL,
    [f51]             INT    DEFAULT (NULL) NULL,
    [f52]             INT    DEFAULT (NULL) NULL,
    [idqualityqaq10]  BIGINT DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_qualitytrcity_idqualitytrcity] PRIMARY KEY CLUSTERED ([idqualitytrcity] ASC)
);

