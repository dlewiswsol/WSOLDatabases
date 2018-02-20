CREATE TABLE [dbo].[zestcashqaformcalltype] (
    [idZestCashQAFormCallType] BIGINT        IDENTITY (8, 1) NOT NULL,
    [callType]                 VARCHAR (255) NOT NULL,
    [visible]                  CHAR (1)      NOT NULL,
    [datew]                    DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_zestcashqaformcalltype_idZestCashQAFormCallType] PRIMARY KEY CLUSTERED ([idZestCashQAFormCallType] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ZestCashQAFormCallTypei1]
    ON [dbo].[zestcashqaformcalltype]([callType] ASC);


GO
ALTER INDEX [ZestCashQAFormCallTypei1]
    ON [dbo].[zestcashqaformcalltype] DISABLE;

