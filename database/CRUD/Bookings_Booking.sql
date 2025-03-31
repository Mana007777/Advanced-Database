--CREATE 
INSERT INTO Bookings_Booking (BookingID, HotelID, RoomID, GuestID, BookingDate, BookingStatus) VALUES
(1, 1, 1, 1, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 'Confirmed'),
(2, 2, 3, 2, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 'Pending');

--READ
SELECT * FROM Bookings_Booking WHERE GuestID = 1;

--UPDATE
UPDATE Bookings_Booking
SET BookingStatus = 'Checked-In'
WHERE BookingID = 1;

--DELETE
DELETE FROM Bookings_Booking WHERE BookingID = 2;
