CREATE TABLE [smallforms].[nationalvisionwav2] (
    [id]                    BIGINT        IDENTITY (82072, 1) NOT NULL,
    [fileName]              VARCHAR (255) NOT NULL,
    [NationalVisionZip2_id] BIGINT        NOT NULL,
    [created]               DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_nationalvisionwav2_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NationalVisionWav2i03]
    ON [smallforms].[nationalvisionwav2]([NationalVisionZip2_id] ASC);


GO
CREATE NONCLUSTERED INDEX [NationalVisionWav2i02]
    ON [smallforms].[nationalvisionwav2]([fileName] ASC);

