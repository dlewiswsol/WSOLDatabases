CREATE TABLE [smallforms].[ntelosoeenrollment] (
    [idnTelosOEEnrollment]            BIGINT         IDENTITY (908, 1) NOT NULL,
    [firstName]                       VARCHAR (100)  NOT NULL,
    [lastName]                        VARCHAR (100)  NOT NULL,
    [wirelessNumber]                  CHAR (10)      NOT NULL,
    [address]                         VARCHAR (1000) NOT NULL,
    [idnTelosOEEnrollmentFeatureCode] BIGINT         NOT NULL,
    [agentName]                       VARCHAR (250)  NOT NULL,
    [datew]                           DATE           NOT NULL,
    [timew]                           TIME (7)       NOT NULL,
    CONSTRAINT [PK_ntelosoeenrollment_idnTelosOEEnrollment] PRIMARY KEY CLUSTERED ([idnTelosOEEnrollment] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nTelosOEEnrollmenti01]
    ON [smallforms].[ntelosoeenrollment]([datew] ASC);

