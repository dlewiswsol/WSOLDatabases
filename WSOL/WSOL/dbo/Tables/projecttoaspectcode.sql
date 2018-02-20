CREATE TABLE [dbo].[projecttoaspectcode] (
    [id]                         BIGINT        IDENTITY (28, 1) NOT NULL,
    [program_id]                 BIGINT        NOT NULL,
    [aspectSchedulerSegmentCode] VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_projecttoaspectcode_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_ProjectToAspectCode_program_idx]
    ON [dbo].[projecttoaspectcode]([program_id] ASC);


GO
ALTER INDEX [fk_ProjectToAspectCode_program_idx]
    ON [dbo].[projecttoaspectcode] DISABLE;


GO
CREATE NONCLUSTERED INDEX [aspectSchedulerSegmentCode]
    ON [dbo].[projecttoaspectcode]([aspectSchedulerSegmentCode] ASC);


GO
ALTER INDEX [aspectSchedulerSegmentCode]
    ON [dbo].[projecttoaspectcode] DISABLE;

