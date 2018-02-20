CREATE TABLE [dbo].[inetautoinvxmlfile] (
    [idINetAutoInvXMLFile] BIGINT        IDENTITY (1694, 1) NOT NULL,
    [filename]             VARCHAR (600) NOT NULL,
    [datew]                DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_inetautoinvxmlfile_idINetAutoInvXMLFile] PRIMARY KEY CLUSTERED ([idINetAutoInvXMLFile] ASC),
    CONSTRAINT [inetautoinvxmlfile$INetAutoInvXMLFilei01] UNIQUE NONCLUSTERED ([filename] ASC)
);

