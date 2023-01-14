USE ITI_Exams
GO

-- SELECT Topic
CREATE PROC SelectTopic (@id INT = NULL, @tName varchar(30) = NULL)
WITH ENCRYPTION
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

-- SELECT Topic Test
SelectTopic 
GO
SelectTopic 5
GO
SelectTopic NULL, 'RDBMS';
GO
SelectTopic NULL, '11';
GO

---------------------------------------
-- INSERT Topic
CREATE PROC InsertTopic (@tName varchar(16), @id INT OUTPUT)
WITH ENCRYPTION
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

-- INSERT Topic Test
INSERT INTO ITI_Exams.dbo.Topic (Name) VALUES ('HTML')
GO
DECLARE @topic_id INT;
exec InsertTopic 'HTML', @topic_id OUTPUT;
GO
InsertTopic NULL;
GO

---------------------------------------
-- UPDATE Topic with 2 options by id or by name
CREATE PROC UpdateTopic (@id INT, @oldName varchar(30), @newName varchar(30))
WITH ENCRYPTION
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
		THROW 500, 'Could not update topic', 16
	END CATCH
END;
GO

-- UPDATE TEST
SelectTopic 6      -- this is RDBMS
GO
UpdateTopic NULL, 'RDBMS', 'rdbms';
GO
SelectTopic 6      -- Now, this became rdbmms after update
GO
UpdateTopic 5, NULL, 'MSS';  -- this is Sql Server
GO
SelectTopic 6        -- Now, this became MSS after update
GO
UpdateTopic NULL, NULL, 'OSEO'; -- Could not Update topic
GO

---------------------------------------
-- DELETE Topic with 2 options by id or by name
CREATE OR ALTER PROC DeleteTopic (@id INT , @tName varchar(30))
WITH ENCRYPTION
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

-- DELETE TEST
SelectTopic 9      -- this is CSS
GO
DeleteTopic 9, NULL;   -- Delete CSS 
GO
SelectTopic 5      -- Now, this became OSE after update
GO
DeleteTopic NULL, 'rdbms';  -- this delete rdbms which has an ID = 6
GO
