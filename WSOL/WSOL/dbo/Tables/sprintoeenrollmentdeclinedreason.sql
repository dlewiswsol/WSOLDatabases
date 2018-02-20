CREATE TABLE [dbo].[sprintoeenrollmentdeclinedreason] (
    [id]      BIGINT        IDENTITY (8, 1) NOT NULL,
    [name]    VARCHAR (500) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    [datew]   DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_sprintoeenrollmentdeclinedreason_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

