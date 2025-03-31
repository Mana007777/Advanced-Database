--Instead of
SELECT * FROM Bookings_Booking WHERE GuestID = 1;

--use

SELECT BookingID, RoomID, HotelID, CheckInDate, CheckOutDate, Status 
FROM Bookings_Booking WHERE GuestID = 1;


--Avoid SELECT * and retrieve only the necessary columns to reduce memory usage.