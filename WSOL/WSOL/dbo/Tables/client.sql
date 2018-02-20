CREATE TABLE [dbo].[client] (
    [ID]            NUMERIC (20)     IDENTITY (160, 1) NOT NULL,
    [name]          VARCHAR (250)    NOT NULL,
    [VISIBLE]       CHAR (1)         NULL,
    [ROWID]         UNIQUEIDENTIFIER NOT NULL,
    [datecr]        DATETIME2 (0)    NOT NULL,
    [active]        VARCHAR (3)      NOT NULL,
    [arpKudos]      VARCHAR (3)      NULL,
    [jobCostNumber] VARCHAR (100)    NOT NULL,
    CONSTRAINT [PK_client_id1] PRIMARY KEY CLUSTERED ([ID] ASC)
);



GO
