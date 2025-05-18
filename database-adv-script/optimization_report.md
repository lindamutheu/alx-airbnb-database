Joins 4 tables: Booking, User, Property, Payment

LEFT JOIN on Payment in case not all bookings are paid

Uses ORDER BY b.created_at DESC, which benefits from INDEX(booking.created_at)

EXPLAIN outputs the query plan — you’ll see table scan types, index usage, and rows examined.

Once you run EXPLAIN, look out for:

ALL in type = full table scan → slow

Using where; Using index = optimal

High rows count = might need additional indexes (e.g. composite indexes)
