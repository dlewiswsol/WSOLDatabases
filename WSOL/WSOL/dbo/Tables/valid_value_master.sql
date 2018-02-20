CREATE TABLE [dbo].[valid_value_master]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](50) NOT NULL, 
    [description] VARCHAR(250) NOT NULL, 
	[primary_value] [varchar](max) NULL,
	[secondary_value] [varchar](max) NULL,
	[visible] [bit] NOT NULL DEFAULT 1,
	[active] [bit] NOT NULL DEFAULT 1,
	[date_created] [datetime] NOT NULL DEFAULT getdate(),
	[date_modified] [datetime] NOT NULL DEFAULT getdate(),
	[created_by] [varchar](50) NOT NULL DEFAULT suser_name(),
    CONSTRAINT [PK_valid_value_master] PRIMARY KEY ([id])
)
