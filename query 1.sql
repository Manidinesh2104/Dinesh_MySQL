create database Samples
use Samples
CREATE TABLE Student(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Student(reg_no,name,department,year) VALUES 
(66,'DK','AI&DS',4),
(77,'KD','AI&DS',4),
(122,'XXX','CS',3),
(133,'YYY','IT',3);
SELECT * FROM student;
UPDATE student
SET NAME='ROSE',
department='BCA',
year=3 WHERE reg_no =122;

INSERT INTO student(reg_no,name,department,year)
VALUES(145,'king','MSC CS,2');
 

ALTER TABLE student
ADD phone_num VARCHAR(13);
UPDATE student
 SET phone_num = '9361126426' WHERE reg_no = 66;
 UPDATE student
 SET phone_num = '9361126426' WHERE reg_no = 77;
 UPDATE student
 SET phone_num = '9361126426' WHERE reg_no = 122;
 UPDATE student
 SET phone_num = '9361126426' WHERE reg_no = 133;
 
 SELECT COUNT(*) AS tot_Student FROM Student;
 SELECT MAX(year) AS max_yr FROM Student;
  SELECT MIN(year) AS min_yr FROM Student;
  
  SELECT department,count(*) AS department_count FROM Student GROUP BY department;
  
  select * from Student order by year asc;
  select * from Student order by name;
  select * from Student order by year desc;
  
  SELECT UPPER(department) AS dep_upr FROM Student;
  SELECT UPPER(name) AS name_up FROM Student;
  SELECT LOWER(name) AS name_up FROM Student;
  SELECT LEFT(name,2) AS srt FROM Student;
  SELECT name,LENGTH(name) AS name_ln FROM Student;
  SELECT CONCAT(name,' - ',department)AS combine FROM Student;
  SELECT name,year + 1 AS nx_yr FROM Student;
  SELECT reg_no,MOD(reg_no,2) AS odr FROM Student;
  ALTER TABLE Student
  ADD Date_Detail DATE;
  SELECT * FROM Student;
  UPDATE Student SET Date_Detail='2021-08-18' WHERE reg_no=66;
  UPDATE Student SET Date_Detail='2021-08-18' WHERE reg_no=77;
  UPDATE Student SET Date_Detail='2021-08-18' WHERE reg_no=122;
  UPDATE Student SET Date_Detail='2021-08-18' WHERE reg_no=133;
  SELECT CURDATE();
  SELECT CURTIME();
  SELECT reg_no,name,YEAR(Date_Detail) AS yr FROM Student;
