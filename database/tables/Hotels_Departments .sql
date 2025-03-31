CREATE TABLE Hotels_Departments (
    DepartmentID INT PRIMARY KEY,
    HotelID INT,
    DepartmentName VARCHAR(200) UNIQUE NOT NULL,
    EstablishmentDate DATE,
    ManagerID INT,
    Location VARCHAR(250),
    Description VARCHAR(250),
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);
