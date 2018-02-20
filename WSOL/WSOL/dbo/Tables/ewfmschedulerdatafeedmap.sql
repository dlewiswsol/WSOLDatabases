CREATE TABLE [dbo].[ewfmschedulerdatafeedmap] (
    [client_id]  BIGINT NOT NULL,
    [program_id] BIGINT NOT NULL,
    CONSTRAINT [PK_ewfmschedulerdatafeedmap_client_id] PRIMARY KEY CLUSTERED ([client_id] ASC, [program_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_eWFMSchedulerDataFeedMap_program]
    ON [dbo].[ewfmschedulerdatafeedmap]([program_id] ASC);


GO
ALTER INDEX [fk_eWFMSchedulerDataFeedMap_program]
    ON [dbo].[ewfmschedulerdatafeedmap] DISABLE;


GO
CREATE NONCLUSTERED INDEX [fk_eWFMSchedulerDataFeedMap_client]
    ON [dbo].[ewfmschedulerdatafeedmap]([client_id] ASC);


GO
ALTER INDEX [fk_eWFMSchedulerDataFeedMap_client]
    ON [dbo].[ewfmschedulerdatafeedmap] DISABLE;

