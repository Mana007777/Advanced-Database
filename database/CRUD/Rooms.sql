--CREATE
INSERT INTO Rooms (RoomID, HotelID, RoomTypeID, RoomNumber, RoomPrice) VALUES
(1, 1, 2, '101', 150.00),
(2, 1, 1, '102', 100.00),
(3, 2, 3, '201', 250.00);

--READ
SELECT * FROM Rooms WHERE HotelID = 1;

--UPDATE
UPDATE Rooms
SET RoomPrice = 120.00
WHERE RoomID = 2;

--DELETE
DELETE FROM Rooms WHERE RoomID = 3;
