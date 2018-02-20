﻿
CREATE VIEW [dbo].[INTERVIEWER] (
   IDINTERVIEWER, 
   EMAIL, 
   PASSWORD, 
   FIRSTNAME, 
   LASTNAME, 
   DATECREATED, 
   ISDELETED, 
   ISLOCKED, 
   USERNAME)
AS 
   SELECT 
      USERS.IDUSER, 
      USERS.USEREMAIL, 
      USERS.USERPASS, 
      USERS.FIRSTNAME, 
      USERS.LASTNAME, 
      USERS.USERCREATED, 
      USERS.ISDELETED, 
      USERS.ISLOCKED, 
      USERS.USERNAME
   FROM dbo.USERS