--CREATE
INSERT INTO HotelService_Services (ServiceID, ServiceName, ServiceDescription) VALUES
(1, 'Room Service', 'Food and beverage service in the room'),
(2, 'Spa', 'Relaxing spa treatments for guests');

--READ
SELECT * FROM HotelService_Services;

--UPDATE
UPDATE HotelService_Services
SET ServiceDescription = 'Luxurious spa treatments for guests'
WHERE ServiceID = 2;

--DELETE
DELETE FROM HotelService_Services WHERE ServiceID = 1;
