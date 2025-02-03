# Swap Seat IDs in Consecutive Order

## Problem Statement

Given a table `Seat` with the following structure:

```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| student     | varchar |
+-------------+---------+
```

- `id` is the primary key and has unique values.
- The `id` sequence always starts from `1` and increments continuously.
- Each row represents the name and ID of a student.

### Task
Write a solution to swap the seat `id` of every two consecutive students. If the number of students is odd, the last student's `id` remains unchanged.

### Expected Output
The result table should be ordered by `id` in ascending order.

## Example

### Input:
```sql
Seat table:
+----+---------+
| id | student |
+----+---------+
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |
+----+---------+
```

### Output:
```sql
+----+---------+
| id | student |
+----+---------+
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |
+----+---------+
```

### Explanation
- `Abbot` (ID 1) and `Doris` (ID 2) are swapped.
- `Emerson` (ID 3) and `Green` (ID 4) are swapped.
- `Jeames` (ID 5) remains unchanged as there is no pair to swap with.

## Constraints
- The `id` column values always start from `1` and increase continuously.
- The table contains at least one student.


