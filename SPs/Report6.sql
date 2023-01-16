USE ITI_Exams
GO
create or alter procedure Report6
@stdID INT, @examID INT
as
select SEQS.Answer, Q.Statement
from Student_Exam_Question_Solution SEQS, Question as Q
where SEQS.Student_ID = @stdID and SEQS.Exam_ID = @examID and q.ID = SEQS.Question_ID



