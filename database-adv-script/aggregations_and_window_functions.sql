-- 1) Total number of bookings by each user
SELECT
  user_id,
  COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id
ORDER BY total_bookings DESC;

-- 2) Rank properties based on total bookings using ROW_NUMBER()
WITH property_bookings AS (
  SELECT
    p.property_id,
    p.name,
    COUNT(b.booking_id) AS total_bookings
  FROM Property p
  LEFT JOIN Booking b ON p.property_id = b.property_id
  GROUP BY p.property_id, p.name
)
SELECT
  property_id,
  name,
  total_bookings,
  ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_num,
  RANK() OVER (ORDER BY total_bookings DESC) AS rank_num
FROM property_bookings
ORDER BY row_num;

