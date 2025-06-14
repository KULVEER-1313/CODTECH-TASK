# Step 1: Create a sample database called BackupDemo
CREATE DATABASE BackupDemo;

# Step 2: Use the database
USE BackupDemo;

# Step 3: Create a table to store student data
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Department VARCHAR(100)
);

# Step 4: Insert some sample data
INSERT INTO Students (StudentID, StudentName, Department) VALUES
(1, 'Aarav Patel', 'Computer Science'),
(2, 'Meera Desai', 'Mechanical'),
(3, 'Raj Shah', 'Civil');

# Step 5: Verify data is inserted
SELECT * FROM Students;

# Step 6: Exit MySQL to perform backup using mysqldump
# This command is to be run in your terminal or CMD
# Make sure you replace 'root' and 'your_password' with actual credentials

# mysqldump -u root -p BackupDemo > backupdemo.sql

# After running the above command, you will be prompted to enter the password.
# A file called 'backupdemo.sql' will be created in your working directory.

# Step 7: Simulate a failure by dropping the database
DROP DATABASE BackupDemo;

# Step 8: Restore the database using the backup file
# Again, run this in your terminal

# mysql -u root -p < backupdemo.sql

# After entering your password, the database will be restored

# Step 9: Recheck the data after restoration
# Login to MySQL and run:
USE BackupDemo;
SELECT * FROM Students;


