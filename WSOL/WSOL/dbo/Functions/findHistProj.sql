
/****** Object:  UserDefinedFunction [dbo].[findHistProj]    Script Date: 10/4/2016 9:37:47 AM ******/
   CREATE FUNCTION [dbo].[findHistProj](@idapplicant_in int, @field_num int, @idproject_in int)
   RETURNS VARCHAR(4000)
   AS
   BEGIN
        DECLARE @name VARCHAR(200)=NULL;
        DECLARE @p_name VARCHAR(200) =NULL;
        DECLARE @pst_name VARCHAR(200) = NULL;
        --DECLARE c1 CURSOR LOCAL FOR
		-- SELECT @name = p.name, @p_name = pst.name
            SELECT @name = p.name, @p_name = pst.name
            FROM projectstatus ps
                          JOIN project p ON (p.IDPROJECT=ps.IDPROJECT)
                          JOIN projectstatustype pst ON (ps.IDPROJECTSTATUSTYPE=pst.IDPROJECTSTATUSTYPE)
            WHERE
                ps.idapplicant = @idapplicant_in
                and
                p.IDPROJECT = @idproject_in
                and
                pst.IDPROJECTSTATUSTYPE = 3;
    
        --open c1;
        --fetch c1 into @p_name, @pst_name;
						
        --close c1;
        --deallocate c1;

        IF @field_num = 1 BEGIN
			SET @name =  @p_name 
		RETURN  @name
         
        END
        ELSE BEGIN
			SET @name=@p_name
           RETURN @name;
        END 
		return @name
   END ;