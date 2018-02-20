﻿CREATE TABLE [smallforms].[nationalvisionhrdata] (
    [id]                  BIGINT        IDENTITY (75003, 1) NOT NULL,
    [lastName]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [firstName]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [homePhone]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [alternPhoneType]     VARCHAR (255) DEFAULT (N'') NOT NULL,
    [alternPhoneNum]      VARCHAR (255) DEFAULT (N'') NOT NULL,
    [assocId]             VARCHAR (255) DEFAULT (N'') NOT NULL,
    [workLocationState]   VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callStatus]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callCmpl]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callDura]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [direction]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callDate]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [callTime]            VARCHAR (255) DEFAULT (N'') NOT NULL,
    [question1]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [question2]           VARCHAR (255) DEFAULT (N'') NOT NULL,
    [question2T]          VARCHAR (255) DEFAULT (N'') NOT NULL,
    [optOut]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [comments]            VARCHAR (MAX) NOT NULL,
    [status]              VARCHAR (13)  DEFAULT (N'New') NOT NULL,
    [agentid]             VARCHAR (100) DEFAULT (N'') NOT NULL,
    [statusNew]           DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusCannotPreload] DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusPreloaded]     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusTranscribed]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [statusReportSent]    DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [lastupd]             DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_nationalvisionhrdata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NationalVisionHRDatai01]
    ON [smallforms].[nationalvisionhrdata]([status] ASC, [lastupd] ASC);

