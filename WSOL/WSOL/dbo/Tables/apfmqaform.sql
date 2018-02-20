CREATE TABLE [dbo].[apfmqaform] (
    [id]                              BIGINT          IDENTITY (3020, 1) NOT NULL,
    [agents_id]                       BIGINT          NOT NULL,
    [monitor_id]                      BIGINT          NOT NULL,
    [monitorName]                     VARCHAR (50)    NOT NULL,
    [callDateTime]                    DATETIME2 (0)   DEFAULT (NULL) NULL,
    [interactionIdNumber]             VARCHAR (50)    NOT NULL,
    [memberNumber]                    VARCHAR (50)    DEFAULT (NULL) NULL,
    [callersName]                     VARCHAR (50)    NOT NULL,
    [f1]                              TINYINT         NOT NULL,
    [f1Text]                          VARCHAR (50)    NOT NULL,
    [f2]                              SMALLINT        NOT NULL,
    [f2Text]                          VARCHAR (50)    NOT NULL,
    [f3]                              SMALLINT        NOT NULL,
    [f3Text]                          VARCHAR (50)    NOT NULL,
    [f4]                              SMALLINT        NOT NULL,
    [f4Text]                          VARCHAR (50)    NOT NULL,
    [f5]                              SMALLINT        NOT NULL,
    [f5Text]                          VARCHAR (50)    NOT NULL,
    [f6]                              SMALLINT        NOT NULL,
    [f6Text]                          VARCHAR (50)    NOT NULL,
    [f7]                              SMALLINT        NOT NULL,
    [f7Text]                          VARCHAR (50)    NOT NULL,
    [f8]                              SMALLINT        NOT NULL,
    [f8Text]                          VARCHAR (50)    NOT NULL,
    [f9]                              SMALLINT        NOT NULL,
    [f9Text]                          VARCHAR (50)    NOT NULL,
    [f10]                             SMALLINT        NOT NULL,
    [f10Text]                         VARCHAR (50)    NOT NULL,
    [f11]                             SMALLINT        NOT NULL,
    [f11Text]                         VARCHAR (50)    NOT NULL,
    [f12]                             SMALLINT        NOT NULL,
    [f12Text]                         VARCHAR (50)    NOT NULL,
    [autoFail]                        VARCHAR (3)     NOT NULL,
    [comment]                         VARCHAR (MAX)   NOT NULL,
    [score]                           DECIMAL (12, 2) NOT NULL,
    [percent]                         DECIMAL (12, 2) NOT NULL,
    [qualityqaq10_idqualityqaq10]     BIGINT          NOT NULL,
    [qualitysrcform_idqualitysrcform] BIGINT          NOT NULL,
    [datew]                           DATE            NOT NULL,
    [timew]                           TIME (7)        NOT NULL,
    CONSTRAINT [PK_apfmqaform_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [fk_GetaRoomCustomerCareQAForm_qualitysrcform1]
    ON [dbo].[apfmqaform]([qualitysrcform_idqualitysrcform] ASC);


GO
CREATE NONCLUSTERED INDEX [fk_GetaRoomCustomerCareQAForm_qualityqaq101]
    ON [dbo].[apfmqaform]([qualityqaq10_idqualityqaq10] ASC);


GO
CREATE NONCLUSTERED INDEX [fk_GetaRoomCustomerCareQAForm_agents1]
    ON [dbo].[apfmqaform]([monitor_id] ASC);


GO
CREATE NONCLUSTERED INDEX [fk_GetaRoomCustomerCareQAForm_agents]
    ON [dbo].[apfmqaform]([agents_id] ASC);


GO
CREATE NONCLUSTERED INDEX [dateOfSubmission]
    ON [dbo].[apfmqaform]([datew] ASC);

