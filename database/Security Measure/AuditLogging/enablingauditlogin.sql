-- Enable auditing
AUDIT INSERT, UPDATE, DELETE ON Users BY ACCESS;
AUDIT INSERT, UPDATE, DELETE ON Bookings_Booking BY ACCESS;


--This helps detect unauthorized access.