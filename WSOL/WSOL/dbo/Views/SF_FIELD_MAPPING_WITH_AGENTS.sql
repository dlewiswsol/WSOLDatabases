-- =================================================================================
-- Create View template for Azure SQL Database and Azure SQL Data Warehouse Database
-- =================================================================================


CREATE VIEW [dbo].[SF_FIELD_MAPPING_WITH_AGENTS] AS
select fm.[field name] as field_name, fm.[program id] as program_id, fm.program_name, fm.[status] ,
fm.client_id, fm.client_name, fml.agent_id, fml.cats_id, fml.invoice_map_key, fml.official_acl_name, fml.idmmf, fml.idprog
from sf_field_mapping fm, sf_field_mapping_list fml where fm.idmmf=fml.idmmf