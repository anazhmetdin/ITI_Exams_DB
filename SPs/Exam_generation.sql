USE ITI_Exams;
GO

CREATE OR ALTER PROC GenerateExam
@courseName VARCHAR(128), @MCQCount INT,
@MTFCount INT, @exam_ID INT OUTPUT, @date DATE = NULL
WITH ENCRYPTION
AS
BEGIN TRANSACTION
BEGIN
	-- try to get course id and to get all corresponding questions
	BEGIN TRY
		-- get course ID of the corresponding course name
		DECLARE @courseID INT = (SELECT c.ID FROM ITI_Exams.dbo.Course c
			WHERE c.Name = @courseName)
		
		-- get all MTF of this course
		DECLARE @mtfQs TABLE(id INT)
		INSERT INTO @mtfQs 
			SELECT q.ID
			FROM ITI_Exams.dbo.Question q
			WHERE q.Course_ID = @courseID
			AND q.Type = 'MTF';

		-- get all MCQ of this course
		DECLARE @mcqQs TABLE(id INT)
		INSERT INTO @mcqQs 
			SELECT q.ID
			FROM ITI_Exams.dbo.Question q
			WHERE q.Course_ID = @courseID
			AND q.Type = 'MCQ';
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
		THROW 50000, 'Could not find this course', 16
	END CATCH

	-- check if the requested questions are more than available
	IF (@MTFCount > (SELECT COUNT(*) FROM @mtfQs))
	BEGIN
		ROLLBACK TRANSACTION;
		THROW 50000, 'Could not generate exam, no enough MTF questions', 16
	END
		
	IF (@MCQCount > (SELECT COUNT(*) FROM @mcqQs))
	BEGIN
		ROLLBACK TRANSACTION;
		THROW 50000, 'Could not generate exam, no enough MCQ questions', 16
	END

	-- try to choose random questions for the exam
	BEGIN TRY
		-- create new exam and store its ID in the output variable
		EXEC InsertExam @date, @exam_ID OUTPUT

		-- INSERT random questions into Exam_Question
		INSERT INTO ITI_Exams.dbo.Exam_Question (Exam_ID, Question_ID)
			-- select random MCQ questions as specified by @MCQCount
			SELECT mcq.* FROM
				(SELECT TOP (@MCQCount)
				@exam_ID Exam_ID, q.ID Question_ID
				FROM @mcqQs q
				ORDER BY NEWID()) mcq

			UNION
			-- select random MTF questions as specified by @MTFCount
			SELECT mtf.* FROM
				(SELECT TOP (@MTFCount)
				@exam_ID Exam_ID, q.ID Question_ID
				FROM @mtfQs q
				ORDER BY NEWID()) mtf
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
		THROW 50000, 'Could not generate exam', 16
	END CATCH
COMMIT TRANSACTION;
END;

GO

--declare @id int
--exec GenerateExam 'C++', 7, 3, @id output
