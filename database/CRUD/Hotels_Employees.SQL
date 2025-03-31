--CREATE
INSERT INTO Hotels_Employees (EmployeeID, DepartmentID, EmployeeName, EmployeePosition) VALUES
(1, 1, 'John Doe', 'Manager'),
(2, 2, 'Jane Smith', 'Housekeeper');

--READ
SELECT * FROM Hotels_Employees WHERE DepartmentID = 1;

--UPDATE
UPDATE Hotels_Employees
SET EmployeePosition = 'Assistant Manager'
WHERE EmployeeID = 1;

--DELETE
DELETE FROM Hotels_Employees WHERE EmployeeID = 2;

