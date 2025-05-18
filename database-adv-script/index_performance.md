##Identify high-usage columns in your User, Booking, and Property tables (e.g., columns used in WHERE, JOIN, ORDER BY clauses).

CREATE INDEX idx_user_id ON User(user_id);         -- usually already PRIMARY KEY
CREATE UNIQUE INDEX idx_user_email ON User(email); -- fast lookup, enforce uniqueness
CREATE INDEX idx_user_role ON User(role);          -- filtering by role

CREATE INDEX idx_property_id ON Property(property_id);      -- usually PRIMARY KEY
CREATE INDEX idx_property_host_id ON Property(host_id);     -- list properties by host
CREATE INDEX idx_property_location ON Property(location);   -- filter/search by location


CREATE INDEX idx_booking_id ON Booking(booking_id);                 -- usually PRIMARY KEY
CREATE INDEX idx_booking_user_id ON Booking(user_id);              -- bookings by guest
CREATE INDEX idx_booking_property_id ON Booking(property_id);      -- availability & analytics
CREATE INDEX idx_booking_status ON Booking(status);                -- filter by confirmed, etc.
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);   -- range scan
