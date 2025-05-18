##Write an initial query that retrieves all bookings along with the user details, property details, and payment details and save it on perfomance.sql
-- Initial query to retrieve bookings with user, property, and payment details

SELECT
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  b.status AS booking_status,
  u.user_id,
  u.first_name,
  u.last_name,
  u.email,
  u.phone_number,
  u.role,
  p.property_id,
  p.name AS property_name,
  p.location AS property_location,
  p.pricepernight,
  pay.payment_id,
  pay.amount AS payment_amount,
  pay.payment_date,
  pay.payment_method
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
ORDER BY b.created_at DESC;

##Refactor the query to reduce execution time, such as reducing unnecessary joins or using indexing.
-- Step 2: Optimized query using existing indexes
EXPLAIN
SELECT
    b.booking_id,
    b.status,
    u.email,
    p.name AS property_name,
    pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
ORDER BY b.created_at DESC;

