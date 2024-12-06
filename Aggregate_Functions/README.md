# Aggregate Functions in SQL

## Overview

Aggregate functions in SQL are powerful tools used to perform calculations on multiple rows of data and return a single summarized result. These functions are commonly used in conjunction with the `GROUP BY` clause to group data into categories for analysis.

---

## Common Aggregate Functions

### 1. **`COUNT`**
Counts the number of rows that match a specified condition.

- **Example:**
  ```sql
  SELECT COUNT(*) AS total_rows FROM employees;

