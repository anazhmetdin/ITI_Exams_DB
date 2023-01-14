USE ITI_Exams;
GO
---------------------------------------
-- SELECT
CREATE OR ALTER PROC SelectStudent
@studentID INT = NULL, @fname varchar(16) = NULL, @lname varchar(16) = NULL, @gender varchar(1) = NULL,@phone varchar(13)=NULL,
@address varchar(256)=NULL, @university varchar(128)=NULL,@faculty varchar(128)=NULL,@gradyear int=NULL,
@grade varchar(2) =NULL , @dep_id int =NULL
WITH ENCRYPTION
AS
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Student ST
		WHERE
		(@studentID IS NULL OR ST.ID = @studentID )
		AND
		(@fname IS NULL OR ST.FName = @fname or @fname='')
		AND
		(@lname IS NULL OR ST.LName = @lname or @lname='')
		AND
		(@gender IS NULL OR ST.Gender = @gender or @gender='' )
		AND
		(@phone IS NULL OR ST.Phone = @phone)
		AND
		(@address IS NULL OR ST.Address = @address or @address='')
		AND
		(@university IS NULL OR ST.University = @university or @university='')
		AND
		(@faculty IS NULL OR ST.Faculty = @faculty or @faculty='')
		AND
		(@gradyear IS NULL OR ST.GradYear = @gradyear)
		AND
		(@grade IS NULL OR ST.Grade = @grade or @grade='')
		AND
		(@dep_id IS NULL OR ST.Department_ID = @dep_id)
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not select student info', 16
	END CATCH
GO
---------------------------------------

-- INSERT
CREATE OR ALTER PROC InsertStudent
@studentID INT, @fname varchar(16), @lname varchar(16), @gender varchar(1),@phone varchar(13)=NULL,
@address varchar(256)=NULL, @university varchar(128)=NULL,@faculty varchar(128)=NULL,@gradyear int=NULL,
@grade varchar(2) =NULL , @dep_id int =NULL
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		INSERT INTO ITI_Exams.dbo.Student VALUES  (@fname, @lname,@gender,@phone,@address,@university,@faculty,@gradyear,@grade,@dep_id)
		
		SET @studentID = SCOPE_IDENTITY()
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not insert student info', 16
	END CATCH
END;
GO
---------------------------------------

-- UPDATE
CREATE OR ALTER PROC UpdateStudentExamQuestionAnswer
@studentID INT, @fname varchar(16), @lname varchar(16), @gender varchar(1),@phone varchar(13),
@address varchar(256), @university varchar(128),@faculty varchar(128),@gradyear int,
@grade varchar(2) , @dep_id int , @all BIT = 0
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@studentID IS NOT NULL
			OR
			@fname IS NOT NULL
			OR
			@lname IS NOT NULL
			OR
			@gender IS NOT NULL
			or
			@dep_id IS NOT NULL

			OR
			@all = 1)
			UPDATE st
			SET st.Phone = @phone 
			FROM ITI_Exams.dbo.Student st
			WHERE st.ID = @studentID
			AND st.Department_ID = @dep_id
			AND st.FName = @fname
			AND st.LName=@lname
			AND st.Gender=@gender
			AND st.Address=@address
			AND st.Phone=@phone
			AND st.Grade=Grade
			AND st.GradYear=GradYear
			AND st.University=@university
			AND st.Faculty=@faculty

	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not update student info', 16
	END CATCH
END;
GO
---------------------------------------

---------------------------------------

-- DELETE
CREATE OR ALTER PROC UpdateStudentExamQuestionAnswer
@studentID INT, @fname varchar(16), @lname varchar(16), @gender varchar(1),@phone varchar(13),
@address varchar(256), @university varchar(128),@faculty varchar(128),@gradyear int,
@grade varchar(2) , @dep_id int , @all BIT = 0
WITH ENCRYPTION
AS
BEGIN
	BEGIN TRY
		IF (@studentID IS NOT NULL
			OR
			@fname IS NOT NULL
			OR
			@lname IS NOT NULL
			OR
			@gender IS NOT NULL
			or
			@dep_id IS NOT NULL

			OR
			@all = 1)
		DELETE ST
			FROM ITI_Exams.dbo.Student ST
			WHERE
			(@studentID IS NULL OR ST.ID = @studentID)
			AND
			(@fname IS NULL OR ST.FName = @fname)
			AND
			(@lname IS NULL OR ST.LName = @lname)
			AND
			(@gender IS NULL OR ST.Gender = @gender)
	END TRY  
	BEGIN CATCH  
		THROW 500, 'Could not delete student Info', 16
	END CATCH
END;
GO