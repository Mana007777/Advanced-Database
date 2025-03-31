CREATE OR REPLACE TRIGGER PreventRoomDeletion
BEFORE DELETE ON Rooms
FOR EACH ROW
BEGIN
    DECLARE
        activeBookings INT;
    BEGIN
        SELECT COUNT(*) INTO activeBookings
        FROM Bookings_Booking
        WHERE RoomID = :OLD.RoomID
        AND (CheckInDate <= SYSDATE AND CheckOutDate >= SYSDATE);
        
        IF activeBookings > 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Cannot delete room with active bookings.');
        END IF;
    END;
END;
