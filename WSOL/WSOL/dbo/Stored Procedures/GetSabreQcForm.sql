CREATE PROCEDURE [dbo].[GetSabreQcForm]
@StartDate datetime,
@EndDate datetime
AS
BEGIN
	SET NOCOUNT ON

	SELECT 
		FORMAT(SQF.datew,'MM/dd/yyyy') + ' ' + CONVERT(VARCHAR(5),SQF.timew, 108)  as [SubmissionDateTime]
		, ag.fname + ' ' + ag.lname as Agent
		, case when ap.IDAPPLICANT is not null THEN convert(nvarchar,ap.IDAPPLICANT) else '' end as catsId
		, case when ag1.email = 'quality_feedback@workingsol.com' THEN 'Sabre Client QC Manager' else ag1.fname + ' ' + ag1.lname end MonitorName
		,SQF.recordingId
		,FORMAT(SQF.datetimefield,'MM/dd/yyyy HH:mm') as DateTime
		,SQF.sessionId
		, F1a
		,F1b
		,F1c
		,F2
		,F3
		,F4
		,F5
		,F6
		,F6a
		,F7a
		,F7b
		,F8
		,F8a
		,F8b
		,F9
		,F10
		,F11
		,F12
		,F12a
		,F13
		,F14
		,F15
		,F16
		,F17
		,F19
		,F20
		,F21
		,F22
		,F23
		,F24
		,F25
		,F25a
		,F26
		,F27
		,F28
		,F29
		,F30
		,F31
		,F32
		,F33
		,F34
		,F35
		,F36
		,F37
		,F38
		,F39
		,Convert(nvarchar,SQF.[percent]) + '%' as TotalPoints
		,q.q10 as Impression
		,SQF.Notes as comments
		,Case When F1aText ='Yes' Then '1' WHEN F1aText ='No' THEN '0' ELSE '' END as F1aText
		,Case When F1bText ='Yes' Then '1' WHEN F1bText ='No' THEN '0' ELSE '' END as F1bText
		,Case When F1cText  ='Yes' Then '1' WHEN F1cText  ='No' THEN '0' ELSE '' END as F1cText 
		,Case When F2Text ='Yes' Then '1' WHEN F2Text ='No' THEN '0' ELSE '' END as F2Text
		,Case When F3Text ='Yes' Then '1' WHEN F3Text ='No' THEN '0' ELSE '' END as F3Text
		,Case When F4Text ='Yes' Then '1' WHEN F4Text ='No' THEN '0' ELSE '' END as F4Text
		,Case When F5Text ='Yes' Then '1' WHEN F5Text ='No' THEN '0' ELSE '' END as F5Text
		,Case When F6Text ='Yes' Then '1' WHEN F6Text ='No' THEN '0' ELSE '' END as F6Text
		,Case When F6aText ='Yes' Then '1' WHEN F6aText ='No' THEN '0' ELSE '' END as F6aText
		,Case When F7aText ='Yes' Then '1' WHEN F7aText ='No' THEN '0' ELSE '' END as F7aText
		,Case When F7bText ='Yes' Then '1' WHEN F7bText ='No' THEN '0' ELSE '' END as F7bText
		,Case When F8Text ='Yes' Then '1' WHEN F8Text ='No' THEN '0' ELSE '' END as F8Text
		,Case When F8aText ='Yes' Then '1' WHEN F8aText ='No' THEN '0' ELSE '' END as F8aText
		,Case When F8bText ='Yes' Then '1' WHEN F8bText ='No' THEN '0' ELSE '' END as F8bText
		,Case When F9Text ='Yes' Then '1' WHEN F9Text ='No' THEN '0' ELSE '' END as F9Text
		,Case When F10Text ='Yes' Then '1' WHEN F10Text ='No' THEN '0' ELSE '' END as F10Text
		,Case When F11Text ='Yes' Then '1' WHEN F11Text ='No' THEN '0' ELSE '' END as F11Text
		,Case When F12Text ='Yes' Then '1' WHEN F12Text ='No' THEN '0' ELSE '' END as F12Text
		,Case When F12aText ='Yes' Then '1' WHEN F12aText ='No' THEN '0' ELSE '' END as F12aText
		,Case When F13Text ='Yes' Then '1' WHEN F13Text ='No' THEN '0' ELSE '' END as F13Text
		,Case When F14Text ='Yes' Then '1' WHEN F14Text ='No' THEN '0' ELSE '' END as F14Text
		,Case When F15Text ='Yes' Then '1' WHEN F15Text ='No' THEN '0' ELSE '' END as F15Text
		,Case When F16Text ='Yes' Then '1' WHEN F16Text ='No' THEN '0' ELSE '' END as F16Text
		,Case When F17Text ='Yes' Then '1' WHEN F17Text ='No' THEN '0' ELSE '' END as F17Text
		,Case When F19Text ='Yes' Then '1' WHEN F19Text ='No' THEN '0' ELSE '' END as F19Text
		,Case When F20Text ='Yes' Then '1' WHEN F20Text ='No' THEN '0' ELSE '' END as F20Text
		,Case When F21Text ='Yes' Then '1' WHEN F21Text ='No' THEN '0' ELSE '' END as F21Text
		,Case When F22Text ='Yes' Then '1' WHEN F22Text ='No' THEN '0' ELSE '' END as F22Text
		,Case When F23Text ='Yes' Then '1' WHEN F23Text ='No' THEN '0' ELSE '' END as F23Text
		,Case When F24Text ='Yes' Then '1' WHEN F24Text ='No' THEN '0' ELSE '' END as F24Text
		,Case When F25Text ='Yes' Then '1' WHEN F25Text ='No' THEN '0' ELSE '' END as F25Text
		,Case When F25aText ='Yes' Then '1' WHEN F25aText ='No' THEN '0' ELSE '' END as F25aText
		,Case When F26Text ='Yes' Then '1' WHEN F26Text ='No' THEN '0' ELSE '' END as F26Text
		,Case When F27Text ='Yes' Then '1' WHEN F27Text ='No' THEN '0' ELSE '' END as F27Text
		,Case When F28Text ='Yes' Then '1' WHEN F28Text ='No' THEN '0' ELSE '' END as F28Text
		,Case When F29Text ='Yes' Then '1' WHEN F29Text ='No' THEN '0' ELSE '' END as F29Text
		,Case When F30Text ='Yes' Then '1' WHEN F30Text ='No' THEN '0' ELSE '' END as F30Text
		,Case When F31Text ='Yes' Then '1' WHEN F31Text ='No' THEN '0' ELSE '' END as F31Text
		,Case When F32Text ='Yes' Then '1' WHEN F32Text ='No' THEN '0' ELSE '' END as F32Text
		,Case When F33Text ='Yes' Then '1' WHEN F33Text ='No' THEN '0' ELSE '' END as F33Text
		,Case When F34Text ='Yes' Then '1' WHEN F34Text ='No' THEN '0' ELSE '' END as F34Text
		,Case When F35Text ='Yes' Then '1' WHEN F35Text ='No' THEN '0' ELSE '' END as F35Text
		,Case When F36Text ='Yes' Then '1' WHEN F36Text ='No' THEN '0' ELSE '' END as F36Text
		,Case When F37Text ='Yes' Then '1' WHEN F37Text ='No' THEN '0' ELSE '' END as F37Text
		,Case When F38Text ='Yes' Then '1' WHEN F38Text ='No' THEN '0' ELSE '' END as F38Text
		,Case When F39Text ='Yes' Then '1' WHEN F39Text ='No' THEN '0' ELSE '' END as F39Text
	FROM
		SabreQcForm SQF
		INNER JOIN Agents ag on ag.id = SQF.agents_id
		INNER JOIN  Qualityqaq10 q on q.idqualityqaq10=SQF.idqualityqaq10
		LEFT JOIN Applicant ap on ap.Email = ag.email
		LEFT JOIN Agents ag1 on ag1.id=monitoredBy
	WHERE SQF.DateW between FORMAT(@StartDate,'MM/dd/yyyy')+' 00:00:00:00' AND FORMAT(@EndDate,'MM/dd/yyyy')+' 23:59:59:999'  
	Order By SQF.DateW ASC
END