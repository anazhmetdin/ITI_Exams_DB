USE ITI_Exams


GO
create or alter procedure stdGrades
@StdID int
as 
select Exam_ID, Grade, E.Course_ID
from Exam E inner join Student_Exam StdE 
on Student_ID = @StdID
and E.ID = StdE.Exam_ID

stdGrades 1
