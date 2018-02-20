CREATE TABLE [dbo].[agentinvoiceinquiryprojman] (
    [idAgentInvoiceInquiryProjMan] BIGINT   IDENTITY (69, 1) NOT NULL,
    [agent_id]                     BIGINT   DEFAULT ((0)) NOT NULL,
    [visible]                      CHAR (1) DEFAULT (N'') NOT NULL,
    [datew]                        DATE     DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [timew]                        TIME (7) DEFAULT ('00:00:00') NOT NULL,
    CONSTRAINT [PK_agentinvoiceinquiryprojman_idAgentInvoiceInquiryProjMan] PRIMARY KEY CLUSTERED ([idAgentInvoiceInquiryProjMan] ASC)
);

