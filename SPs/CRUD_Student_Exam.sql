USE ITI_Exams;
GO
---------------------------------------
-- SELECT
CREATE OR ALTER PROC SelectStudentExam
@studentID INT, @examID INT, @minGrade FLOAT, @maxGrade FLOAT
WITH ENCRYPTION
AS
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Student_Exam se
		WHERE
		(@studentID IS NULL OR se.Student_ID = @studentID)
		AND
		(@examID IS NULL OR se.Exam_ID = @examID)
		AND
		(@minGrade IS NULL OR se.Grade >= @minGrade)
		AND
		(@maxGrade IS NULL OR se.Grade <= @maxGrade);
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not select student exam', 16
	END CATCH
GO
---------------------------------------

-- INSERT
CREATE OR ALTER PROC InsertStudentExam
@studentID INT, @examID INT, @Grade FLOAT
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		INSERT INTO ITI_Exams.dbo.Student_Exam VALUES (@studentID, @examID, @Grade)
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not insert student exam', 16
	END CATCH
END;
GO
---------------------------------------

-- UPDATE
CREATE OR ALTER PROC UpdateStudentExam
@studentID INT, @examID INT, @Grade FLOAT
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		UPDATE se
		SET se.Grade = @Grade
		FROM ITI_Exams.dbo.Student_Exam se
		WHERE se.Student_ID = @studentID
		AND se.Exam_ID = @examID
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not update student exam', 16
	END CATCH
END;
GO
---------------------------------------

-- DELETE
CREATE OR ALTER PROC DeleteStudentExam
@studentID INT, @examID INT, @all BIT = 0
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@studentID IS NOT NULL OR @examID IS NOT NULL OR @all = 1)
			DELETE se
			FROM ITI_Exams.dbo.Student_Exam se
			WHERE
			(@examID IS NULL OR se.Exam_ID = @examID)
			AND
			(@studentID IS NULL OR se.Student_ID = @studentID)
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not delete student exam', 16
	END CATCH
END;
GO
---------------------------------------