CREATE TABLE [smallforms].[ofotoemailformcredits] (
    [id]        BIGINT        IDENTITY (382, 1) NOT NULL,
    [fname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [email]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ordernum]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [creditfor] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [whyneeded] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [nextsteps] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_ofotoemailformcredits_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

