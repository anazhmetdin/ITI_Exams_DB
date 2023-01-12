USE ITI_Exams;
GO

-- disable FK constraints
EXEC sp_MSForEachTable "ALTER TABLE ? NOCHECK CONSTRAINT all"

-- delete data in all tables
EXEC sp_MSForEachTable "DELETE FROM ?"
-- reset identity
EXEC sp_MSForEachTable "DBCC CHECKIDENT ('?', RESEED, 0);"

-- enable all constraints
exec sp_MSForEachTable "ALTER TABLE ? WITH CHECK CHECK CONSTRAINT all"