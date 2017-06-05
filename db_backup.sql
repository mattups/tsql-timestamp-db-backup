-- Declaring variables names and type
DECLARE @bak_db_path varchar(100)
DECLARE @date varchar(10)
DECLARE @bak_db_name varchar(100)

-- Setting variables value
SET @date = CONVERT(date, GETDATE(), 112)
SET @bak_db_name = 'The_name_you_want_for_backup-' + @date + '.bak'
SET @bak_db_path = 'The_folder_to_store_your_DB' + @bak_db_name	

-- Backup query execution
BACKUP DATABASE your_db TO DISK = @bak_db_path
