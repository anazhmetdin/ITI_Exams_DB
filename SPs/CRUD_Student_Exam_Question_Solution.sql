USE ITI_Exams;
GO
---------------------------------------
-- SELECT
CREATE OR ALTER PROC SelectStudentExamQuestionAnswer
@studentID INT = NULL, @examID INT = NULL, @questionID INT = NULL, @answer INT = NULL
WITH ENCRYPTION
AS
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Student_Exam_Question_Solution seqs
		WHERE
		(@studentID IS NULL OR seqs.Student_ID = @studentID)
		AND
		(@examID IS NULL OR seqs.Exam_ID = @examID)
		AND
		(@questionID IS NULL OR seqs.Question_ID = @questionID)
		AND
		(@answer IS NULL OR seqs.Answer = @answer)
	END TRY  
	BEGIN CATCH  
		THROW 50000, 'Could not select student exam question answer', 16
	END CATCH
GO
---------------------------------------

-- INSERT
CREATE OR ALTER PROC InsertStudentExamQuestionAnswer
@studentID INT, @examID INT, @questionID INT, @answer INT = NULL
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		INSERT INTO ITI_Exams.dbo.Student_Exam_Question_Solution
		VALUES (@studentID, @examID, @questionID, @answer)
	END TRY  
	BEGIN CATCH  
		THROW 50000, 'Could not insert student exam question answer', 16
	END CATCH
END;
GO
---------------------------------------

-- UPDATE
CREATE OR ALTER PROC UpdateStudentExamQuestionAnswer
@studentID INT, @examID INT, @questionID INT, @answer INT, @all BIT = 0
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@studentID IS NOT NULL
			OR
			@examID IS NOT NULL
			OR
			@questionID IS NOT NULL
			OR
			@answer IS NOT NULL
			OR
			@all = 1)
			UPDATE seqs
			SET seqs.Answer = @answer
			FROM ITI_Exams.dbo.Student_Exam_Question_Solution seqs
			WHERE
			(@examID IS NULL OR seqs.Exam_ID = @examID)
			AND
			(@studentID IS NULL OR seqs.Student_ID = @studentID)
			AND
			(@questionID IS NULL OR seqs.Question_ID = @questionID)
	END TRY  
	BEGIN CATCH  
		THROW 50000, 'Could not update student exam question answer', 16
	END CATCH
END;
GO
---------------------------------------

-- DELETE
CREATE OR ALTER PROC DeleteStudentExamQuestionAnswer
@studentID INT, @examID INT, @questionID INT, @answer INT, @all BIT = 0
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@studentID IS NOT NULL
			OR
			@examID IS NOT NULL
			OR
			@questionID IS NOT NULL
			OR
			@answer IS NOT NULL
			OR
			@all = 1)
			DELETE seqs
			FROM ITI_Exams.dbo.Student_Exam_Question_Solution seqs
			WHERE
			(@examID IS NULL OR seqs.Exam_ID = @examID)
			AND
			(@studentID IS NULL OR seqs.Student_ID = @studentID)
			AND
			(@questionID IS NULL OR seqs.Question_ID = @questionID)
			AND
			(@answer IS NULL OR seqs.Answer = @answer)
	END TRY  
	BEGIN CATCH  
		THROW 50000, 'Could not delete student exam question answer', 16
	END CATCH
END;
GO
---------------------------------------