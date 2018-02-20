CREATE TABLE [smallforms].[sprintredesigncancelform] (
    [id]            BIGINT        IDENTITY (15998, 1) NOT NULL,
    [firstName]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastName]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [cellPhone]     VARCHAR (10)  DEFAULT (N'') NOT NULL,
    [letterCode]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [reason4Cancel] VARCHAR (30)  DEFAULT (NULL) NULL,
    [comments]      VARCHAR (MAX) NOT NULL,
    [agent]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]         DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [mdn]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [programType]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [deviceModel]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [contactNum]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [termsAndCond]  SMALLINT      DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_sprintredesigncancelform_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [SprintRedesignCancelFormi1]
    ON [smallforms].[sprintredesigncancelform]([datew] ASC);

