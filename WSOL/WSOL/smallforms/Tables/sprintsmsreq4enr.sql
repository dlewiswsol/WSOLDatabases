CREATE TABLE [smallforms].[sprintsmsreq4enr] (
    [idSprintSMSReq4Enr]           BIGINT        IDENTITY (26621, 1) NOT NULL,
    [firstName]                    VARCHAR (100) DEFAULT (N'') NOT NULL,
    [lastName]                     VARCHAR (100) DEFAULT (N'') NOT NULL,
    [mobilePhoneNumber]            VARCHAR (10)  DEFAULT (N'') NOT NULL,
    [contactNumber]                VARCHAR (100) DEFAULT (N'') NOT NULL,
    [deviceModel]                  VARCHAR (40)  DEFAULT (N'') NOT NULL,
    [idSprintSMSReq4EnrTypeOfCall] BIGINT        DEFAULT ((0)) NOT NULL,
    [idSprintSMSReq4EnrProgram]    BIGINT        DEFAULT ((1)) NOT NULL,
    [idNoEnrollment]               BIGINT        DEFAULT ((1)) NOT NULL,
    [agentName]                    VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datew]                        DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_sprintsmsreq4enr_idSprintSMSReq4Enr] PRIMARY KEY CLUSTERED ([idSprintSMSReq4Enr] ASC)
);

