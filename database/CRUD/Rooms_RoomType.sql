--CREATE
INSERT INTO Rooms_RoomType (RoomTypeID, RoomTypeName, RoomTypeDescription) VALUES
(1, 'Single', 'A room with a single bed for one guest'),
(2, 'Double', 'A room with a double bed for two guests'),
(3, 'Suite', 'A spacious room with a separate living area');

--READ
SELECT * FROM Rooms_RoomType;

--UPDATE
UPDATE Rooms_RoomType
SET RoomTypeDescription = 'A room with a king-size bed for two guests'
WHERE RoomTypeID = 2;

--DELETE
DELETE FROM Rooms_RoomType WHERE RoomTypeID = 3;
