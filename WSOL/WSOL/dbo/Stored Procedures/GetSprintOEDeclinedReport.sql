CREATE PROCEDURE [dbo].[GetSprintOEDeclinedReport]
AS
BEGIN
	SELECT 
		SOD.custFirstName as FirstName,
		SOD.custLastName as LastName,
		SOD.mobileNumber as Mobile,
		FORMAT(SOD.datew,'MM-dd-yyyy') as Submit_Date,
		SOS.Name as SOC
	FROM 
		SprintOeEnrollmentDeclined SOD
		INNER JOIN sprintoeenrollmentdeclinedsoc SOS ON SOS.Id= SOD.IdSpecOfferCode
	WHERE SOD.datew = FORMAT(Convert(datetime,dbo.getdate()-1),'MM/dd/yyyy')
END