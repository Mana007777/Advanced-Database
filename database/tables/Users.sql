CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    HotelID INT,
    Role VARCHAR(100),
    Position VARCHAR(100),
    Login VARCHAR(100) UNIQUE NOT NULL,
    Pass VARCHAR(100) NOT NULL,
    CreatedDate DATE,
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID));


