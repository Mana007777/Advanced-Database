CREATE VIEW Receptionist_View AS 
SELECT BookingID, GuestID, RoomID, CheckInDate, CheckOutDate 
FROM Bookings_Booking;


--GRANT SELECT ON Receptionist_View TO Receptionist;
GRANT SELECT ON Receptionist_View TO Receptionist;

--Prevents exposing sensitive data to unauthorized users.

