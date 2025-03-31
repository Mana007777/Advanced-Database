CREATE TABLE Hotels_Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeFullName VARCHAR(250) NOT NULL,
    DepartmentID INT,
    EmployeeEmail VARCHAR(200) UNIQUE NOT NULL,
    EmployeePhone VARCHAR(15),
    Address VARCHAR(255),
    HireDate DATE,
    Salary NUMBER(8,2),
    FOREIGN KEY (DepartmentID) REFERENCES Hotels_Departments(DepartmentID)
);
