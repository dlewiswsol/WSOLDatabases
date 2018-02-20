CREATE TABLE [smallforms].[productpartners] (
    [id]            BIGINT        IDENTITY (1815, 1) NOT NULL,
    [YourEcID]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [CustName]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ZipCode]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [Phonenumber]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [CustNumber]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [CallBNum]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ReqAction]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ccnumber]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [BankRouting]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [AccountNumber] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ExpDate]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [PPlan]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [ShipMC]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [AmountRC]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [SpecNotes]     VARCHAR (MAX) NOT NULL,
    [Agent]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]         DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]         TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_productpartners_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

