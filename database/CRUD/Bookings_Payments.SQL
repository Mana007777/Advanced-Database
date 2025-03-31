--CREATE
INSERT INTO Bookings_Payments (PaymentID, BookingID, PaymentDate, PaymentAmount, PaymentMethod) VALUES
(1, 1, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 150.00, 'Credit Card'),
(2, 2, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 375.00, 'Cash');
 --READ
 SELECT * FROM Bookings_Payments WHERE BookingID = 1;
--UPDATE
UPDATE Bookings_Payments
SET PaymentAmount = 200.00
WHERE PaymentID = 1;
--DELETE
DELETE FROM Bookings_Payments WHERE PaymentID = 2;
