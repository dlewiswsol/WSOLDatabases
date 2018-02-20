CREATE TABLE [dbo].[clientbusiness] (
    [idclientbusiness] BIGINT        IDENTITY (194, 1) NOT NULL,
    [idclient]         BIGINT        DEFAULT ((0)) NOT NULL,
    [idlineofbus]      BIGINT        DEFAULT ((0)) NOT NULL,
    [datew]            DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_clientbusiness_idclientbusiness] PRIMARY KEY CLUSTERED ([idclientbusiness] ASC)
);


GO
CREATE NONCLUSTERED INDEX [clientbusinessi2]
    ON [dbo].[clientbusiness]([idlineofbus] ASC);


GO
CREATE NONCLUSTERED INDEX [clientbusinessi1]
    ON [dbo].[clientbusiness]([idclient] ASC);

