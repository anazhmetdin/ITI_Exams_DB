-- SELECT_
CREATE OR ALTER PROC SelectDeptMngr
@MngrID INT = NULL, @DeptID INT = NULL
AS
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Department_Manager DeptMngr
		WHERE DeptMngr.Manager_ID = @MngrID and DeptMngr.Department_ID = @DeptID
		--(@MngrID IS NULL OR )
		-- AND
		--(@DeptID IS NULL OR )
		
	END TRY  
	BEGIN CATCH  
		select 'Could not delete student exam'
	END CATCH
GO



---------------------------------------

-- INSERT
CREATE OR ALTER PROC InsertDeptMngr
@MngrID INT, @DeptID INT
AS
BEGIN
	BEGIN TRY
		INSERT INTO ITI_Exams.dbo.Department_Manager VALUES (@DeptID, @MngrID)
	END TRY  
	BEGIN CATCH  
		select 'Could not delete student exam'
	END CATCH
END
GO

---------------------------------------

-- UPDATE
CREATE OR ALTER PROC UpdateDeptMngr 
@MngrID INT, @DeptID INT, @all BIT = 0
AS
BEGIN
	BEGIN TRY
		IF (@MngrID IS NOT NULL and @DeptID IS NOT NULL)
			UPDATE Department_Manager  
			SET Department_Manager.Manager_ID = @MngrID
			--FROM ITI_Exams.dbo.Department_Manager DeptMngr
			WHERE Department_Manager.Department_ID = @DeptID
	END TRY  
	BEGIN CATCH  
		select 'Could not delete student exam'
	END CATCH
END;
GO


---------------------------------------

-- DELETE
CREATE OR ALTER PROC DeleteDeptMngr
@MngrID INT, @DeptID INT
AS
BEGIN
	BEGIN TRY
		IF (@MngrID IS NOT NULL OR @DeptID IS NOT NULL)
			DELETE DeptMngr
			FROM ITI_Exams.dbo.Department_Manager DeptMngr
			WHERE DeptMngr.Manager_ID = @MngrID and DeptMngr.Department_ID = @DeptID
			--(@MngrID IS NULL OR )
			-- AND
			--(@DeptID IS NULL OR DeptMngr.Department_ID = @DeptID)
	END TRY  
	BEGIN CATCH  
		select 'Could not delete student exam'
	END CATCH
END;
GO