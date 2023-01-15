USE ITI_Exams
GO

-- SELECT Topic
CREATE or Alter  PROC SelectTopic (@id INT = NULL, @tName varchar(30) = NULL)
AS
BEGIN
	BEGIN TRY
		SELECT * FROM ITI_Exams.dbo.Topic as t
		WHERE
		(@id IS NULL OR t.ID = @id)
		AND
		(@tName IS NULL OR t.Name = @tName)

	END TRY  
	BEGIN CATCH  
		select 'No Topic with this ID or Name'
	END CATCH
END
GO

---------------------------------------
-- INSERT Topic
CREATE or Alter PROC InsertTopic (@tName varchar(16), @id INT OUTPUT)
AS
BEGIN
	BEGIN TRY
		INSERT INTO ITI_Exams.dbo.Topic (Name) VALUES (@tName)
		SET @id = SCOPE_IDENTITY()
	END TRY  
	BEGIN CATCH  
		select 'Could not insert topic'
	END CATCH
END;
GO

---------------------------------------
-- UPDATE Topic with 2 options by id or by name
CREATE or Alter PROC UpdateTopic (@id INT, @oldName varchar(30), @newName varchar(30))
AS
BEGIN
	BEGIN TRY
		IF (@oldName IS NOT NULL or @id IS NOT NULL)
		BEGIN
			UPDATE t
			SET t.Name = @newName
			FROM ITI_Exams.dbo.Topic as t
			WHERE t.ID = @id or t.Name = @oldName
                END
		ELSE
		select 'Could not update topic'
	END TRY  
	BEGIN CATCH  
		select 'Could not update topic'
	END CATCH
END;
GO

---------------------------------------
-- DELETE Topic with 2 options by id or by name
CREATE OR ALTER PROC DeleteTopic (@id INT , @tName varchar(30))
AS
BEGIN
	BEGIN TRY
		IF(@tName IS NOT NULL or @id IS NOT NULL)
		BEGIN
			DELETE t
			FROM ITI_Exams.dbo.Topic as t
			WHERE t.ID = @id or t.Name = @tName
                END
		ELSE
		select 'Could not update topic'
	END TRY  
	BEGIN CATCH  
	  select 'Could not update topic'
	END CATCH
END;
GO
