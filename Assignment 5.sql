--Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

select NAME from Employees where NAME not in ('Vipul','satish')

---Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

select *from Employees where NAME like('%h')

---Q-3. Write a query to validate Email of Employee.

SELECT * FROM emp WHERE email LIKE "_%@_%._%"