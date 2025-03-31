CREATE TABLE Hotels_Guests (
    GuestID INT PRIMARY KEY,
    GuestFirstName VARCHAR(250) NOT NULL,
    GuestLastName VARCHAR(250) NOT NULL,
    GuestEmail VARCHAR(300) UNIQUE NOT NULL,
    GuestPhone VARCHAR(15) NOT NULL,
    GuestAddress VARCHAR(255),
    IDCardNumber VARCHAR(20) UNIQUE NOT NULL,
    StayDuration INT,
    Gender VARCHAR(10)
);
