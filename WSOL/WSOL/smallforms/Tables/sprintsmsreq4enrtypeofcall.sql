CREATE TABLE [smallforms].[sprintsmsreq4enrtypeofcall] (
    [idSprintSMSReq4EnrTypeOfCall] BIGINT        DEFAULT ((0)) NOT NULL,
    [visible]                      VARCHAR (100) DEFAULT (N'') NOT NULL,
    [name]                         VARCHAR (100) DEFAULT (N'') NOT NULL,
    [datew]                        DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_sprintsmsreq4enrtypeofcall_idSprintSMSReq4EnrTypeOfCall] PRIMARY KEY CLUSTERED ([idSprintSMSReq4EnrTypeOfCall] ASC)
);

