CREATE TABLE [dbo].[ts1projectname] (
    [idts1ProjectName] BIGINT        IDENTITY (46, 1) NOT NULL,
    [name]             VARCHAR (100) DEFAULT (N'') NOT NULL,
    [isvisible]        CHAR (1)      DEFAULT (N'Y') NOT NULL,
    CONSTRAINT [PK_ts1projectname_idts1ProjectName] PRIMARY KEY CLUSTERED ([idts1ProjectName] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ts1ProjectNamei01]
    ON [dbo].[ts1projectname]([name] ASC);


GO
ALTER INDEX [ts1ProjectNamei01]
    ON [dbo].[ts1projectname] DISABLE;

