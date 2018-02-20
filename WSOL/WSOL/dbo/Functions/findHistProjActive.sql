   CREATE FUNCTION [dbo].[findHistProjActive](@idapplicant_in int, @field_num int)
   RETURNS VARCHAR(4000)
   AS
   BEGIN
		 DECLARE @name VARCHAR(200)='';
        DECLARE @p_name VARCHAR(200) = '';
        DECLARE @pst_name VARCHAR(200) = '';
        DECLARE c1 CURSOR LOCAL FOR
            SELECT p.name, pst.name
            FROM projectstatus ps
                          JOIN project p ON (p.IDPROJECT=ps.IDPROJECT)
                          JOIN projectstatustype pst ON (ps.IDPROJECTSTATUSTYPE=pst.IDPROJECTSTATUSTYPE)
            WHERE
                ps.idapplicant = @idapplicant_in
                and
                pst.IDPROJECTSTATUSTYPE = 3
            ORDER BY
                p.name;
    
        open c1;
        fetch c1 into @p_name, @pst_name;
        close c1;
        deallocate c1;

        IF @field_num = 1 BEGIN
			SET @name= @p_name;
		   RETURN @name
        END
        ELSE BEGIN
		SET @name=@pst_name;
           RETURN @name;
        END 
		return @name
   END ;