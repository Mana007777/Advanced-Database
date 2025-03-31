--CREATE
INSERT INTO HotelService_Requests (RequestID, BookingID, ServiceID, RequestDate) VALUES
(1, 1, 1, TO_DATE('2023-10-01', 'YYYY-MM-DD')),
(2, 2, 2, TO_DATE('2023-10-05', 'YYYY-MM-DD'));
 
--READ
SELECT * FROM HotelService_Requests WHERE BookingID = 1;

--UPDATE
UPDATE HotelService_Requests
SET RequestDate = TO_DATE('2023-10-10', 'YYYY-MM-DD')
WHERE RequestID = 2;

--DELETE
DELETE FROM HotelService_Requests WHERE RequestID = 1;
