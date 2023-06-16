--Ques Write an SQL query to show the top n (say 10) records of a table.

select top 10 *from [dbo].[Employees]

--Q Write an SQL query to determine the nth (say n=5) highest salary from a table.

Select top 1 [SALARY] from (select distinct top 5 [SALARY] from [dbo].[Employees] order by  [SALARY] desc) as Result order by [SALARY]
