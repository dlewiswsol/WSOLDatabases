CREATE TABLE [smallforms].[vermoncelldata] (
    [id]           BIGINT        IDENTITY (13, 1) NOT NULL,
    [mobnumber1]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [mobnumber2]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [mobnumber3]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [mobnumber4]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [mobnumber5]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [mobnumber6]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [secondnumber] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ep]           VARCHAR (250) DEFAULT (NULL) NULL,
    [ra]           VARCHAR (250) DEFAULT (NULL) NULL,
    [brochure]     CHAR (1)      DEFAULT (N'0') NOT NULL,
    [agent]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]        DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]        TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_vermoncelldata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [vermoncelli1]
    ON [smallforms].[vermoncelldata]([datew] ASC);

