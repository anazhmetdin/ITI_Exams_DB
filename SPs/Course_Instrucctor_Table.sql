USE ITI_Exams
GO
-- SELECT Course_Instructor
CREATE PROC SelectCourseInstructor (@cID INT = NULL, @insID INT = NULL)
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Course_Instructor as C_I
		WHERE
		(@cID IS NULL OR C_I.Course_ID = @cID)
		AND
		(@insID IS NULL OR C_I.Instructor_ID = @insID)

	END TRY  
	BEGIN CATCH  
		select 'No Instructor for this course'
	END CATCH
END
GO

-- SELECT Course_Instructor
SelectCourseInstructor 
GO
SelectCourseInstructor 5
GO
SelectCourseInstructor NULL, 10;
GO
SelectCourseInstructor 4, 9;
GO
SelectCourseInstructor 100, 9; -- Empty no Course_Ins with these IDs
GO

---------------------------------------
-- INSERT Course_Instructor
CREATE or Alter PROC InsertCourseInstructor (@cID INT , @insID INT)
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		INSERT INTO ITI_Exams.dbo.Course_Instructor (Course_ID, Instructor_ID) VALUES (@cID, @insID)
	END TRY  
	BEGIN CATCH  
		select 'Could not insert Course_Instructor it exist cannot duplicate or Null'
	END CATCH
END;
GO

-- INSERT Course_Instructor Test
exec InsertCourseInstructor 2, 3 ; 
GO
SelectCourseInstructor  -- insered done
GO
exec InsertCourseInstructor 2, 3; -- 'Could not insert Course_Instructor it exist cannot duplicate or Null'
GO
exec InsertCourseInstructor Null, 3; -- 'Could not insert Course_Instructor it exist cannot duplicate or Null'
GO

---------------------------------------
-- UPDATE Course_Instructor 
CREATE or Alter PROC UpdateCourseInstructor (@insID INT, @cID INT )
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		 IF EXISTS (select * from ITI_Exams.dbo.Course_Instructor as C_I where C_I.Course_ID = @cID)
		 and
		    EXISTS (select * from ITI_Exams.dbo.Course_Instructor as C_I where C_I.Instructor_ID = @insID)
		BEGIN
			UPDATE C_I
			SET C_I.Course_ID = @cID
			FROM ITI_Exams.dbo.Course_Instructor as C_I
			WHERE C_I.Instructor_ID = @insID
        END
		ELSE
		select 'Could not update Course by new Instructor'
	END TRY  
	BEGIN CATCH  
		select 'Could not update Course_Instructor, invalid ID or Null'
	END CATCH
END;
GO
-- Update Test
SelectCourseInstructor 
GO
UpdateCourseInstructor 2, 5
GO

--  Delete Course_Instructor
-------------------------------------------------------
CREATE or Alter PROC DeleteCourseInstructor (@cID INT = NULL, @insID INT = NULL)
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		 IF EXISTS (select * from ITI_Exams.dbo.Course_Instructor as C_I where C_I.Course_ID = @cID)
		BEGIN
			Delete C_I
			FROM ITI_Exams.dbo.Course_Instructor as C_I
			WHERE C_I.Course_ID = @cID
        END
		ELSE IF EXISTS (select * from ITI_Exams.dbo.Course_Instructor as C_I where C_I.Instructor_ID = @insID)
		    Delete C_I
		    FROM ITI_Exams.dbo.Course_Instructor as C_I
		    WHERE C_I.Instructor_ID = @insID
		ELSE
		select 'Could not delete Course, Invalid ID or Null'
	END TRY  
	BEGIN CATCH  
		select 'Could not Delete Course_Instructor, invalid ID or Null'
	END CATCH
END;
GO

-- Delete Test
SelectCourseInstructor 
GO
DeleteCourseInstructor 2;         -- this delete the course with ID = 2 and all Instructors who teches that course
GO
DeleteCourseInstructor NULL,  4;  -- this delete the Instructor with ID = 4 and the Course which is teached by him
GO
DeleteCourseInstructor 9, 105;      -- first this looks for Course with ID = 9, if exist it deletes all courses with this ID
                                    -- else it looks for the Instructor whose ID = 5 if exist it delete it with his course
								    -- else show the error message 
