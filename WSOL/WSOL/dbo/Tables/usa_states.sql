CREATE TABLE [dbo].[usa_states] (
	[id] int identity not null,
    [state_cd]      CHAR (2)      NOT NULL,
    [name]    VARCHAR (200) NOT NULL,
    [visible] bit      NOT NULL default 1,
    CONSTRAINT [PK_usa_states_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

