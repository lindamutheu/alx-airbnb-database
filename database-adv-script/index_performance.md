-- Index for quick email lookup (login/auth)
CREATE INDEX idx_users_email ON users(email);

-- Index to speed up JOINs between bookings and users
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index to speed up JOINs between bookings and properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index to improve filtering by location
CREATE INDEX idx_properties_location ON properties(location);

-- Index to improve ordering or filtering by price
CREATE INDEX idx_properties_price ON properties(pricepernight);


-- database_index.sql

CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_price ON properties(pricepernight);
