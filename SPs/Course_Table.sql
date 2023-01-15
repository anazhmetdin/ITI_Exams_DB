USE ITI_Exams
GO
-- SELECT Course
CREATE or Alter PROC SelectCourse (@id INT = NULL, @cName varchar(30) = NULL)
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Course as c
		WHERE
		(@id IS NULL OR c.ID = @id)
		AND
		(@cName IS NULL OR c.Name = @cName)

	END TRY  
	BEGIN CATCH  
		select 'No Course with this ID or Name'
	END CATCH
END
GO

---------------------------------------
-- INSERT Course
CREATE or Alter PROC InsertCourse (@cName varchar(16), @id INT OUTPUT)
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		INSERT INTO ITI_Exams.dbo.Course (Name) VALUES (@cName)
		SET @id = SCOPE_IDENTITY()
	END TRY  
	BEGIN CATCH  
		select 'Could not insert Course'
	END CATCH
END;

GO

---------------------------------------
-- UPDATE Course with 2 options by id or by name
CREATE or Alter PROC UpdateCourse (@id INT, @oldName varchar(30), @newName varchar(30))
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@oldName IS NOT NULL or @id IS NOT NULL)
		BEGIN
			UPDATE c
			SET c.Name = @newName
			FROM ITI_Exams.dbo.Course as c
			WHERE c.ID = @id or c.Name = @oldName
        END
		ELSE
		select 'Could not update Course'
	END TRY  
	BEGIN CATCH  
		select 'Could not update Course'
	END CATCH
END;
GO

---------------------------------------
-- DELETE Course with 2 options by id or by name
CREATE OR ALTER PROC DeleteCourse (@id INT , @cName varchar(30))
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF(@cName IS NOT NULL or @id IS NOT NULL)
		BEGIN
			DELETE c
			FROM ITI_Exams.dbo.Course as c
			WHERE c.ID = @id or c.Name = @cName
        END
		ELSE
		select 'Could not delete Course'
	END TRY  
	BEGIN CATCH  
	  select 'Could not delete Course'
	END CATCH
END;
GO
