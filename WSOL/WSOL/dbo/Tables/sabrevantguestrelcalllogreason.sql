CREATE TABLE [dbo].[sabrevantguestrelcalllogreason] (
    [id]      BIGINT        IDENTITY (17, 1) NOT NULL,
    [name]    VARCHAR (250) NOT NULL,
    [visible] VARCHAR (3)   DEFAULT (N'Yes') NOT NULL,
    [datew]   DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_sabrevantguestrelcalllogreason_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_SabreVantGuestRelCallLogReason_1]
    ON [dbo].[sabrevantguestrelcalllogreason]([name] ASC);


GO
ALTER INDEX [fk_SabreVantGuestRelCallLogReason_1]
    ON [dbo].[sabrevantguestrelcalllogreason] DISABLE;

