create database Employee
use Employee
CREATE TABLE Empl(
emp_id INT PRIMARY KEY,
name VARCHAR(21) NOT NULL,
department VARCHAR(25) NOT NULL,
experince INT NOT NULL);
INSERT INTO Empl(emp_id,name,department,experince ) VALUES 
(66,'Dinesh','WEB DEVELOPMENT',4),
(77,'Rose','WEB DEVELOPMENT',4),
(122,'Meow','WEB DEVELOPMENT',3),
(133,'Kitty','WEB DEVELOPMENT',3);
SELECT * FROM Empl;

ALTER TABLE Empl
ADD SALARY VARCHAR(40) not null;
UPDATE Empl SET SALARY = '75000' WHERE emp_id = 66;
 UPDATE Empl SET SALARY = '70000' WHERE emp_id = 77;
 UPDATE Empl SET SALARY = '80000' WHERE emp_id = 122;
 UPDATE Empl SET SALARY = '85000' WHERE emp_id = 133;