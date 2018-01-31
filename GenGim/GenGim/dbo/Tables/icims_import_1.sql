﻿CREATE TABLE [dbo].[icims_import] (
    [id]            BIGINT        NOT NULL,
    [PSystemID]     VARCHAR (250) NOT NULL,
    [PExternalID]   VARCHAR (250) NOT NULL,
    [JSystemID]     VARCHAR (250) NOT NULL,
    [JExternalID]   VARCHAR (250) NOT NULL,
    [ClientName]    VARCHAR (250) NOT NULL,
    [FirstName]     VARCHAR (250) NOT NULL,
    [MiddleName]    VARCHAR (250) NOT NULL,
    [LastName]      VARCHAR (250) NOT NULL,
    [Email]         VARCHAR (250) NOT NULL,
    [Number]        VARCHAR (250) NOT NULL,
    [Title]         VARCHAR (250) NOT NULL,
    [DateSubmitted] VARCHAR (250) NOT NULL,
    [Source]        VARCHAR (250) NOT NULL,
    [SourceChannel] VARCHAR (250) NOT NULL,
    [Address]       VARCHAR (250) NOT NULL,
    [Address2]      VARCHAR (250) NOT NULL,
    [City]          VARCHAR (250) NOT NULL,
    [State]         VARCHAR (250) NOT NULL,
    [PostalCode]    VARCHAR (250) NOT NULL,
    [Country]       VARCHAR (250) NOT NULL,
    [Status]        VARCHAR (250) NOT NULL,
    [Bin]           VARCHAR (250) NOT NULL,
    [WorkflowID]    VARCHAR (250) NOT NULL,
    [CreatedDate]   VARCHAR (250) NOT NULL,
    [UpdatedDate]   VARCHAR (250) NOT NULL,
    [applicant_id]  BIGINT        NOT NULL,
    [created]       DATETIME2 (0) NOT NULL
);

