CREATE TABLE [smallforms].[voiceemerilrmcatalog] (
    [id]         BIGINT        IDENTITY (219, 1) NOT NULL,
    [callGUID]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [firstName]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [middleName] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastName]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [address1]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [address2]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [email]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [agentid]    VARCHAR (100) DEFAULT (N'') NOT NULL,
    [timesub]    TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [datesub]    DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [filetime]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [filedate]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [filename]   VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_voiceemerilrmcatalog_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [voiceemerilrmcatalog$vind1] UNIQUE NONCLUSTERED ([callGUID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [vind3]
    ON [smallforms].[voiceemerilrmcatalog]([agentid] ASC, [datesub] ASC);


GO
CREATE NONCLUSTERED INDEX [vind2]
    ON [smallforms].[voiceemerilrmcatalog]([datesub] ASC);

