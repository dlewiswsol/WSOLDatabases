CREATE TABLE [dbo].[qualitysrcform] (
    [idqualitysrcform] BIGINT        IDENTITY (120, 1) NOT NULL,
    [formname]         VARCHAR (200) DEFAULT (NULL) NULL,
    [datew]            DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]            TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_qualitysrcform_idqualitysrcform] PRIMARY KEY CLUSTERED ([idqualitysrcform] ASC)
);

