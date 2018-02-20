CREATE TABLE [smallforms].[phonetest] (
    [id]          BIGINT        IDENTITY (685, 1) NOT NULL,
    [numberdial]  VARCHAR (10)  DEFAULT (N'') NOT NULL,
    [callresult]  CHAR (1)      DEFAULT (N's') NOT NULL,
    [unsucreason] VARCHAR (MAX) NOT NULL,
    [datew]       DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]       TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_phonetest_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

