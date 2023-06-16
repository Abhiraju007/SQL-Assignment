--Q-15. Write an SQL query to fetch intersecting records of two tables.

SELECT * FROM [dbo].[Employees] INTERSECT SELECT *FROM [dbo].[Employee1]

--Q-16. Write an SQL query to show records from one table that another table does not have.

SELECT * FROM [dbo].[Employees]   EXCEPT SELECT * FROM [dbo].[Employee1]


