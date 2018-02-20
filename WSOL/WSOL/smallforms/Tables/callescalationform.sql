CREATE TABLE [smallforms].[callescalationform] (
    [id]           BIGINT        IDENTITY (142, 1) NOT NULL,
    [CustName]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [GroupNum]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [Address]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [City]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [State]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [Zip]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [PhoneNum]     VARCHAR (250) DEFAULT (N'') NOT NULL,
    [SocialSecNum] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [EscalReas]    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [comm]         VARCHAR (MAX) NOT NULL,
    [Agent]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]        DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]        TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_callescalationform_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

