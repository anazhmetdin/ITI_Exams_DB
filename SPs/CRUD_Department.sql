USE ITI_Exams;
GO
---------------------------------------
-- SELECT
CREATE OR ALTER PROC SelectDepartment
@id INT = NULL, @name varchar(32)=null
WITH ENCRYPTION
AS
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Department dep
		WHERE
		(@id IS NULL OR dep.ID = @id)
		AND
		(@name IS NULL OR dep.Name =@name or @name='')
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not select department info', 16
	END CATCH
GO

---------------------------------------

-- INSERT
CREATE OR ALTER PROC InsertDepartment
@id INT, @name varchar(32)
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		INSERT INTO ITI_Exams.dbo.Department VALUES  (@name)
		
		SET @id = SCOPE_IDENTITY()
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not insert department info', 16
	END CATCH
END;
GO


---------------------------------------

-- UPDATE
CREATE OR ALTER PROC UpdateDepartment
@id INT, @name varchar(32), @all BIT = 0
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@id IS NOT NULL OR @name IS NOT NULL OR @all = 1)
			UPDATE dep
			SET dep.Name = Name
			FROM ITI_Exams.dbo.Department dep
			WHERE dep.ID = @id
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not update department info', 16
	END CATCH
END;
GO
---------------------------------------
-- DELETE
CREATE OR ALTER PROC DeleteDepartment
@id INT, @name varchar(32), @all BIT = 0
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@id IS NOT NULL OR @name IS NOT NULL OR @all = 1)
			DELETE dep
			FROM ITI_Exams.dbo.Department dep
			WHERE
			(@id IS NULL OR dep.ID = @id)
			AND
			(@name IS NULL OR dep.Name = @name)
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not delete department info', 16
	END CATCH
END;
GO