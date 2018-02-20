CREATE TABLE [dbo].[paidsecondnew] (
    [id]        BIGINT          IDENTITY (161222, 1) NOT NULL,
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
    CONSTRAINT [PK_paidsecondnew_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [paidsecondNewi3]
    ON [dbo].[paidsecondnew]([idprogram] ASC, [datew] ASC);


GO
ALTER INDEX [paidsecondNewi3]
    ON [dbo].[paidsecondnew] DISABLE;


GO
CREATE NONCLUSTERED INDEX [paidsecondNewi2]
    ON [dbo].[paidsecondnew]([idprogram] ASC);


GO
ALTER INDEX [paidsecondNewi2]
    ON [dbo].[paidsecondnew] DISABLE;

