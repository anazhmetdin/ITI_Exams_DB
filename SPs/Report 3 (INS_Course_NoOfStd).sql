USE ITI_Exams
GO

-- Return the Courses and the Number of Students per each Course which teached by specific Instructor ID 
CREATE OR ALTER PROC ReturnInstructorCourseStudents (@insID INT)
AS
BEGIN
	BEGIN TRY
	   IF EXISTS (select * from ITI_Exams.dbo.Instructor as I where I.ID = @insID)
	   BEGIN
		    SELECT I.Name as 'Instrctor Name', C.Name as 'Course Name', COUNT(S.ID) as 'Number Of Studtents'
		    FROM ITI_Exams.dbo.Course_Instructor as C_I inner join ITI_Exams.dbo.Instructor as I
		    on C_I.Instructor_ID = I.ID inner join ITI_Exams.dbo.Course as C
		    on C_I.Course_ID     = C.ID inner join ITI_Exams.dbo.Student_Course as S_C
		    on S_C.Course_ID     = C.ID inner join ITI_Exams.dbo.Student as S
		    on S_C.Student_ID    = S.ID
		    where I.ID = @insID
                    group by I.Name, C.Name
           END
	   ELSE
	       select 'No Instructor, Invalid ID or NULL'
	END TRY  
	BEGIN CATCH  
		select 'No Instructor, Invalid ID or NULL'
	END CATCH
END
GO
