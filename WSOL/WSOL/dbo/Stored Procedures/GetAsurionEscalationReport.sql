CREATE PROCEDURE [dbo].[GetAsurionEscalationReport]
AS
BEGIN
	SELECT 
	  [Subject]
	 ,FType
	 ,CustomerName
	 ,WirelessNum as WirelessNumber
	 ,ContactNum as ContactNumber
	 ,ClaimNumber
	 ,Email
	 ,Promo
	 ,Issue
	 ,AgentID
	 ,'Yes' as CallbackRequired
	FROM 
	 smallforms.asurionescal
	WHERE 
	 datew BETWEEN FORMAT(dbo.getdate()-1,'MM/dd/yyyy')+' 00:00:00:00' AND  FORMAT(dbo.getdate()-1,'MM/dd/yyyy')+' 23:59:59:999'
END