CREATE TABLE [dbo].[sabrevantguestrelcalllogdata] (
    [id]                                    BIGINT        IDENTITY (1243, 1) NOT NULL,
    [custName]                              VARCHAR (100) NOT NULL,
    [custConfNum]                           VARCHAR (100) NOT NULL,
    [custPhone]                             CHAR (10)     NOT NULL,
    [callType]                              VARCHAR (8)   NOT NULL,
    [SabreVantGuestRelCallLogOutbReason_id] BIGINT        NOT NULL,
    [SabreVantGuestRelCallLogReason_id]     BIGINT        NOT NULL,
    [comments]                              VARCHAR (MAX) NOT NULL,
    [valueClubCardSignUpe]                  VARCHAR (3)   NOT NULL,
    [issueResolution]                       VARCHAR (11)  NOT NULL,
    [agents_id]                             BIGINT        NOT NULL,
    [datew]                                 DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_sabrevantguestrelcalllogdata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [SabreVantGuestRelCallLogDataI05]
    ON [dbo].[sabrevantguestrelcalllogdata]([SabreVantGuestRelCallLogOutbReason_id] ASC);


GO
ALTER INDEX [SabreVantGuestRelCallLogDataI05]
    ON [dbo].[sabrevantguestrelcalllogdata] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SabreVantGuestRelCallLogDataI04]
    ON [dbo].[sabrevantguestrelcalllogdata]([agents_id] ASC);


GO
ALTER INDEX [SabreVantGuestRelCallLogDataI04]
    ON [dbo].[sabrevantguestrelcalllogdata] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SabreVantGuestRelCallLogDataI03]
    ON [dbo].[sabrevantguestrelcalllogdata]([SabreVantGuestRelCallLogReason_id] ASC);


GO
ALTER INDEX [SabreVantGuestRelCallLogDataI03]
    ON [dbo].[sabrevantguestrelcalllogdata] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SabreVantGuestRelCallLogDataI02]
    ON [dbo].[sabrevantguestrelcalllogdata]([custName] ASC);


GO
ALTER INDEX [SabreVantGuestRelCallLogDataI02]
    ON [dbo].[sabrevantguestrelcalllogdata] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SabreVantGuestRelCallLogDataI01]
    ON [dbo].[sabrevantguestrelcalllogdata]([datew] ASC);


GO
ALTER INDEX [SabreVantGuestRelCallLogDataI01]
    ON [dbo].[sabrevantguestrelcalllogdata] DISABLE;

