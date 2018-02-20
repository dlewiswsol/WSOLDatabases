CREATE TABLE [smallforms].[verizonwirelesstradeincalltype] (
    [idVerizonWirelessTradeInCallType] BIGINT        IDENTITY (22142, 1) NOT NULL,
    [idchoice]                         BIGINT        DEFAULT ((0)) NOT NULL,
    [submissionID]                     VARCHAR (255) DEFAULT (N'') NOT NULL,
    [submittersFirstName]              VARCHAR (255) DEFAULT (N'') NOT NULL,
    [submittersLastName]               VARCHAR (255) DEFAULT (N'') NOT NULL,
    [emailAddress]                     VARCHAR (255) DEFAULT (N'') NOT NULL,
    [idagent]                          BIGINT        DEFAULT ((0)) NOT NULL,
    [comment]                          VARCHAR (MAX) NOT NULL,
    [datew]                            DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_verizonwirelesstradeincalltype_idVerizonWirelessTradeInCallType] PRIMARY KEY CLUSTERED ([idVerizonWirelessTradeInCallType] ASC)
);


GO
CREATE NONCLUSTERED INDEX [VerizonWirelessTradeInCallTypei]
    ON [smallforms].[verizonwirelesstradeincalltype]([datew] ASC);

