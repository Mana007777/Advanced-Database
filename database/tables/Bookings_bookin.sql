CREATE TABLE Bookings_Booking (
    BookingID INT PRIMARY KEY,
    GuestID INT,
    RoomID INT,
    HotelID INT,
    StayDuration INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    BookingAmount NUMBER(8,2),
    Status VARCHAR(150),
    FOREIGN KEY (GuestID) REFERENCES Hotels_Guests(GuestID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID),
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);