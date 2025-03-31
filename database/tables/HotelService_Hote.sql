CREATE TABLE HotelService_Hotel (
    ServiceID INT,
    HotelID INT,
    PRIMARY KEY (ServiceID, HotelID),
    FOREIGN KEY (ServiceID) REFERENCES HotelService_Services(ServiceID),
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);
