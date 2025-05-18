##Write a query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.
SELECT
  user_id,
  COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;



##Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.
SELECT
  property_id,
  name,
  total_bookings,
  RANK() OVER (ORDER BY total_bookings DESC) AS rank
FROM (
  SELECT
    p.property_id,
    p.name,
    COUNT(b.booking_id) AS total_bookings
  FROM Property p
  LEFT JOIN Booking b ON p.property_id = b.property_id
  GROUP BY p.property_id, p.name
) AS property_booking_counts
ORDER BY rank;

