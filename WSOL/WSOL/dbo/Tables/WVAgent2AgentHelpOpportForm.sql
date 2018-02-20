CREATE TABLE [dbo].[WVAgent2AgentHelpOpportForm] (
    [feedbackId]           BIGINT         IDENTITY (100000, 1) NOT NULL,
    [idapplicantSubmitter] BIGINT         NOT NULL,
    [idapplicantReceiver]  BIGINT         NOT NULL,
    [caseNumber]           VARCHAR (100)  NOT NULL,
    [id]                   VARCHAR (100)  NOT NULL,
    [errorTypeId]          BIGINT         NOT NULL,
    [callTypeId]           BIGINT         NOT NULL,
    [financiallyImpacting] BIT            DEFAULT ((0)) NOT NULL,
    [description]          VARCHAR (1500) NOT NULL,
    [datew]                DATETIME2 (7)  DEFAULT (sysdatetime()) NOT NULL,
    [reviewed]             BIT            DEFAULT ((0)) NOT NULL,
    [reviewedDate]         DATETIME2 (7)  NULL,
    PRIMARY KEY CLUSTERED ([feedbackId] ASC),
    FOREIGN KEY ([callTypeId]) REFERENCES [dbo].[WVAgent2AgentHelpOpportCallType] ([id]),
    FOREIGN KEY ([errorTypeId]) REFERENCES [dbo].[WVAgent2AgentHelpOpportErrType] ([id])
);


GO
CREATE NONCLUSTERED INDEX [WVAgent2AgentHelpOpportForm_i2]
    ON [dbo].[WVAgent2AgentHelpOpportForm]([idapplicantReceiver] ASC, [datew] DESC);


GO
CREATE NONCLUSTERED INDEX [WVAgent2AgentHelpOpportForm_i1]
    ON [dbo].[WVAgent2AgentHelpOpportForm]([datew] DESC);

