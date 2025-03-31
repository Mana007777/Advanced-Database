--This view provides detailed information about guests' stays, including hotel name, room number, and check-in/check-out dates.
CREATE VIEW GuestStayDetails AS
SELECT G.GuestFirstName, G.GuestLastName, 
       H.Name AS HotelName, R.RoomNumber, 
       B.CheckInDate, B.CheckOutDate, 
       B.StayDuration
FROM Hotels_Guests G
JOIN Bookings_Booking B ON G.GuestID = B.GuestID
JOIN Hotels H ON B.HotelID = H.HotelID
JOIN Rooms R ON B.RoomID = R.RoomID;
