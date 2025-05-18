
##Write SQL CREATE INDEX commands to create appropriate

-- Indexes to optimize joins and filters

-- User Table
CREATE INDEX idx_user_user_id ON User(user_id);
CREATE INDEX idx_user_email ON User(email);

-- Property Table
CREATE INDEX idx_property_property_id ON Property(property_id);
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Booking Table
CREATE INDEX idx_booking_booking_id ON Booking(booking_id);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_booking_created_at ON Booking(created_at);

-- EXPLAIN ANALYZE to verify performance after indexing
EXPLAIN ANALYZE
SELECT 
  b.booking_id, b.status, u.email, p.name
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
WHERE b.status = 'confirmed'
ORDER BY b.created_at DESC;

