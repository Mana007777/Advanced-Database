-- Total Revenue for Each Hotel
SELECT H.Name AS HotelName, 
       SUM(B.BookingAmount) AS TotalRevenue
FROM Hotels H
JOIN Bookings_Booking B ON H.HotelID = B.HotelID
GROUP BY H.Name;

-- Guests with the Longest Stay Duration
SELECT G.GuestFirstName, G.GuestLastName, G.GuestEmail, B.StayDuration
FROM Hotels_Guests G
JOIN Bookings_Booking B ON G.GuestID = B.GuestID
ORDER BY B.StayDuration DESC
FETCH FIRST 10 ROWS ONLY;

--Booking Status and Payment Information
SELECT B.BookingID, B.Status, B.BookingAmount, P.PaymentAmount, P.PaymentMethod
FROM Bookings_Booking B
JOIN Bookings_Payments P ON B.BookingID = P.BookingID;

--Average Stay Duration per Hotel
SELECT H.Name AS HotelName, 
       AVG(B.StayDuration) AS AverageStayDuration
FROM Hotels H
JOIN Bookings_Booking B ON H.HotelID = B.HotelID
GROUP BY H.Name;

--Bookings and Discounts Applied
SELECT B.BookingID, B.GuestID, B.RoomID, B.Status, D.DiscountName, D.DiscountPercentage
FROM Bookings_Booking B
LEFT JOIN Bookings_Discount D ON B.BookingID = D.BookingID;

--Number of Rooms per Hotel
SELECT H.Name AS HotelName, 
       COUNT(R.RoomID) AS NumberOfRooms
FROM Hotels H
JOIN Rooms R ON H.HotelID = R.HotelID
GROUP BY H.Name;

-- List of Services Requested by Guests
SELECT G.GuestFirstName, G.GuestLastName, S.ServiceName, SR.RequestID
FROM HotelService_Requests SR
JOIN Bookings_Booking B ON SR.BookingID = B.BookingID
JOIN Hotels_Guests G ON B.GuestID = G.GuestID
JOIN HotelService_Services S ON SR.ServiceID = S.ServiceID;

--Revenue Generated from Paid Services
SELECT H.Name AS HotelName, 
       SUM(S.ServiceCost) AS ServiceRevenue
FROM HotelService_Requests SR
JOIN Bookings_Booking B ON SR.BookingID = B.BookingID
JOIN Hotels H ON B.HotelID = H.HotelID
JOIN HotelService_Services S ON SR.ServiceID = S.ServiceID
GROUP BY H.Name;

--Hotel Employee Information with Department
SELECT E.EmployeeFullName, E.EmployeeEmail, E.EmployeePhone, D.DepartmentName, E.Salary
FROM Hotels_Employees E
JOIN Hotels_Departments D ON E.DepartmentID = D.DepartmentID
WHERE D.HotelID = E.HotelID;

--List of Employees by Hotel
SELECT E.EmployeeFullName, E.EmployeeEmail, U.Role, U.Position
FROM Hotels_Employees E
JOIN Users U ON E.EmployeeID = U.UserID
WHERE E.HotelID = 1;  -- Replace '1' with the desired HotelID
