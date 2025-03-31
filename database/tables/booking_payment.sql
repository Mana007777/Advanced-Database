CREATE TABLE Bookings_Payments (
    PaymentID INT PRIMARY KEY,
    BookingID INT,
    PaymentDate DATE NOT NULL,
    PaymentAmount NUMBER(8,2) NOT NULL,
    PaymentMethod VARCHAR(150),
    FOREIGN KEY (BookingID) REFERENCES Bookings_Booking(BookingID)
);
