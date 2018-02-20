CREATE TABLE [smallforms].[chaseprivatelabel_voice] (
    [id]         BIGINT        IDENTITY (606, 1) NOT NULL,
    [fileid]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comment]    VARCHAR (MAX) NOT NULL,
    [agentid]    VARCHAR (50)  DEFAULT (N'') NOT NULL,
    [timesub]    TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [datesub]    DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [filetime]   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [filedate]   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [filename]   VARCHAR (MAX) NOT NULL,
    [ftpaccpunt] VARCHAR (250) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_chaseprivatelabel_voice_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [vind3]
    ON [smallforms].[chaseprivatelabel_voice]([agentid] ASC, [datesub] ASC);


GO
CREATE NONCLUSTERED INDEX [vind2]
    ON [smallforms].[chaseprivatelabel_voice]([datesub] ASC);

