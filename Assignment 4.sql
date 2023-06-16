--Q1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

Select ename, REPLACE(ename,'a','A') as New_Name from emp

--Q-2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

select *from emp order by ename asc, dept desc

--Q3 Write an SQL query to fetch the names of workers who earn the highest salary.

Select  top 1 ename from (select distinct top 1 sal, ename from emp order by sal desc) as result order by sal asc