CREATE TABLE [dbo].[paidnew] (
    [id]        BIGINT          IDENTITY (188947, 1) NOT NULL,
    [idagent]   BIGINT          NOT NULL,
    [idclient]  BIGINT          NOT NULL,
    [idpaytype] BIGINT          NOT NULL,
    [payrate]   DECIMAL (11, 4) NOT NULL,
    [sumval]    DECIMAL (12, 2) NOT NULL,
    [summa]     DECIMAL (12, 2) NOT NULL,
    [notesid]   BIGINT          NOT NULL,
    [datew]     DATE            NOT NULL,
    [timew]     TIME (7)        NOT NULL,
    [idprogram] BIGINT          NOT NULL,
    CONSTRAINT [PK_paidnew_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

