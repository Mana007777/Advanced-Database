-- Index for faster hotel searches by name
CREATE INDEX idx_hotels_name ON Hotels(Name);

-- Index for fast lookup of guests by email (since it's unique)
CREATE UNIQUE INDEX idx_hotels_guests_email ON Hotels_Guests(GuestEmail);

-- Index for faster room lookup by number
CREATE UNIQUE INDEX idx_rooms_number ON Rooms(RoomNumber);

-- Index for booking queries by guest
CREATE INDEX idx_bookings_guest ON Bookings_Booking(GuestID);

-- Index for faster hotel searches in Bookings
CREATE INDEX idx_bookings_hotel ON Bookings_Booking(HotelID);

-- Index to speed up payment searches by booking
CREATE INDEX idx_payments_booking ON Bookings_Payments(BookingID);

-- Index for service requests related to bookings
CREATE INDEX idx_service_requests_booking ON HotelService_Requests(BookingID);
