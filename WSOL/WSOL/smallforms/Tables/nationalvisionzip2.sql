CREATE TABLE [smallforms].[nationalvisionzip2] (
    [id]       BIGINT        IDENTITY (48, 1) NOT NULL,
    [fileName] VARCHAR (255) NOT NULL,
    [created]  DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_nationalvisionzip2_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NationalVisionZip2i01]
    ON [smallforms].[nationalvisionzip2]([fileName] ASC);

