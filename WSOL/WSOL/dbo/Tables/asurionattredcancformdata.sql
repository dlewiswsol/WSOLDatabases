CREATE TABLE [dbo].[asurionattredcancformdata] (
    [id]           BIGINT        IDENTITY (1019, 1) NOT NULL,
    [mobileNumber] VARCHAR (10)  NOT NULL,
    [agents_id]    BIGINT        NOT NULL,
    [created]      DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_asurionattredcancformdata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [createdDate_i1]
    ON [dbo].[asurionattredcancformdata]([created] ASC);

