CREATE PROCEDURE [dbo].[GetATTProgramRedesignWSOL]
AS
BEGIN
	SELECT  
	 mobileNumber 
	FROM 
	 AsurionATTRedCancFormData 
	WHERE 
	 created BETWEEN FORMAT(dbo.getdate()-1,'MM/dd/yyyy')+' 00:00:00:00' AND FORMAT(dbo.getdate()-1,'MM/dd/yyyy')+' 23:59:59:999'
END