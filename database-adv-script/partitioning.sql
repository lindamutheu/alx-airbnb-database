-- Drop the existing Booking table if it exists (for demonstration purposes)
DROP TABLE IF EXISTS Booking;

-- Create a partitioned Booking table
CREATE TABLE Booking (
    booking_id VARCHAR(50) PRIMARY KEY,
    property_id VARCHAR(50),
    user_id VARCHAR(50),
    start_date DATE,
    end_date DATE,
    total_price DECIMAL(10, 2),
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX (start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);


##Test the performance of queries on the partitioned table (e.g., fetching bookings by date range).
-- Enable timing
\timing on

-- Run query multiple times
SELECT count(*) FROM bookings WHERE booking_date BETWEEN '2023-01-01' AND '2023-12-31';
SELECT count(*) FROM bookings WHERE booking_date BETWEEN '2023-01-01' AND '2023-12-31';
SELECT count(*) FROM bookings WHERE booking_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Get query plan
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE booking_date BETWEEN '2023-01-01' AND '2023-12-31';

