CREATE TABLE [dbo].[stubhubreputiltransfer]
(
	[id] [bigint] IDENTITY(178737,1) NOT NULL,
	[agents_id] [bigint] NOT NULL,
	[typeOfTransfer] [varchar](24) NOT NULL,
	[created] [datetime2](0) NOT NULL,
	[orderNumber] [varchar](250) NOT NULL DEFAULT '',
	[clientName] [varchar](250) NOT NULL DEFAULT '',
	[reason4Transfer] [varchar](max) NOT NULL,
	[ani] [varchar](11) NOT NULL DEFAULT '',
	[StubHubRepUtilQueue_id] [bigint] NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_stubhubreputiltransfer] PRIMARY KEY ([id])
)
