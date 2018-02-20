CREATE TABLE [smallforms].[asuriondatavc] (
    [id]         BIGINT        IDENTITY (371085, 1) NOT NULL,
    [source]     VARCHAR (46)  DEFAULT (NULL) NULL,
    [custname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [areacode]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [prefix]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [fnum]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [zip]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [onlyiPhone] VARCHAR (3)   DEFAULT (N'') NOT NULL,
    [cancreas]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comments]   VARCHAR (MAX) NOT NULL,
    [agent]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]      DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [lastname] VARCHAR(250) NULL, 
    CONSTRAINT [PK_asuriondatavc_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [asuriondatavc2]
    ON [smallforms].[asuriondatavc]([datew] ASC);

