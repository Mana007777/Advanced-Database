CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    RoomNumber VARCHAR(10) UNIQUE NOT NULL,
    RoomTypeID INT,
    HotelID INT,
    FOREIGN KEY (RoomTypeID) REFERENCES Rooms_RoomType(RoomTypeID),
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);
