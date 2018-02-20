CREATE TABLE [dbo].[commonacl] (
    [idCommonACL]       BIGINT        IDENTITY (199, 1) NOT NULL,
    [idagent]           BIGINT        DEFAULT ((0)) NOT NULL,
    [admin]             CHAR (1)      DEFAULT (N'N') NOT NULL,
    [invoiceNetwork]    CHAR (1)      DEFAULT (N'N') NOT NULL,
    [schedulerTeamLead] CHAR (1)      DEFAULT (N'N') NOT NULL,
    [qualityControl]    CHAR (1)      DEFAULT (N'N') NOT NULL,
    [sMMAuditForm]      CHAR (1)      DEFAULT (N'N') NOT NULL,
    [locked]            CHAR (1)      DEFAULT (N'N') NOT NULL,
    [qaagent]           CHAR (1)      DEFAULT (N'N') NOT NULL,
    [arpKudosForm]      CHAR (1)      DEFAULT (N'N') NOT NULL,
    [qualitySpec]       CHAR (1)      DEFAULT (N'N') NOT NULL,
    [datew]             DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_commonacl_idCommonACL] PRIMARY KEY CLUSTERED ([idCommonACL] ASC),
    CONSTRAINT [commonacl$idagent] UNIQUE NONCLUSTERED ([idagent] ASC)
);

