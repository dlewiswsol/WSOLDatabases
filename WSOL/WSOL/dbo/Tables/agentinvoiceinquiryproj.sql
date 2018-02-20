CREATE TABLE [dbo].[agentinvoiceinquiryproj] (
    [idAgentInvoiceInquiryProj] BIGINT        IDENTITY (67, 1) NOT NULL,
    [projectName]               VARCHAR (250) DEFAULT (N'') NOT NULL,
    [visible]                   CHAR (1)      DEFAULT (N'') NOT NULL,
    [datew]                     DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]                     TIME (7)      DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_agentinvoiceinquiryproj_idAgentInvoiceInquiryProj] PRIMARY KEY CLUSTERED ([idAgentInvoiceInquiryProj] ASC)
);

