CREATE TABLE [smallforms].[formother] (
    [id]          BIGINT        IDENTITY (28, 1) NOT NULL,
    [firlastname] VARCHAR (MAX) NOT NULL,
    [specialty]   VARCHAR (MAX) NOT NULL,
    [whatmeet]    VARCHAR (MAX) NOT NULL,
    [fdate]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ftime]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comment]     VARCHAR (MAX) NOT NULL,
    [agentname]   VARCHAR (100) DEFAULT (N'') NOT NULL,
    [timew]       TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    [datew]       DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_formother_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

