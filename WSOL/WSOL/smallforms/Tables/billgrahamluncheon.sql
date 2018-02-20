CREATE TABLE [smallforms].[billgrahamluncheon] (
    [id]          BIGINT        IDENTITY (2000, 1) NOT NULL,
    [CONTACTNAME] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [COMPANYNAME] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [FAX_NUMBER]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [PHONE]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [attlunch]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [attdate]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [attfax]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [attemail]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [attcomments] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [dateinser]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [lasttouch]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [datesaved]   DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NULL,
    [status]      CHAR (1)      DEFAULT (NULL) NULL,
    [agentname]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_billgrahamluncheon_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

