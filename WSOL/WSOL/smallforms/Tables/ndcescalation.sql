CREATE TABLE [smallforms].[ndcescalation] (
    [id]          BIGINT        IDENTITY (828, 1) NOT NULL,
    [contactname] VARCHAR (MAX) NOT NULL,
    [custaccnum]  VARCHAR (MAX) NOT NULL,
    [phone1]      VARCHAR (MAX) NOT NULL,
    [phone2]      VARCHAR (MAX) NOT NULL,
    [officehours] VARCHAR (MAX) NOT NULL,
    [besttimecb]  VARCHAR (MAX) NOT NULL,
    [custagree]   VARCHAR (MAX) NOT NULL,
    [prodbrand]   VARCHAR (MAX) NOT NULL,
    [progtype]    VARCHAR (MAX) NOT NULL,
    [cbneed]      VARCHAR (MAX) NOT NULL,
    [sitdet]      VARCHAR (MAX) NOT NULL,
    [causeesc]    VARCHAR (MAX) NOT NULL,
    [emplname]    VARCHAR (MAX) NOT NULL,
    [datew]       DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]       TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_ndcescalation_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

