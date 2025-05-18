##Use SQL commands like SHOW PROFILE or EXPLAIN ANALYZE to monitor the performance of a few of your frequently used queries.
Enable profiling and run queries
SET profiling = 1;

SELECT * FROM bookings WHERE booking_date BETWEEN '2023-01-01' AND '2023-12-31';

SHOW PROFILES;
SHOW PROFILE FOR QUERY [query_id];


##Identify any bottlenecks and suggest changes (e.g., new indexes, schema adjustments).
Common bottlenecks include:

Sequential scan on large tables instead of index scan.

Missing indexes on columns used in WHERE or JOIN clauses.

Expensive sorting or joins due to lack of indexes.

Large data retrieval without filters or inefficient predicates.

##Implement the changes and report the improvements.

Composite indexes if multiple columns are frequently filtered together
CREATE INDEX idx_user_booking_date ON bookings(user_id, booking_date);


