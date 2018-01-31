CREATE TABLE [dbo].[isaac] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [isaacname]    VARCHAR (50) NULL,
    [date_created] DATETIME     CONSTRAINT [DF_isaac_date_created] DEFAULT (getdate()) NOT NULL,
    [date_modified] DATETIME NULL DEFAULT getdate(), 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


