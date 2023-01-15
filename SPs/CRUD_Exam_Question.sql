USE ITI_Exams;

-- INSERT
CREATE OR ALTER PROC InsertExamQ 
@QID INT, @ExamID INT 
--WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		INSERT INTO Exam_Question VALUES (@ExamID, @QID)
	END TRY  
	BEGIN CATCH  
		select 'Could not insert student exam'
	END CATCH
END;
GO


---------------------------------------

-- DELETE
CREATE OR ALTER PROC DeleteExamQ
@QID INT, @ExamID INT 
AS
BEGIN
		IF (@QID IS NOT NULL and @ExamID IS NOT NULL)
			DELETE Exam_Question
			FROM ITI_Exams.dbo.Exam_Question EQ
			WHERE EQ.Question_ID = @QID and EQ.Exam_ID = @ExamID
		ELSE
			select 'Couldn''t Delete' 
END;
GO