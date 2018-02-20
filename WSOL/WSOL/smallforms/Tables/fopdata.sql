CREATE TABLE [smallforms].[fopdata] (
    [id]         BIGINT        IDENTITY (121, 1) NOT NULL,
    [dob_month]  CHAR (2)      DEFAULT (N'') NOT NULL,
    [dob_day]    CHAR (2)      DEFAULT (N'') NOT NULL,
    [dob_year]   VARCHAR (4)   DEFAULT (N'') NOT NULL,
    [fname]      VARCHAR (100) DEFAULT (N'') NOT NULL,
    [lname]      VARCHAR (100) DEFAULT (N'') NOT NULL,
    [addr1]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [addr2]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]      VARCHAR (20)  DEFAULT (N'') NOT NULL,
    [zip]        VARCHAR (20)  DEFAULT (N'') NOT NULL,
    [areacode]   VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phone]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comm]       VARCHAR (MAX) NOT NULL,
    [datesub]    DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [agentname]  VARCHAR (250) DEFAULT (N'') NOT NULL,
    [fld_zipext] VARCHAR (4)   DEFAULT (N'') NOT NULL,
    [birdate]    DATE          DEFAULT (NULL) NULL,
    CONSTRAINT [PK_fopdata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

