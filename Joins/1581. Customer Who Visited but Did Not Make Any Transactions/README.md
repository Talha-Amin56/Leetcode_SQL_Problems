# Mall Visits and Transactions Analysis

## Problem Statement

You are given two tables: **Visits** and **Transactions**.

### Table: Visits

| Column Name | Type    |
|-------------|---------|
| visit_id    | int     |
| customer_id | int     |

- **visit_id** is the column with unique values for this table.
- This table contains information about customers who visited the mall.

### Table: Transactions

| Column Name    | Type    |
|----------------|---------|
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |

- **transaction_id** is the column with unique values for this table.
- This table contains information about transactions made during visits identified by **visit_id**.

### Objective

Write a solution to find:
- The **customer_id** of users who visited the mall without making any transactions.
- The number of times (**count_no_trans**) they made such visits.

The result table should include the **customer_id** and the count of visits without transactions, and it can be returned in any order.

---

## Input Example

### Visits Table:

| visit_id | customer_id |
|----------|-------------|
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |

### Transactions Table:

| transaction_id | visit_id | amount |
|----------------|----------|--------|
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |

---

## Output Example

| customer_id | count_no_trans |
|-------------|----------------|
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |

---

## Explanation

1. **Customer 23**:
   - Visited once (visit_id = 1) and made one transaction (transaction_id = 12). No visits without transactions.

2. **Customer 9**:
   - Visited once (visit_id = 2) and made one transaction (transaction_id = 13). No visits without transactions.

3. **Customer 30**:
   - Visited once (visit_id = 4) and made no transactions. Count of visits without transactions = **1**.

4. **Customer 54**:
   - Visited three times (visit_id = 5, 7, 8). 
   - Made transactions during visit_id = 5 but no transactions during visit_id = 7 and visit_id = 8. 
   - Count of visits without transactions = **2**.

5. **Customer 96**:
   - Visited once (visit_id = 6) and made no transactions. Count of visits without transactions = **1**.

The result table summarizes the count of visits without transactions for customers who had at least one such visit.
