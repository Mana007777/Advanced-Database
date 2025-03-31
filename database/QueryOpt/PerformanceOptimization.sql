--if Bookings_Booking becomes large, partition by date:
CREATE TABLE Bookings_Booking_Partitioned
PARTITION BY RANGE (CheckInDate)
(
    PARTITION p_old VALUES LESS THAN (TO_DATE('2024-01-01', 'YYYY-MM-DD')),
    PARTITION p_recent VALUES LESS THAN (TO_DATE('2026-01-01', 'YYYY-MM-DD'))
);

--Queries on recent data will be faster, as Oracle scans only the needed partition.


--Using Materialized Views for Heavy Queries

--Instead of recalculating frequently queried results:
CREATE MATERIALIZED VIEW mv_guest_bookings AS
SELECT GuestID, COUNT(*) AS TotalBookings 
FROM Bookings_Booking GROUP BY GuestID;

--then query
SELECT * FROM mv_guest_bookings WHERE GuestID = 1;

--faster performance for report
--refresh periodically instead of computing every time


-- Optimizing Stored Procedure Execution

--instead of :
INSERT INTO Bookings_Booking (BookingID, GuestID, RoomID, HotelID, StayDuration, CheckInDate, CheckOutDate, BookingAmount, Status)
VALUES (booking_id_seq.NEXTVAL, p_GuestID, p_RoomID, p_HotelID, p_StayDuration, p_CheckInDate, p_CheckOutDate, p_BookingAmount, 'Booked');


--Use:
BEGIN
    INSERT /*+ APPEND */ INTO Bookings_Booking 
    (BookingID, GuestID, RoomID, HotelID, StayDuration, CheckInDate, CheckOutDate, BookingAmount, Status)
    VALUES (booking_id_seq.NEXTVAL, p_GuestID, p_RoomID, p_HotelID, p_StayDuration, p_CheckInDate, p_CheckOutDate, p_BookingAmount, 'Booked');
    COMMIT;
END;


--Using B-Trees for Searchable Columns

--For columns used frequently in WHERE conditions, B-tree indexes improve lookups:
CREATE INDEX idx_guest_phone ON Hotels_Guests(GuestPhone);
