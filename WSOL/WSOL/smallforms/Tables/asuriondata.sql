CREATE TABLE [smallforms].[asuriondata] (
    [id]           BIGINT        IDENTITY (267959, 1) NOT NULL,
    [mobnumber]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comments]     VARCHAR (MAX) NOT NULL,
    [agent]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]        DATE          DEFAULT ([dbo].[GETDATE]()) NULL,
    [timew]        TIME (7)      DEFAULT ('00:00:00') NULL,
    [q1]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [q2]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [q3]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [q4]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [q5]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ep]           VARCHAR (250) DEFAULT (NULL) NULL,
    [ra]           VARCHAR (250) DEFAULT (NULL) NULL,
    [nrc]          CHAR (1)      DEFAULT (N'0') NOT NULL,
    [brochure]     CHAR (1)      DEFAULT (N'0') NOT NULL,
    [secondnumber] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [nrcline]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ineis]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_asuriondata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [asuriondata3]
    ON [smallforms].[asuriondata]([secondnumber] ASC);


GO
CREATE NONCLUSTERED INDEX [asuriondata2]
    ON [smallforms].[asuriondata]([mobnumber] ASC);


GO
CREATE NONCLUSTERED INDEX [asuriondata1]
    ON [smallforms].[asuriondata]([datew] ASC);

