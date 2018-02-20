CREATE TABLE [smallforms].[ntelosoeenrollmentfeaturecode] (
    [idnTelosOEEnrollmentFeatureCode] BIGINT        NOT NULL,
    [visible]                         VARCHAR (100) NOT NULL,
    [name]                            VARCHAR (100) NOT NULL,
    [datew]                           DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_ntelosoeenrollmentfeaturecode_idnTelosOEEnrollmentFeatureCode] PRIMARY KEY CLUSTERED ([idnTelosOEEnrollmentFeatureCode] ASC)
);

