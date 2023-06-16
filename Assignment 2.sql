--Q-1. Write an SQL query to print the first three characters of FIRST_NAME from Worker table.

select SUBSTRING(ename,1,4) as Name from emp

--Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

Select CHARINDEX('a',ename) as e  from emp where ename = 'Amitabh';

--Q-3. Write an SQL query to print the name of employees having the highest salary in each department.

SELECT ename, sal, dept FROM emp w WHERE sal = (SELECT MAX(sal) FROM emp WHERE dept = w.dept)

select *from emp