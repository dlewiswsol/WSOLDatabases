CREATE TABLE [dbo].[agents] (
    [id]            BIGINT        IDENTITY (10693, 1) NOT NULL,
    [login]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [pwd]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [fname]         VARCHAR (100) DEFAULT (N'') NOT NULL,
    [lname]         VARCHAR (100) DEFAULT (N'') NOT NULL,
    [email]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [remadr]        VARCHAR (250) DEFAULT (N'') NOT NULL,
    [city]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [state]         CHAR (2)      DEFAULT (N'') NOT NULL,
    [zip]           VARCHAR (10)  DEFAULT (N'') NOT NULL,
    [datecr]        DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [newsletter]    CHAR (1)      DEFAULT (N'0') NOT NULL,
    [phonenum]      VARCHAR (250) DEFAULT (N'') NOT NULL,
    [aimname]       VARCHAR (250) DEFAULT (N'') NOT NULL,
    [isteamled]     CHAR (1)      DEFAULT (N'0') NOT NULL,
    [agentid]       VARCHAR (100) DEFAULT (N'') NOT NULL,
    [isw9]          CHAR (1)      DEFAULT (N'0') NOT NULL,
    [iscorporateW9] CHAR (1)      DEFAULT (N'0') NOT NULL,
    [is90days]      CHAR (1)      DEFAULT (N'0') NOT NULL,
    [onleave]       CHAR (1)      DEFAULT (N'N') NOT NULL,
    [realfname]     VARCHAR (100) DEFAULT (N'') NOT NULL,
    [reallname]     VARCHAR (100) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_agents_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [realfli01]
    ON [dbo].[agents]([realfname] ASC, [reallname] ASC);


GO
CREATE NONCLUSTERED INDEX [infirlas]
    ON [dbo].[agents]([fname] ASC, [lname] ASC);


GO
CREATE NONCLUSTERED INDEX [iemail001]
    ON [dbo].[agents]([email] ASC);


GO
CREATE NONCLUSTERED INDEX [i1login]
    ON [dbo].[agents]([login] ASC);


GO
CREATE NONCLUSTERED INDEX [agents_i09]
    ON [dbo].[agents]([isteamled] ASC);


GO
CREATE NONCLUSTERED INDEX [agents_i08]
    ON [dbo].[agents]([login] ASC, [pwd] ASC);


GO
CREATE NONCLUSTERED INDEX [agentid]
    ON [dbo].[agents]([agentid] ASC);

