--Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.

SELECT * FROM Worker WHERE YEAR(JOINING_DATE) = 2014 AND MONTH(JOINING_DATE) = 02;

--Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

SELECT name, COUNT(NAME) as Duplicate FROM Employees GROUP BY name HAVING COUNT(name) > 1;

--Q-3. How to remove duplicate rows from Employees table.

CREATE TABLE Employee1 (
    ID INT PRIMARY KEY  NOT NULL,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    COUNTRY VARCHAR(50)
);
INSERT INTO Employee1 VALUES 
(1,'ADITYA','VARMA','INDIA'),
(2,'ADITYA','VARMA','INDIA'),
(3,'ADITYA','VARMA','INDIA'),
(4,'STEVE','JOBS','USA'),
(5,'STEVE','JOBS','USA'),
(6,'STEVE','JOBS','USA');

DELETE e1  from employee1 e1 INNER JOIN employee1 e2 on e1.id > e2.id 
AND e1.FIRST_NAME = e2.FIRST_NAME AND e1.LAST_NAME = e2.LAST_NAME AND e1.COUNTRY = e2.COUNTRY;

select * from Employee1