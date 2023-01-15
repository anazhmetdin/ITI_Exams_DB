declare s_cur cursor
	for SELECT TABLE_NAME
		FROM INFORMATION_SCHEMA.TABLES
		WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG='ITI_Exams' and TABLE_NAME != 'sysdiagrams'

declare @name nvarchar(50)
open s_cur 
fetch s_cur into @name
begin
	While @@fetch_status=0
	begin
		declare @tmp nvarchar(200) = 'select * from ' + @name 

		EXEC sp_executesql @tmp
		fetch s_cur into @name
	end
end
close s_cur
deallocate s_cur
--------------------------

-- select procs in db

SELECT * 
FROM ITI_Exams.INFORMATION_SCHEMA.ROUTINES\
WHERE ROUTINE_TYPE = 'PROCEDURE'
