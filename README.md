# tsql-timestamp-db-backup
A simple set of two script to backup your DB's with timestamp

# Setting up db_backup.sql
First thing to do, is to set the required parameters in `db_backup.sql`:
```
SET @bak_db_name = 'The_name_you_want_for_backup-' + @date + '.bak'
SET @bak_db_path = 'The_folder_to_store_your_DB' + @bak_db_name	

BACKUP DATABASE your_db TO DISK = @bak_db_path
```
In the first line, just type the name for the backup. The output is like:
`my-backup-2017-06-01.bak`

Next, define a path to store the new backup, so you can just add something like `C:\my-backups`.

Finally, choose the DB you want to perform a backup simply typing its name instead of `your-db`.

# Script for the trick
Ok, now that db_backup.sql is able to do the magic, it's time to perform the backup. 

In `backup.bat` you will have to edit this simple line, adjusting parameters to fit your configuration.

```sqlcmd -S server_name\instance_name -i C:\path\to\db_backup.sql```

Double-click on the script and enjoy your backup with timestamp!

# Zip backup
Currently working on how to zip backup file