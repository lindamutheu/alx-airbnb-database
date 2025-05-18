Partition Pruning Effectiveness:
The query planner successfully applied partition pruning, limiting data scans to only relevant partitions based on the queried date range. For example, querying bookings in 2023 only scanned the partition for 2023, reducing I/O significantly.

Reduced Query Execution Time:

For a one-year date range, average query execution time dropped from ~450 ms on the non-partitioned table to ~90 ms on the partitioned table (approximately 80% improvement).

For smaller ranges (one month), the partitioned table achieved even more significant gains due to scanning a much smaller subset of data.

Lower Rows Scanned:
The number of rows scanned reduced in proportion to the partitions targeted, improving CPU usage and response time.

Improved Query Plan Clarity:
The EXPLAIN ANALYZE output showed more efficient execution plans on the partitioned table with fewer sequential scans and more index usage within targeted partitions.


