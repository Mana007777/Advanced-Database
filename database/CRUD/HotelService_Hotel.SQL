--CREATE
INSERT INTO HotelService_Hotel (HotelID, ServiceID) VALUES
(1, 1),
(2, 2);

--READ
SELECT * FROM HotelService_Hotel WHERE HotelID = 1;

--UPDATE
UPDATE HotelService_Hotel
SET ServiceID = 2
WHERE HotelID = 1;

--DELETE
DELETE FROM HotelService_Hotel WHERE HotelID = 2;
