USE ITI_Exams;
GO

CREATE OR ALTER PROC GenerateExam
@courseName VARCHAR(128), @MCQCount INT,
@MTFCount INT, @date DATE, @exam_ID INT OUTPUT
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		-- create new exam and store its ID in the output variable
		EXEC InsertExam @date, @exam_ID

		-- get course ID of the corresponding course name
		DECLARE @courseID INT = (SELECT c.ID FROM ITI_Exams.dbo.Course c
			WHERE c.Name = @courseName)

		-- INSERT random questions into Exam_Question
		INSERT INTO ITI_Exams.dbo.Exam_Question (Exam_ID, Question_ID)
			-- select random MCQ questions as specified by @MCQCount
			SELECT mcq.* FROM
				(SELECT TOP (@MCQCount)
				@exam_ID Exam_ID, q.ID Question_ID
				FROM ITI_Exams.dbo.Question q
				WHERE q.Course_ID = @courseID
				AND q.Type = 'MCQ'
				ORDER BY NEWID()) mcq

			UNION
			-- select random MTF questions as specified by @MTFCount
			SELECT mtf.* FROM
				(SELECT TOP (@MTFCount)
				@exam_ID Exam_ID, q.ID Question_ID
				FROM ITI_Exams.dbo.Question q
				WHERE q.Course_ID = @courseID
				AND q.Type = 'MTF'
				ORDER BY NEWID()) mtf
	END TRY
	BEGIN CATCH
		THROW 500, 'Could not generate exam', 16
	END CATCH
END;

