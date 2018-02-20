CREATE TABLE [dbo].[ts1datanew] (
    [idts1data]   BIGINT        IDENTITY (1735, 1) NOT NULL,
    [projectname] VARCHAR (250) NOT NULL,
    [idtrainer]   BIGINT        NOT NULL,
    [query1]      BIGINT        NOT NULL,
    [query2]      BIGINT        NOT NULL,
    [query3]      BIGINT        NOT NULL,
    [query4]      BIGINT        NOT NULL,
    [query5]      BIGINT        NOT NULL,
    [query6]      BIGINT        NOT NULL,
    [query7]      BIGINT        NOT NULL,
    [query8]      BIGINT        NOT NULL,
    [query9]      BIGINT        NOT NULL,
    [query10]     VARCHAR (MAX) NOT NULL,
    [query11]     VARCHAR (MAX) NOT NULL,
    [query12]     VARCHAR (MAX) NOT NULL,
    [query13]     VARCHAR (MAX) NOT NULL,
    [datew]       DATE          NOT NULL,
    [timew]       TIME (7)      NOT NULL,
    CONSTRAINT [PK_ts1datanew_idts1data] PRIMARY KEY CLUSTERED ([idts1data] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ts1datai02]
    ON [dbo].[ts1datanew]([datew] ASC);


GO
ALTER INDEX [ts1datai02]
    ON [dbo].[ts1datanew] DISABLE;


GO
CREATE NONCLUSTERED INDEX [ts1datai01]
    ON [dbo].[ts1datanew]([idtrainer] ASC);


GO
ALTER INDEX [ts1datai01]
    ON [dbo].[ts1datanew] DISABLE;

