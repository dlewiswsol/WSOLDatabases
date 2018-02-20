CREATE TABLE [dbo].[WVAgent2AgentHelpOpportErrType] (
    [id]        BIGINT        IDENTITY (1, 1) NOT NULL,
    [val]       VARCHAR (500) NOT NULL,
    [available] BIT           DEFAULT ((1)) NOT NULL,
    [created]   DATETIME2 (7) DEFAULT (sysdatetime()) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

