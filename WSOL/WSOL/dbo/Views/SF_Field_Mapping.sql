





CREATE   VIEW [dbo].[SF_Field_Mapping]
AS

SELECT 
       mmf.fieldName as [Field Name]
              ,p.id as [Program ID] 
              ,p.[name]  AS Program_Name
              ,mmf.[status]  as [Status] 
              ,mmf.idManualMapFld as idmmf
			  ,p.idclient as Client_ID
			  ,c.[name] as Client_Name       
              
       FROM
              ManualMapFld mmf LEFT JOIN program p ON (mmf.idProgram=p.id)

			  LEFT JOIN client c on (p.idclient = c.id)