# Airbnb Database Normalization

## Objective

Ensure the database schema adheres to the Third Normal Form (3NF) to eliminate redundancy and improve data integrity.

---

## Normalization Process

### 1. First Normal Form (1NF)
- All tables contain atomic values (e.g., no multiple values in a single field).
- No repeating groups are present.

### 2. Second Normal Form (2NF)
- All non-key attributes are fully functionally dependent on the entire primary key.
- This was already satisfied as no composite primary keys are used.

### 3. Third Normal Form (3NF)
- Verified that all attributes are only dependent on their respective primary keys.
- No transitive dependencies were found in any table.

---

## Table-by-Table Summary

| Table     | Status | Notes |
|-----------|--------|-------|
| Users     | ✅ 3NF | Clean, no changes needed |
| Properties| ✅ 3NF | Consider splitting `location` if granularity increases |
| Bookings  | ✅ 3NF | Fully normalized |
| Payments  | ✅ 3NF | Fully normalized |
| Reviews   | ✅ 3NF | Fully normalized |
| Messages  | ✅ 3NF | Fully normalized |

---

## Final Notes

- The current schema is well-designed and adheres to 3NF.
- As the system evolves, monitor fields like `location` or `payment_method` for potential normalization opportunities.
