--Q1 Write an SQL query to determine the 5th highest salary without using TOP or limit method.

SELECT * FROM (  
SELECT ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS rownumber,Salary  
FROM [dbo].[Employees] )  
AS foo  
WHERE rownumber = 5


--Q-2. Write an SQL query to fetch the list of employees with the same salary.

 select distinct e.name,e.salary from[dbo].[Employees]  e join [dbo].[Employees] a on  e.salary = a.salary and e.name != a.name;
