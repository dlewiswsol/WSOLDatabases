﻿CREATE VIEW [dbo].[tmoacer_agent_role] AS select a.login AS username,dbo.MD5(a.pwd) AS password
,case WHEN ag.idGroup = 'USER' then 'Regular User' ELSE 'Administration User' END  AS  group_name 

from (tmoacer_agent_group ag  join agents a on((a.id = ag.idAgent)));