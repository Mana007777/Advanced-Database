--CREATE
INSERT INTO Hotels_Departments (DepartmentID, HotelID, DepartmentName) VALUES
(1, 1, 'Front Desk'),
(2, 2, 'Housekeeping');

--READ
SELECT * FROM Hotels_Departments WHERE HotelID = 1;

--UPDATE
UPDATE Hotels_Departments
SET DepartmentName = 'Guest Services'
WHERE DepartmentID = 1;

--DELETE
DELETE FROM Hotels_Departments WHERE DepartmentID = 2;


