USE ITI_Exams;

-- SELECT_
CREATE OR ALTER PROC SelectStdCourses 
@StdID INT = NULL, @CrsID INT = NULL
AS
	BEGIN TRY
		SELECT c.Name FROM ITI_Exams.dbo.Student_Course SC  join Course c on SC.Course_ID = c.ID 
		WHERE SC.Student_ID = @StdID --and SC.Course_ID = @CrsID
		--(@StdID IS NULL OR SC.Student_ID = @StdID)
		-- AND
		--(@CrsID IS NULL OR SC.Course_ID = @CrsID)
		
	END TRY  
	BEGIN CATCH  
		select 'Could not select student exam'
	END CATCH

	exec SelectStdCourses 1
GO

SelectStdCourse 

---------------------------------------

-- INSERT
CREATE OR ALTER PROC InsertStdCourse 
@StdID INT, @CrsID INT 
AS
BEGIN
	BEGIN TRY
		INSERT INTO Student_Course VALUES (@StdID, @CrsID)
	END TRY  
	BEGIN CATCH  
		select 'Could not insert student exam'
	END CATCH
END;
GO

exec InsertStdCourse  35, 4




---------------------------------------

-- DELETE
CREATE OR ALTER PROC DeleteStdCourse
@StdID INT, @CrsID INT 
AS
BEGIN
		IF (@StdID IS NULL and @CrsID IS NOT NULL)
			DELETE Student_Course
			FROM ITI_Exams.dbo.Student_Course SC
			WHERE SC.Course_ID = @CrsID and SC.Student_ID = @StdID
		ELSE
			select 'Couldn''t Delete' 
END;
GO