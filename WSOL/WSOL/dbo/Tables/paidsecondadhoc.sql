CREATE TABLE [dbo].[paidsecondadhoc] (
    [id]        BIGINT          DEFAULT ((0)) NOT NULL,
    [idagent]   BIGINT          DEFAULT ((0)) NOT NULL,
    [idclient]  BIGINT          DEFAULT ((0)) NOT NULL,
    [idpaytype] BIGINT          DEFAULT ((0)) NOT NULL,
    [payrate]   DECIMAL (11, 4) DEFAULT ((0.0000)) NOT NULL,
    [sumval]    DECIMAL (12, 2) DEFAULT ((0.00)) NOT NULL,
    [summa]     DECIMAL (12, 2) DEFAULT ((0.00)) NOT NULL,
    [notesid]   BIGINT          DEFAULT ((0)) NOT NULL,
    [datew]     DATE            DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]     TIME (7)        DEFAULT ('00:00:00') NOT NULL,
    [idprog]    INT             DEFAULT ((0)) NOT NULL
);

