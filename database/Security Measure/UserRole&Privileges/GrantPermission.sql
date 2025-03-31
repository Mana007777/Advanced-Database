-- Hotel Manager: Full access to bookings, payments, and reports
GRANT SELECT, INSERT, UPDATE, DELETE ON Bookings_Booking TO Hotel_Manager;
GRANT SELECT, INSERT, UPDATE, DELETE ON Bookings_Payments TO Hotel_Manager;
GRANT SELECT, INSERT ON Hotels_Guests TO Hotel_Manager;

-- Receptionist: Can only manage bookings but not payments
GRANT SELECT, INSERT, UPDATE ON Bookings_Booking TO Receptionist;
GRANT SELECT ON Hotels_Guests TO Receptionist;

-- Guest: Can only view their bookings
GRANT SELECT ON Bookings_Booking TO Guest;
