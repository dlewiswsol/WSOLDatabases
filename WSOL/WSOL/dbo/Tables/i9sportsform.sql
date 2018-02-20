CREATE TABLE [dbo].[i9sportsform] (
    [id]                  BIGINT         IDENTITY (110, 1) NOT NULL,
    [contFirstName]       NVARCHAR (250) NOT NULL,
    [contLastName]        NVARCHAR (250) NOT NULL,
    [contPhoneNum]        NCHAR (10)     NOT NULL,
    [contEmailAddr]       NVARCHAR (250) NOT NULL,
    [phoneNumPort]        NCHAR (10)     NOT NULL,
    [location]            NVARCHAR (250) NOT NULL,
    [customAfterhoursFwd] NVARCHAR (3)   NOT NULL,
    [phoneBillFile]       NVARCHAR (250) NOT NULL,
    [signedLoaFile]       NVARCHAR (250) NOT NULL,
    [created]             DATETIME2 (0)  NOT NULL,
    CONSTRAINT [PK_i9sportsform_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [i9sportsform$i9SportsFormi01] UNIQUE NONCLUSTERED ([phoneNumPort] ASC, [contEmailAddr] ASC)
);

