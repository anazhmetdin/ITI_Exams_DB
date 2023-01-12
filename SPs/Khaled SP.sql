USE [ITI_Exams]
GO
/****** Object:  StoredProcedure [dbo].[CorrectExam]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER proc [dbo].[CorrectExam] @eid int, @sid int
as
	declare @grade float, @ques_count int

	select @grade = count(*)
	
	from Student_Exam_Question_Solution seqs join Question_Answer qa 
	
	on seqs.Question_ID = qa.Question_ID
	
	where seqs.Exam_ID = @eid and seqs.Student_ID = @sid and seqs.Answer = qa.Answer

	select @ques_count = count(*) from Exam_Question where Exam_ID = @eid

	update Student_Exam set Grade = (@grade/@ques_count)*100 where Exam_ID = @eid and Student_ID = @sid

GO
/****** Object:  StoredProcedure [dbo].[DeleteAnswer]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[DeleteAnswer] @qid int, @force bit = 0
as

	if @force = 1
	begin
		exec DeleteQuestion @qid
	end
	
	else
	begin
		begin try
			delete from Question_Answer where Question_ID = @qid
		end try

		begin catch
			select 'Couldn''t delete, answer is refrenced in another table.'
		end catch
	end

GO
/****** Object:  StoredProcedure [dbo].[DeleteChoices]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[DeleteChoices] @qid int, @force bit = 0
as

	if @force = 1
	begin
		exec DeleteQuestion @qid
	end

	else
	begin
		begin try
			delete from Choice where Question_ID = @qid
		end try

		begin catch
			select 'Couldn''t delete, choice is refrenced in another table.'
		end catch
	end
GO
/****** Object:  StoredProcedure [dbo].[DeleteQuestion]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[DeleteQuestion] @qid int, @force bit = 0
as
	if @force = 1
	begin
		--Deleting dependents of Question
		delete from Choice where Question_ID = @qid
		delete from Question_Answer where Question_ID = @qid
		delete from Exam_Question where Question_ID = @qid
		delete from Choice where Question_ID = @qid

		declare @t table(Exam_ID int)

		--Deleting dependents of Exam
		insert into @t
		select Exam_ID from Student_Exam_Question_Solution where Question_ID = @qid
		delete from Student_Exam_Question_Solution where Question_ID = @qid
		delete from Student_Exam where Exam_ID in (select * from @t)
		

		delete from Exam where ID in (select * from @t)
		delete from Question where ID = @qid

		select 'Question Deleted Successfuly.'
	end

	else
	begin
		begin try
			delete from Question where ID = @qid
		end try

		begin catch
			select 'The question is refrenced in another table.
			If you want to force delete pass a second parameter with a value of 1'
		end catch
	end
GO
/****** Object:  StoredProcedure [dbo].[GetCourseTopics]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER proc [dbo].[GetCourseTopics] @cid int
as
	select Name from Topic where Course_ID = @cid
GO
/****** Object:  StoredProcedure [dbo].[InsertChoice]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[InsertChoice] @qid int, @c varchar(5000)
as
	insert into Choice values(@c,@qid)
	Return
;
GO
/****** Object:  StoredProcedure [dbo].[InsertQuestion]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[InsertQuestion] @type varchar(3), @statment varchar(MAX), @cid int, @id int OUTPUT
as
	insert into Question (Type,Statement,Course_ID) values(@type,@statment,@cid)
	select @id = IDENT_CURRENT('Question')
;
GO
/****** Object:  StoredProcedure [dbo].[InsertQuestionAnswer]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[InsertQuestionAnswer]  @qid int, @aid int
as
	insert into Question_Answer values(@qid, @aid)
GO
/****** Object:  StoredProcedure [dbo].[InsertQuestionWithChoices]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[InsertQuestionWithChoices] @type varchar(3), @statment varchar(MAX), @cid int, @answer int,
									  @c1 varchar(5000), @c2 varchar(5000), @c3 varchar(5000) = NULL, @c4 varchar(5000) = NULL
as
	declare @qid int, @aid int;
	exec InsertQuestion @type,@statment,@cid,@qid output

	
	exec InsertChoice  @qid, @c1
	exec InsertChoice  @qid, @c2
	
	if @type = 'MCQ'
	begin
		exec InsertChoice  @qid, @c3
		exec InsertChoice  @qid, @c4

		if @answer = 1
			select @aid = IDENT_CURRENT('Choice') - 3
		else if	@answer = 2
			select @aid = IDENT_CURRENT('Choice') - 2
		else if @answer = 3
			select @aid = IDENT_CURRENT('Choice') - 1
		else
			select @aid = IDENT_CURRENT('Choice')
	end

	else
	begin
		if @answer = 1
			select @aid = IDENT_CURRENT('Choice') - 1
		else
			select @aid = IDENT_CURRENT('Choice')
	end
	
	exec InsertQuestionAnswer @qid, @aid
GO
/****** Object:  StoredProcedure [dbo].[SelectChoices]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[SelectChoices] @qid int
as

	select ID, Text from Choice where Question_ID = ID
GO
/****** Object:  StoredProcedure [dbo].[SelectQuestionAnswer]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[SelectQuestionAnswer] @qid int
as

	select Answer from Question_Answer where Question_ID = @qid
	
	
	
GO
/****** Object:  StoredProcedure [dbo].[SelectQuestions]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[SelectQuestions] 
as
	select * from Question
GO
/****** Object:  StoredProcedure [dbo].[UpdateChoice]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[UpdateChoice] @cid int, @text varchar(5000)
as
	if exists(select * from Choice where ID = @cid) 
		update Choice set Text=@text where ID = @cid
	else
		select 'Couldn''t update choice, ID doesn''t exist'
GO
/****** Object:  StoredProcedure [dbo].[UpdateQuestion]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[UpdateQuestion] @qid int, @statment varchar(Max), @cid int
as
	if exists(select * from Question where ID = @qid) and exists(select * from Course where ID = @cid)
		update Question set Statement=@statment, Course_ID = @cid where ID = @qid
	else
		select 'Couldn''t update choice, either both or one of the IDs don''t exist'

GO
/****** Object:  StoredProcedure [dbo].[UpdateQuestionAnswer]    Script Date: 1/13/2023 1:08:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[UpdateQuestionAnswer] @qid int, @ans int
as
	if exists(select * from Choice where ID = @ans) and exists(select * from Question_Answer where Question_ID = @qid)
		update Question_Answer set Answer=@ans where Question_ID = @qid
	else
		select 'Couldn''t update choice, either both or one of the IDs don''t exist'

GO
