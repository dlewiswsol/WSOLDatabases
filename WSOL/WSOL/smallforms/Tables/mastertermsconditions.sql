CREATE TABLE [smallforms].[mastertermsconditions] (
    [idmasterTermsConditions] BIGINT        IDENTITY (2037, 1) NOT NULL,
    [customerName]            VARCHAR (250) DEFAULT (N'') NOT NULL,
    [address1]                VARCHAR (250) DEFAULT (N'') NOT NULL,
    [address2]                VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]                    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [idstate]                 CHAR (2)      DEFAULT (N'') NOT NULL,
    [zip]                     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [idstatebillrec]          CHAR (2)      DEFAULT (N'') NOT NULL,
    [wirelessnum]             VARCHAR (250) DEFAULT (N'') NOT NULL,
    [contractnum]             VARCHAR (250) DEFAULT (N'') NOT NULL,
    [client]                  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [documrec]                VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]                   DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]                   TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_mastertermsconditions_idmasterTermsConditions] PRIMARY KEY CLUSTERED ([idmasterTermsConditions] ASC)
);


GO
CREATE NONCLUSTERED INDEX [masterTermsConditionsi01]
    ON [smallforms].[mastertermsconditions]([datew] ASC);

