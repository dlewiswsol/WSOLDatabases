CREATE TABLE [dbo].[program] (
    [id]                        BIGINT          IDENTITY (3046, 1) NOT NULL,
    [name]                      VARCHAR (250)   DEFAULT (N'') NOT NULL,
    [idclient]                  BIGINT          DEFAULT ((0)) NOT NULL,
    [idpaytype]                 BIGINT          DEFAULT ((0)) NOT NULL,
    [idlinebus]                 BIGINT          DEFAULT ((0)) NOT NULL,
    [idinvoiceCategory]         BIGINT          DEFAULT ((1)) NOT NULL,
    [isshow]                    CHAR (1)        DEFAULT (N'') NOT NULL,
    [isshowlb]                  CHAR (1)        DEFAULT (N'') NOT NULL,
    [payrate]                   DECIMAL (11, 4) DEFAULT ((0.0000)) NOT NULL,
    [tabindex]                  BIGINT          DEFAULT ((0)) NOT NULL,
    [datecr]                    DATETIME2 (0)   DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [dbid]                      BIGINT          DEFAULT ((0)) NOT NULL,
    [idPrimaryProjectManager]   BIGINT          DEFAULT ((0)) NOT NULL,
    [idSecondaryProjectManager] BIGINT          DEFAULT ((0)) NOT NULL,
    [screenlabel]               VARCHAR (250)   DEFAULT (N'') NOT NULL,
    [htmllink]                  VARCHAR (250)   DEFAULT (N'') NOT NULL,
    [countercode]               VARCHAR (250)   DEFAULT (N'') NOT NULL,
    [idprodarea]                INT             DEFAULT ((0)) NOT NULL,
    [counter]                   VARCHAR (100)   DEFAULT (N'') NOT NULL,
    [isshowOnInvoiceForm]       CHAR (1)        DEFAULT (N'1') NOT NULL,
    [allowPassedProjCancel]     CHAR (1)        DEFAULT (N'0') NOT NULL,
    [link2ControlAclID]         BIGINT          DEFAULT ((0)) NOT NULL,
    [idInvoiceFormMembership]   BIGINT          DEFAULT ((1)) NOT NULL,
    [isRecruitmentHeader]       VARCHAR (3)     DEFAULT (N'No') NOT NULL,
    [linkToCats]                BIGINT          DEFAULT ((0)) NOT NULL,
    [idMergeReportMapping]      BIGINT          DEFAULT ((2)) NOT NULL,
    [ideWFMUsageType]           BIGINT          DEFAULT ((1)) NOT NULL,
    [isPats4OngoingEduc]        VARCHAR (3)     DEFAULT (N'No') NOT NULL,
    CONSTRAINT [PK_program_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [program$programi03] UNIQUE NONCLUSTERED ([name] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_program_C05724BCCB723BECEA2EBBE3C40C0720]
    ON [dbo].[program]([isshow] ASC, [idclient] ASC)
    INCLUDE([idlinebus], [name], [tabindex]);


GO
CREATE NONCLUSTERED INDEX [programi08]
    ON [dbo].[program]([isPats4OngoingEduc] ASC);


GO
ALTER INDEX [programi08]
    ON [dbo].[program] DISABLE;


GO
CREATE NONCLUSTERED INDEX [programi07]
    ON [dbo].[program]([idclient] ASC, [name] ASC);


GO
ALTER INDEX [programi07]
    ON [dbo].[program] DISABLE;


GO
CREATE NONCLUSTERED INDEX [programi06]
    ON [dbo].[program]([link2ControlAclID] ASC, [idInvoiceFormMembership] ASC);


GO
ALTER INDEX [programi06]
    ON [dbo].[program] DISABLE;


GO
CREATE NONCLUSTERED INDEX [programi02]
    ON [dbo].[program]([idSecondaryProjectManager] ASC);


GO
ALTER INDEX [programi02]
    ON [dbo].[program] DISABLE;


GO
CREATE NONCLUSTERED INDEX [programi01]
    ON [dbo].[program]([idPrimaryProjectManager] ASC);


GO
ALTER INDEX [programi01]
    ON [dbo].[program] DISABLE;


GO
CREATE NONCLUSTERED INDEX [program_i05]
    ON [dbo].[program]([idlinebus] ASC, [isshow] ASC);


GO
ALTER INDEX [program_i05]
    ON [dbo].[program] DISABLE;


GO
CREATE NONCLUSTERED INDEX [countercodeind]
    ON [dbo].[program]([countercode] ASC);


GO
ALTER INDEX [countercodeind]
    ON [dbo].[program] DISABLE;


GO
CREATE NONCLUSTERED INDEX [aiz2]
    ON [dbo].[program]([dbid] ASC);


GO
ALTER INDEX [aiz2]
    ON [dbo].[program] DISABLE;

