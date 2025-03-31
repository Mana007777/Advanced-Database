--instead of
SELECT * FROM Bookings_Booking 
JOIN Hotels_Guests ON Bookings_Booking.GuestID = Hotels_Guests.GuestID;

--use
SELECT b.BookingID, g.GuestFirstName, g.GuestLastName, b.CheckInDate, b.CheckOutDate
FROM Bookings_Booking b
JOIN Hotels_Guests g ON b.GuestID = g.GuestID;

--Using table aliases (b and g) makes queries faster and more readable.
--Selecting only needed columns improves query efficiency.