CREATE TABLE [smallforms].[ninewestwhissuestracker] (
    [idNineWestWhIssuesTracker] BIGINT        IDENTITY (8274, 1) NOT NULL,
    [idchoice]                  BIGINT        DEFAULT ((0)) NOT NULL,
    [orderNumber]               VARCHAR (255) DEFAULT (N'') NOT NULL,
    [datew]                     DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [brand]                     VARCHAR (255) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_ninewestwhissuestracker_idNineWestWhIssuesTracker] PRIMARY KEY CLUSTERED ([idNineWestWhIssuesTracker] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NineWestWhIssuesTrackeri01]
    ON [smallforms].[ninewestwhissuestracker]([datew] ASC);

