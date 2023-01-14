create or alter proc Std_Info_Dep
@dep_id int 
with ENCRYPTION
as
begin
try
select * 
from Student 
where Department_ID=@dep_id
end try

begin catch
		THROW 500, 'Could not select department info', 16

		end  catch
	GO

---proc test---
Std_Info_Dep 2



----------------------------------------


create or alter proc exam_ques_choices
@exam_id int 
with ENCRYPTION
as
begin
try
select Statement ,Text
from Question q inner join Choice ch on
q.ID=ch.Question_ID
inner join Exam_Question eq on q.ID =eq.Question_ID
where Exam_ID=@exam_id
end try

begin catch
		THROW 500, 'Could not select department info', 16

		end  catch
	GO

