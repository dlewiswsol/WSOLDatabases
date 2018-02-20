﻿CREATE TABLE [smallforms].[renewalform] (
    [id]          BIGINT        IDENTITY (137, 1) NOT NULL,
    [firstname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastname]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [networkid]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [networkidpw] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [networkfun]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [aopsid]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [aopsfun]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [vikjmun]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [vikjmpw]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [vikjmfun]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [varsun]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [varspw]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [varsfun]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [bsdvkfun]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [bsdvkfpw]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [bsdvkffun]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [aimname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [email]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]       DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]       TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_renewalform_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

