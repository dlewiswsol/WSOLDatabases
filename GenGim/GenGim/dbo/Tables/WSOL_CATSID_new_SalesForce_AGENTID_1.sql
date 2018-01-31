CREATE TABLE [dbo].[WSOL_CATSID_new_SalesForce_AGENTID] (
    [SalesforceID]            NTEXT         COLLATE Latin1_General_CS_AS NULL,
    [CatsID]                  INT           NOT NULL,
    [FirstName]               VARCHAR (250) NOT NULL,
    [MiddleName]              VARCHAR (250) NOT NULL,
    [LastName]                VARCHAR (250) NOT NULL,
    [VirtualTalentStatusCode] VARCHAR (50)  NOT NULL
);

