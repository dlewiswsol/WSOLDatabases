CREATE TABLE [smallforms].[voiceemerilrmorder] (
    [id]         BIGINT        IDENTITY (9, 1) NOT NULL,
    [callGUID]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [firstName]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [middleName] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastName]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [email]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [agentid]    VARCHAR (100) DEFAULT (N'') NOT NULL,
    [timesub]    TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [datesub]    DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [filetime]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [filedate]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [filename]   VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_voiceemerilrmorder_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [voiceemerilrmorder$vind1] UNIQUE NONCLUSTERED ([callGUID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [vind3]
    ON [smallforms].[voiceemerilrmorder]([agentid] ASC, [datesub] ASC);


GO
CREATE NONCLUSTERED INDEX [vind2]
    ON [smallforms].[voiceemerilrmorder]([datesub] ASC);

