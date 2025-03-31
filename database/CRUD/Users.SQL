--CREATE
INSERT INTO Users (UserID, HotelID, Username, Password) VALUES
(1, 1, 'admin', 'password123'),
(2, 2, 'user', 'userpassword');

--READ
SELECT * FROM Users WHERE HotelID = 1;

--UPDATE
UPDATE Users
SET Password = 'newpassword'
WHERE UserID = 1;

--DELETE
DELETE FROM Users WHERE UserID = 2;
