CREATE OR REPLACE TRIGGER SetBookingStatusOnCheckIn
AFTER INSERT ON Bookings_Booking
FOR EACH ROW
BEGIN
    IF :NEW.CheckInDate <= SYSDATE THEN
        UPDATE Bookings_Booking
        SET Status = 'Checked-in'
        WHERE BookingID = :NEW.BookingID;
    END IF;
END;
