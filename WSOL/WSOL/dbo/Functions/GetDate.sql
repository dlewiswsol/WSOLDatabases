﻿
CREATE FUNCTION [dbo].[GetDate]() RETURNS DATETIME
AS BEGIN
 RETURN getdate() AT TIME ZONE 'UTC' AT TIME ZONE 'Central Standard Time'
END