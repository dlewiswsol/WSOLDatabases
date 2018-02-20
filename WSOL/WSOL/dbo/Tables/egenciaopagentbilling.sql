CREATE TABLE [dbo].[egenciaopagentbilling] (
    [id]                    BIGINT          IDENTITY (1152266, 1) NOT NULL,
    [EgenciaOPIncomFile_id] BIGINT          NOT NULL,
    [loginId]               VARCHAR (500)   NOT NULL,
    [dateFld]               DATE            NOT NULL,
    [cmsGroup]              VARCHAR (500)   NOT NULL,
    [intervalPst]           TIME (7)        NOT NULL,
    [staffedTime]           DECIMAL (14, 2) NOT NULL,
    [availTime]             DECIMAL (14, 2) NOT NULL,
    [acdTime]               DECIMAL (14, 2) NOT NULL,
    [acwTime]               DECIMAL (14, 2) NOT NULL,
    [holdTime]              DECIMAL (14, 2) NOT NULL,
    [agentRingTime]         DECIMAL (14, 2) NOT NULL,
    [auxTime]               DECIMAL (14, 2) NOT NULL,
    [aux0]                  DECIMAL (14, 2) NOT NULL,
    [breakFld]              DECIMAL (14, 2) NOT NULL,
    [oneOnOneCoaching]      DECIMAL (14, 2) NOT NULL,
    [meeting]               DECIMAL (14, 2) NOT NULL,
    [project]               DECIMAL (14, 2) NOT NULL,
    [trainingEge]           DECIMAL (14, 2) NOT NULL,
    [outbound]              DECIMAL (14, 2) NOT NULL,
    [email]                 DECIMAL (14, 2) NOT NULL,
    [qaQueueWork]           DECIMAL (14, 2) NOT NULL,
    [systemDown]            DECIMAL (14, 2) NOT NULL,
    [exchangeDesk]          DECIMAL (14, 2) NOT NULL,
    [discretionaryTime]     DECIMAL (14, 2) NOT NULL,
    [siteTraining]          DECIMAL (14, 2) NOT NULL,
    [created]               DATETIME2 (0)   NOT NULL,
    [dateCdtConv]           DATETIME2 (0)   NOT NULL,
    [cprodR1]               DECIMAL (15, 3) NOT NULL,
    [cprodRRqv]             DECIMAL (15, 3) NOT NULL,
    [cprodS1]               DECIMAL (15, 3) NOT NULL,
    [cprodSRqv]             DECIMAL (15, 3) NOT NULL,
    [aimR]                  DECIMAL (15, 3) NOT NULL,
    [aimS]                  DECIMAL (15, 3) NOT NULL,
    CONSTRAINT [PK_egenciaopagentbilling_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_egenciaopagentbilling_857FF958AD590D21D2EA7CD2052E6D96]
    ON [dbo].[egenciaopagentbilling]([dateCdtConv] ASC)
    INCLUDE([acdTime], [acwTime], [aux0], [availTime], [email], [exchangeDesk], [holdTime], [loginId], [meeting], [outbound], [project]);


GO
CREATE NONCLUSTERED INDEX [nci_wi_egenciaopagentbilling_86944C58754E5242B641DED90A46FD61]
    ON [dbo].[egenciaopagentbilling]([loginId] ASC, [staffedTime] ASC)
    INCLUDE([dateFld]);


GO
CREATE NONCLUSTERED INDEX [nci_wi_egenciaopagentbilling_21311000FE32C5381B41D531B3FEBA52]
    ON [dbo].[egenciaopagentbilling]([loginId] ASC, [dateCdtConv] ASC)
    INCLUDE([acdTime], [acwTime], [aux0], [availTime], [email], [exchangeDesk], [holdTime], [outbound], [project]);


GO
CREATE NONCLUSTERED INDEX [nci_wi_egenciaopagentbilling_2F05BFB9D5E6E26A98F22B20997580B6]
    ON [dbo].[egenciaopagentbilling]([EgenciaOPIncomFile_id] ASC)
    INCLUDE([dateFld]);


GO
CREATE NONCLUSTERED INDEX [fk_EgenciaOPAgentBilling_EgenciaOPIncomFile1_idx]
    ON [dbo].[egenciaopagentbilling]([EgenciaOPIncomFile_id] ASC);


GO
ALTER INDEX [fk_EgenciaOPAgentBilling_EgenciaOPIncomFile1_idx]
    ON [dbo].[egenciaopagentbilling] DISABLE;


GO
CREATE NONCLUSTERED INDEX [AgentBilling_idx1]
    ON [dbo].[egenciaopagentbilling]([loginId] ASC);


GO
ALTER INDEX [AgentBilling_idx1]
    ON [dbo].[egenciaopagentbilling] DISABLE;

