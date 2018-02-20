CREATE PROCEDURE [dbo].[GetShTransfersReportedDaily]
AS
BEGIN
	SELECT 
		 Format(sp.created,'MM/dd/yyyy') as DateofSubmission
		,Format(sp.created,'hh:mm tt') as TimeofSubmission
		, a.fname + ' '+ lname AgentName
		, sp.TypeOfTransfer
		, sp.Ani
		, sq.Name as QueueRoutedFrom
		, sp.orderNumber
		, sp.clientName
		, sp.reason4Transfer
	FROM 
		stubhubreputiltransfer sp
	INNER JOIN agents a On a.id= sp.agents_id
	INNER JOIN stubhubreputilqueue sq ON sq.id = sp.StubHubRepUtilQueue_id
	WHERE sp.Created between FORMAT(Convert(datetime,dbo.getdate()-1),'MM/dd/yyyy')+' 00:00:00:00' and FORMAT(Convert(datetime,dbo.getdate()-1),'MM/dd/yyyy')+' 23:59:59:999'
END