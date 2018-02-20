CREATE TABLE [smallforms].[tmobilecancelationform] (
    [id]                 BIGINT        IDENTITY (60721, 1) NOT NULL,
    [custname]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [areacode]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [prefix]             VARCHAR (250) DEFAULT (N'') NOT NULL,
    [fnum]               VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]               VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]              VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]                VARCHAR (250) DEFAULT (N'') NOT NULL,
    [cancreas]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comments]           VARCHAR (MAX) NOT NULL,
    [agent]              VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]              DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [changesToInsurance] VARCHAR (47)  DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_tmobilecancelationform_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [TMobileCancelationFormi2]
    ON [smallforms].[tmobilecancelationform]([areacode] ASC, [prefix] ASC, [fnum] ASC);


GO
CREATE NONCLUSTERED INDEX [TMobileCancelationFormi1]
    ON [smallforms].[tmobilecancelationform]([datew] ASC);

