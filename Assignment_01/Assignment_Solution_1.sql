-- Creating a table Student
CREATE TABLE Student (
  RollNo INT ,
  Name VARCHAR(50),
  Dept VARCHAR(20),
  Age INT,
  Phone VARCHAR(15)
);



-- Creating a table Course
CREATE TABLE Course (
  CourseID INT ,
  CourseName VARCHAR(50),
  Credits INT
);


-- Adding a new column City in table Student
ALTER TABLE Student ADD City VARCHAR(20);

-- Adding a new column Semester in table Student
ALTER TABLE Student ADD Semester INT;

-- Renaming column Phone to MobileNo in table Student.
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;


-- Deleting (drop) the table Course                                  
DROP TABLE Course;


-- Inserting 5 student records into Student
INSERT INTO Student VALUES (221, 'Sanskar', 'CSE', 21, '7698521455', 'Muzaffarpur', 5);
INSERT INTO Student VALUES (598, 'Amarjeet', 'ME', 20, '9112233445', 'Calcutta', 5);
INSERT INTO Student VALUES (564, 'Himanshu', 'EEE', 20, '6112365478', 'BiharSharif', 6);
INSERT INTO Student VALUES (258, 'Ashu', 'ME', 22, '8001452369', 'Sitamarhi', 8);
INSERT INTO Student VALUES (991, 'Anand', 'CSE', 18, '7225236545', 'Vaishali', 5);


-- Displaying all records from Student.
SELECT * FROM Student;

-- Displaying only RollNo and Name from Student
SELECT RollNo , Name FROM Student;

-- Displaying all students from department "CSE"                                                                                                              
SELECT * FROM Student WHERE Dept='CSE';

-- Displaying all students whose age is greater than 20.                                                                           
SELECT * FROM Student WHERE Age > 20 ;

-- Updating the department of RollNo = 564 to "ECE".                              
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 564;

-- Updating the city of student "Ashu" to "Patna"
UPDATE student SET city = 'Patna' WHERE name = 'Ashu';

-- Increasing age of all students by 1 year
UPDATE Student SET Age=Age+1;

-- Deleting record of student whose RollNo = 991
DELETE FROM Student WHERE RollNo = 991;

-- Deleting all records from Student (table should remain)
DELETE FROM Student;
