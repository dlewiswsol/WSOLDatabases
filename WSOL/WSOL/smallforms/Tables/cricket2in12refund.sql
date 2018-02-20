CREATE TABLE [smallforms].[cricket2in12refund] (
    [idcricket2in12refund] BIGINT        IDENTITY (3620, 1) NOT NULL,
    [username]             VARCHAR (250) DEFAULT (N'') NOT NULL,
    [wirelessnum]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recMailAddress]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recMailCity]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recMailState]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recMailZip]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recRefAddress]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recRefCity]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recRefState]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [recRefZip]            VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]                DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]                TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_cricket2in12refund_idcricket2in12refund] PRIMARY KEY CLUSTERED ([idcricket2in12refund] ASC)
);


GO
CREATE NONCLUSTERED INDEX [cricket2in12refundi01]
    ON [smallforms].[cricket2in12refund]([datew] ASC);

