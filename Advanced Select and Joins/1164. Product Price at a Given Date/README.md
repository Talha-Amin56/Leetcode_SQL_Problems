```markdown
# Finding Product Prices on a Specific Date

## Table Structure
```
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| new_price     | int     |
| change_date   | date    |
+---------------+---------+
```

### Constraints:
- `(product_id, change_date)` is the primary key (combination of columns with unique values) of this table.
- Each row of this table indicates that the price of some product was changed to a new price on a specific date.
- Assume the price of all products before any change is 10.

## Problem Statement
Write a solution to find the prices of all products on `2019-08-16`.

Return the result table in any order.

## Example 1
### Input:
```
Products table:
+------------+-----------+-------------+
| product_id | new_price | change_date |
+------------+-----------+-------------+
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |
+------------+-----------+-------------+
```

### Output:
```
+------------+-------+
| product_id | price |
+------------+-------+
| 2          | 50    |
| 1          | 35    |
| 3          | 10    |
+------------+-------+
```

### Explanation:
- On `2019-08-16`, product `1` had its price changed to `35`.
- Product `2` had its last price update on `2019-08-14`, so its price remains `50`.
- Product `3` had no changes before `2019-08-16`, so it retains the default price of `10`.
```
