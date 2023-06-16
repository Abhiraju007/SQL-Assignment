--13. Write an SQL query to show only odd rows from a table.

SELECT *
FROM (
    SELECT *, Row_Number() OVER(ORDER BY [EMPLOYEE_ID]) AS RowNumber 
            --Row_Number() starts with 1
    FROM [dbo].[Employees]
) t
WHERE t.RowNumber % 2 = 1 --Even
ORDER BY [EMPLOYEE_ID]

--Q-14. Write an SQL query to clone a new table from another table.

CREATE TABLE CloneWorker (
    WORKER_ID INT NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    DEPARTMENT VARCHAR(50),
    JOINING_DATE DATETIME
);
-- Code to Clone content of a table to another table
INSERT INTO CloneWorker SELECT * FROM Employees;