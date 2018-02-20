CREATE TABLE [dbo].[inetautoinvdataupdatestatus] (
    [idINetAutoInvDataUpdateStatus] BIGINT        IDENTITY (76092, 1) NOT NULL,
    [idINetAutoInv]                 BIGINT        NOT NULL,
    [idAgent]                       BIGINT        NOT NULL,
    [agentName]                     VARCHAR (200) NOT NULL,
    [idProject]                     BIGINT        NOT NULL,
    [projectName]                   VARCHAR (200) NOT NULL,
    [datew]                         DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_inetautoinvdataupdatestatus_idINetAutoInvDataUpdateStatus] PRIMARY KEY CLUSTERED ([idINetAutoInvDataUpdateStatus] ASC)
);

