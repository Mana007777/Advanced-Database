CREATE TABLE Rooms_RoomType (
    RoomTypeID INT PRIMARY KEY,
    RoomTypeName VARCHAR(200) UNIQUE NOT NULL,
    PricePerNight NUMBER(8,2) NOT NULL,
    Capacity INT NOT NULL
);
