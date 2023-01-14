USE ITI_Exams;
GO
---------------------------------------
-- SELECT
CREATE OR ALTER PROC SelectInstructor
@id INT = NULL, @name varchar(32) = NULL, @dep_id int = NULL
WITH ENCRYPTION
AS
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Instructor ins
		WHERE
		(@id IS NULL OR ins.ID = @id)
		AND
		(@name IS NULL OR ins.Name =@name or @name='')
		AND
		(@dep_id IS NULL OR ins.Department_ID = @dep_id);
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not select instructor info', 16
	END CATCH
GO

---------------------------------------

-- INSERT
CREATE OR ALTER PROC InsertInstructor
@id INT, @name varchar(32), @dep_id int = NULL
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		INSERT INTO ITI_Exams.dbo.Instructor VALUES  (@name, @dep_id)
		
		SET @id = SCOPE_IDENTITY()
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not insert instructor info', 16
	END CATCH
END;
GO
---------------------------------------

-- UPDATE
CREATE OR ALTER PROC UpdateInstuctor
@id INT, @name varchar(32), @dep_id int, @all BIT = 0
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@id IS NOT NULL OR @name IS NOT NULL OR @all = 1)
			UPDATE ins
			SET ins.Department_ID = @dep_id
			FROM ITI_Exams.dbo.Instructor ins
			WHERE ins.ID = @id
			AND ins.Department_ID = @dep_id
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not update instructor info', 16
	END CATCH
END;
GO
---------------------------------------
-- DELETE
CREATE OR ALTER PROC DeleteStudentExam
@id INT, @name varchar(32), @all BIT = 0
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@id IS NOT NULL OR @name IS NOT NULL OR @all = 1)
			DELETE ins
			FROM ITI_Exams.dbo.Instructor ins
			WHERE
			(@id IS NULL OR ins.ID = @id)
			AND
			(@name IS NULL OR ins.Name = @name)
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not delete instructor info', 16
	END CATCH
END;
GO