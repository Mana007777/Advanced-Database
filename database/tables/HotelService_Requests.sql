CREATE TABLE HotelService_Requests (
    RequestID INT PRIMARY KEY,
    BookingID INT,
    ServiceID INT,
    FOREIGN KEY (BookingID) REFERENCES Bookings_Booking(BookingID),
    FOREIGN KEY (ServiceID) REFERENCES HotelService_Services(ServiceID)
);
