--Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
 
 select RTRIM(ename) as Name from emp

 --Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

 select distinct(dept) as dept, len(dept) as lengt from emp

 --Q-3. Write an SQL query to fetch nth max salaries from a table.

select top 1 sal from (select Distinct top 1 sal from emp order by sal desc) as result order by sal

select top 15 sal from emp order by sal desc