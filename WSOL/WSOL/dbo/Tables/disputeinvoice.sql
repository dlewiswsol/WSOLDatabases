CREATE TABLE [dbo].[disputeinvoice] (
    [idsubm]                 BIGINT        NOT NULL,
    [agentComment]           VARCHAR (MAX) NOT NULL,
    [managerId]              BIGINT        NOT NULL,
    [managerComment]         VARCHAR (MAX) NOT NULL,
    [managerDatew]           DATETIME2 (0) NOT NULL,
    [status]                 VARCHAR (8)   NOT NULL,
    [internalManagerComment] VARCHAR (MAX) NOT NULL,
    [valueOld]               VARCHAR (30)  DEFAULT (N'') NOT NULL,
    [valueNew]               VARCHAR (30)  DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_disputeinvoice_idsubm] PRIMARY KEY CLUSTERED ([idsubm] ASC)
);

