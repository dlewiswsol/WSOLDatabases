CREATE TABLE [smallforms].[redcrossdata] (
    [id]           BIGINT        IDENTITY (370, 1) NOT NULL,
    [firstname]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [lastname]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [w9name]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [contactemail] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [phonenum]     VARCHAR (10)  DEFAULT (N'') NOT NULL,
    [day0]         CHAR (1)      DEFAULT (N'') NOT NULL,
    [day1]         CHAR (1)      DEFAULT (N'') NOT NULL,
    [day2]         CHAR (1)      DEFAULT (N'') NOT NULL,
    [day3]         CHAR (1)      DEFAULT (N'') NOT NULL,
    [day4]         CHAR (1)      DEFAULT (N'') NOT NULL,
    [day5]         CHAR (1)      DEFAULT (N'') NOT NULL,
    [day6]         CHAR (1)      DEFAULT (N'') NOT NULL,
    [usedaod]      CHAR (1)      DEFAULT (N'') NOT NULL,
    [fbicb]        CHAR (1)      DEFAULT (N'') NOT NULL,
    [datew]        DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]        TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_redcrossdata_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

