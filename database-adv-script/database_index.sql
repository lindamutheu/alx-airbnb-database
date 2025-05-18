
##Write SQL CREATE INDEX commands to create appropriate indexes for those columns and save them on database_index.sql
-- Index on email for fast user lookups
CREATE INDEX idx_user_email ON User(email);

-- Index on role to speed up filtering by user role (e.g., host/guest/admin)
CREATE INDEX idx_user_role ON User(role);

-- Index on Booking.user_id to speed up joins between Booking and User
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking.property_id to speed up joins with Property
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Booking.status for filtering bookings (confirmed, pending, etc.)
CREATE INDEX idx_booking_status ON Booking(status);

-- Index on Booking.start_date to improve sorting or range queries by date
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Index on Property.host_id for joining hosts to their properties
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Index on Property.location for filtering or searching by location
CREATE INDEX idx_property_location ON Property(location);


##Measure the query performance before and after adding indexes using EXPLAIN or ANALYZE.
-- User Table Indexes
CREATE INDEX idx_user_user_id ON User(user_id);
CREATE INDEX idx_user_email ON User(email);

-- Property Table Indexes
CREATE INDEX idx_property_property_id ON Property(property_id);
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Booking Table Indexes
CREATE INDEX idx_booking_booking_id ON Booking(booking_id);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_booking_created_at ON Booking(created_at);



-- Query you want to measure
EXPLAIN
SELECT
  b.booking_id, b.status, u.email, p.name
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
WHERE b.status = 'confirmed'
ORDER BY b.created_at DESC;


