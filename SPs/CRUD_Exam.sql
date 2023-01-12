USE ITI_Exams;
GO
---------------------------------------
-- SELECT
CREATE OR ALTER PROC SelectExam @id INT, @dateStart DATE, @dateEnd Date
WITH ENCRYPTION
AS
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Exam e
		WHERE
		(@id IS NULL OR e.ID = @id)
		AND
		(@dateStart IS NULL OR e.date >= @dateStart)
		AND
		(@dateEnd IS NULL OR e.date <= @dateEnd);
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not select exam', 16
	END CATCH
GO
-- SELECT TEST
SelectExam 1, NULL, NULL;
GO
SelectExam NULL, NULL, '2022-6-30';
GO
SelectExam NULL, '2022-6-30', NULL;
GO
---------------------------------------

-- INSERT
CREATE OR ALTER PROC InsertExam @date DATE
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
	IF (@date IS NULL OR @date < GETDATE())
		SET @date = GETDATE()

	INSERT INTO ITI_Exams.dbo.Exam (date) VALUES (@date)

	SELECT SCOPE_IDENTITY()
	
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not insert exam', 16
	END CATCH
END;
GO
-- INSERT TEST
InsertExam '2022-6-30';
GO
InsertExam NULL;
GO
---------------------------------------

-- UPDATE
CREATE OR ALTER PROC UpdateExam @id INT, @date DATE
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
	IF (@date IS NOT NULL AND @id IS NOT NULL)
		UPDATE e
		SET e.date = @date
		FROM ITI_Exams.dbo.Exam e
		WHERE e.ID = @id
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not update exam', 16
	END CATCH
END;
GO
-- UPDATE TEST
UpdateExam 1, '2022-6-30';
GO
UpdateExam NULL, NULL;
GO
---------------------------------------


-- DELETE
CREATE OR ALTER PROC DeleteExam @id INT, @date DATE
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
	IF (@date IS NOT NULL OR @id IS NOT NULL)
		DELETE e
		FROM ITI_Exams.dbo.Exam e
		WHERE
		(@id IS NULL OR e.ID = @id)
		AND
		(@date IS NULL OR e.date = @date)
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not delete exam', 16
	END CATCH
END;
GO
-- UPDATE TEST
DeleteExam 1, NULL;
GO
DeleteExam NULL, '2022-6-30';
GO
---------------------------------------