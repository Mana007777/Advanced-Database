CREATE OR REPLACE PROCEDURE AddBooking (
    p_GuestID INT,
    p_RoomID INT,
    p_HotelID INT,
    p_StayDuration INT,
    p_CheckInDate DATE,
    p_CheckOutDate DATE,
    p_BookingAmount NUMBER
)
AS
BEGIN
    INSERT INTO Bookings_Booking (BookingID, GuestID, RoomID, HotelID, StayDuration, CheckInDate, CheckOutDate, BookingAmount, Status)
    VALUES (booking_id_seq.NEXTVAL, p_GuestID, p_RoomID, p_HotelID, p_StayDuration, p_CheckInDate, p_CheckOutDate, p_BookingAmount, 'Booked');
END;


