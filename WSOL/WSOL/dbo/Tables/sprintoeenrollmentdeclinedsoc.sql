CREATE TABLE [dbo].[sprintoeenrollmentdeclinedsoc] (
    [id]      BIGINT        IDENTITY (5, 1) NOT NULL,
    [name]    VARCHAR (100) NOT NULL,
    [visible] SMALLINT      NOT NULL,
    CONSTRAINT [PK_sprintoeenrollmentdeclinedsoc_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

