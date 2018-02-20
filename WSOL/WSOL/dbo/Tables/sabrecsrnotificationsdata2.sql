CREATE TABLE [dbo].[sabrecsrnotificationsdata2] (
    [id]                            BIGINT        IDENTITY (17254, 1) NOT NULL,
    [custName]                      VARCHAR (100) NOT NULL,
    [custConfNum]                   VARCHAR (100) NOT NULL,
    [custPhone]                     CHAR (10)     NOT NULL,
    [custEmail]                     VARCHAR (100) NOT NULL,
    [SabreCsrNotificationsHotel_id] BIGINT        NOT NULL,
    [description]                   VARCHAR (MAX) NOT NULL,
    [agents_id]                     BIGINT        NOT NULL,
    [datew]                         DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_sabrecsrnotificationsdata2_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [SabreCsrNotificationsDataI04]
    ON [dbo].[sabrecsrnotificationsdata2]([agents_id] ASC);


GO
ALTER INDEX [SabreCsrNotificationsDataI04]
    ON [dbo].[sabrecsrnotificationsdata2] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SabreCsrNotificationsDataI03]
    ON [dbo].[sabrecsrnotificationsdata2]([SabreCsrNotificationsHotel_id] ASC);


GO
ALTER INDEX [SabreCsrNotificationsDataI03]
    ON [dbo].[sabrecsrnotificationsdata2] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SabreCsrNotificationsDataI02]
    ON [dbo].[sabrecsrnotificationsdata2]([custName] ASC);


GO
ALTER INDEX [SabreCsrNotificationsDataI02]
    ON [dbo].[sabrecsrnotificationsdata2] DISABLE;


GO
CREATE NONCLUSTERED INDEX [SabreCsrNotificationsDataI01]
    ON [dbo].[sabrecsrnotificationsdata2]([datew] ASC);


GO
ALTER INDEX [SabreCsrNotificationsDataI01]
    ON [dbo].[sabrecsrnotificationsdata2] DISABLE;

