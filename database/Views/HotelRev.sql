--This view shows the total revenue for each hotel from bookings.
CREATE VIEW HotelRevenue AS
SELECT H.HotelID, H.Name AS HotelName, 
       SUM(B.BookingAmount) AS TotalRevenue
FROM Hotels H
JOIN Bookings_Booking B ON H.HotelID = B.HotelID
GROUP BY H.HotelID, H.Name;
