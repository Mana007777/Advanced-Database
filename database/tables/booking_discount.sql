CREATE TABLE Bookings_Discount (
    BookingID INT PRIMARY KEY,
    DiscountName VARCHAR(200),
    DiscountPercentage NUMBER(5,2),
    FOREIGN KEY (BookingID) REFERENCES Bookings_Booking(BookingID)
);
