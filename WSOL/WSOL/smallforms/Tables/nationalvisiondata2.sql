CREATE TABLE [smallforms].[nationalvisiondata2] (
    [id]                BIGINT        IDENTITY (1273230, 1) NOT NULL,
    [refNo]             VARCHAR (255) NOT NULL,
    [survey]            VARCHAR (255) NOT NULL,
    [weekEnd]           VARCHAR (255) NOT NULL,
    [firstName]         VARCHAR (255) NOT NULL,
    [lastName]          VARCHAR (255) NOT NULL,
    [phone]             VARCHAR (255) NOT NULL,
    [cell]              VARCHAR (255) NOT NULL,
    [entEnglish]        VARCHAR (255) NOT NULL,
    [callStatus]        VARCHAR (255) NOT NULL,
    [callCmpl]          VARCHAR (255) NOT NULL,
    [callDure]          VARCHAR (255) NOT NULL,
    [direction]         VARCHAR (255) NOT NULL,
    [callDate]          VARCHAR (255) NOT NULL,
    [callTime]          VARCHAR (255) NOT NULL,
    [question1]         VARCHAR (255) NOT NULL,
    [question2]         VARCHAR (255) NOT NULL,
    [question2T]        VARCHAR (255) NOT NULL,
    [question3]         VARCHAR (255) NOT NULL,
    [language]          VARCHAR (255) NOT NULL,
    [localStoreNumber]  VARCHAR (255) NOT NULL,
    [custSupportNumber] VARCHAR (255) NOT NULL,
    [comments]          VARCHAR (MAX) NOT NULL,
    [status]            VARCHAR (11)  NOT NULL,
    [agentid]           VARCHAR (100) DEFAULT (N'') NOT NULL,
    [statusNew]         DATETIME2 (0) NOT NULL,
    [statusTranscribed] DATETIME2 (0) NOT NULL,
    [statusReportSent]  DATETIME2 (0) NOT NULL,
    [lastupd]           DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_nationalvisiondata2_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NationalVisionData2i03]
    ON [smallforms].[nationalvisiondata2]([statusNew] ASC);


GO
CREATE NONCLUSTERED INDEX [NationalVisionData2i02]
    ON [smallforms].[nationalvisiondata2]([lastupd] ASC);


GO
CREATE NONCLUSTERED INDEX [NationalVisionData2i01]
    ON [smallforms].[nationalvisiondata2]([status] ASC, [language] ASC, [lastupd] ASC);

