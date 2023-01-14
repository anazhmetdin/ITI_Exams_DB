USE ITI_Exams
GO

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
		THROW 500, 'Could not insert student exam question answer', 16
	END CATCH
END;
GO

-- This Utility proc responsible for Insert one answer into Table StudentExam_Question_Answer
CREATE OR ALTER PROC InsertExamAnswerChoice (@eID INT, @sID INT, @ch INT)
WITH ENCRYPTION
AS
BEGIN
 	BEGIN TRY
	       declare @qID INT 
		   select @qID = ch.Question_ID from  ITI_Exams.dbo.Choice as ch WHERE ch.ID = @ch
	       exec InsertStudentExamQuestionAnswer @eID, @sID, @qID, @ch
	END TRY  
	BEGIN CATCH  
		 SELECT 'Invalid Exam ID or Student or Choice ID or NULL'
	END CATCH
END
GO

-- This proc responsible for Insert 10 answers by student
CREATE OR ALTER PROC ExamAnswer (@eID INT, @sID INT, @c1 INT, @c2 INT, @c3 INT, @c4 INT, @c5 INT, @c6 INT, @c7 INT, @c8 INT, @c9 INT, @c10 INT)
WITH ENCRYPTION
AS
BEGIN
 	BEGIN TRY
	     EXEC InsertExamAnswerChoice @eID, @sID, @c1
		 EXEC InsertExamAnswerChoice @eID, @sID, @c2
		 EXEC InsertExamAnswerChoice @eID, @sID, @c3
		 EXEC InsertExamAnswerChoice @eID, @sID, @c4
		 EXEC InsertExamAnswerChoice @eID, @sID, @c5
		 EXEC InsertExamAnswerChoice @eID, @sID, @c6
		 EXEC InsertExamAnswerChoice @eID, @sID, @c7
		 EXEC InsertExamAnswerChoice @eID, @sID, @c8
		 EXEC InsertExamAnswerChoice @eID, @sID, @c9
		 EXEC InsertExamAnswerChoice @eID, @sID, @c10
	END TRY  
	BEGIN CATCH  
		 SELECT 'Invalid Exam ID or Student ID or NULL'
	END CATCH
END
GO
