CREATE TABLE Hotels (
    HotelID INT PRIMARY KEY,
    Name VARCHAR(200) UNIQUE NOT NULL,
    City VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    StarRating NUMBER(2,1),
    EstablishmentYear INT
);
