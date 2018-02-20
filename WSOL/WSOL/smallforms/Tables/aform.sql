CREATE TABLE [smallforms].[aform] (
    [id]       BIGINT        IDENTITY (36, 1) NOT NULL,
    [phone]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [patname]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [patid]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comments] VARCHAR (MAX) NOT NULL,
    [datew]    DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]    TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_aform_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

