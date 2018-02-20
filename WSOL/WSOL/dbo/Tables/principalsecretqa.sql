﻿CREATE TABLE [dbo].[principalsecretqa] (
    [idPrincipalSecretQA] BIGINT        IDENTITY (10, 1) NOT NULL,
    [idagent]             BIGINT        DEFAULT ((0)) NOT NULL,
    [idproject]           BIGINT        DEFAULT ((0)) NOT NULL,
    [idmonitname]         BIGINT        DEFAULT ((0)) NOT NULL,
    [other]               VARCHAR (250) DEFAULT (N'') NOT NULL,
    [sessionID]           VARCHAR (250) DEFAULT (N'') NOT NULL,
    [dateTime]            DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [s1_f01]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s1_f01Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s1_f02]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s1_f02Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s1_f03]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s1_f03Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s1_f04]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s1_f04Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s1_f05]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s1_f05Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s1_f06]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s1_f06Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s1_f07]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s1_f07Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s2_f08]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s2_f08Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s2_f09]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s2_f09Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s2_f10]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s2_f10Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s2_f11]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s2_f11Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s2_f12]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s2_f12Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s2_f13a]             TINYINT       DEFAULT ((0)) NOT NULL,
    [s2_f13aText]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s2_f13b]             TINYINT       DEFAULT ((0)) NOT NULL,
    [s2_f13bText]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s2_f13c]             TINYINT       DEFAULT ((0)) NOT NULL,
    [s2_f13cText]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s2_f13d]             TINYINT       DEFAULT ((0)) NOT NULL,
    [s2_f13dText]         VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s3_f14]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s3_f14Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s3_f15]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s3_f15Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s3_f16]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s3_f16Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s3_f17]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s3_f17Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s3_f18]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s3_f18Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s3_f19]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s3_f19Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s3_f20]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s3_f20Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s3_f21]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s3_f21Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [s3_f22]              TINYINT       DEFAULT ((0)) NOT NULL,
    [s3_f22Text]          VARCHAR (250) DEFAULT (N'') NOT NULL,
    [score]               BIGINT        DEFAULT ((0)) NOT NULL,
    [idqualityqaq10]      BIGINT        DEFAULT ((0)) NOT NULL,
    [addcomm]             VARCHAR (MAX) NOT NULL,
    [idqualitysrcform]    BIGINT        DEFAULT ((0)) NOT NULL,
    [datew]               DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]               TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_principalsecretqa_idPrincipalSecretQA] PRIMARY KEY CLUSTERED ([idPrincipalSecretQA] ASC)
);


GO
CREATE NONCLUSTERED INDEX [PrincipalSecretQAi01]
    ON [dbo].[principalsecretqa]([datew] ASC);


GO
ALTER INDEX [PrincipalSecretQAi01]
    ON [dbo].[principalsecretqa] DISABLE;

