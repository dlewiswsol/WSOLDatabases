CREATE TABLE [dbo].[schswap] (
    [id]       BIGINT        DEFAULT ((0)) NOT NULL,
    [idmaster] BIGINT        DEFAULT ((0)) NOT NULL,
    [idslave]  BIGINT        DEFAULT ((0)) NOT NULL,
    [dateins]  DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL
);

