--CREATE 
INSERT INTO Bookings_Discount (DiscountID, BookingID, DiscountAmount) VALUES
(1, 1, 20.00),
(2, 2, 15.00);
 
 --READ
 SELECT * FROM Bookings_Discount WHERE BookingID = 1;

--UPDATE
UPDATE Bookings_Discount
SET DiscountAmount = 25.00
WHERE DiscountID = 1;

--DELETE
DELETE FROM Bookings_Discount WHERE DiscountID = 2;
