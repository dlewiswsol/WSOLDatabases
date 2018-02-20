CREATE TABLE [smallforms].[ofotoemailformcloning] (
    [id]        BIGINT        IDENTITY (648, 1) NOT NULL,
    [fname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [email]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [clonenum]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ordertype] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_ofotoemailformcloning_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

