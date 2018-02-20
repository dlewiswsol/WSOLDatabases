CREATE TABLE [dbo].[sabrevantguestrelcalllogoutbreason] (
    [id]      BIGINT        IDENTITY (5, 1) NOT NULL,
    [name]    VARCHAR (250) NOT NULL,
    [visible] VARCHAR (3)   DEFAULT (N'Yes') NOT NULL,
    [datew]   DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_sabrevantguestrelcalllogoutbreason_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_SabreVantGuestRelCallLogOutbReason_1]
    ON [dbo].[sabrevantguestrelcalllogoutbreason]([name] ASC);


GO
ALTER INDEX [fk_SabreVantGuestRelCallLogOutbReason_1]
    ON [dbo].[sabrevantguestrelcalllogoutbreason] DISABLE;

