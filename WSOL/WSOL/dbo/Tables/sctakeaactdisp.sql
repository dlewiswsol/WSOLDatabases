CREATE TABLE [dbo].[sctakeaactdisp] (
    [idscTakeAactDisp] BIGINT        IDENTITY (19, 1) NOT NULL,
    [name]             VARCHAR (250) DEFAULT (N'') NOT NULL,
    [isvisible]        CHAR (1)      DEFAULT (N'Y') NOT NULL,
    CONSTRAINT [PK_sctakeaactdisp_idscTakeAactDisp] PRIMARY KEY CLUSTERED ([idscTakeAactDisp] ASC)
);

