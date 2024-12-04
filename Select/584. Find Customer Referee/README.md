# SQL Query Challenge: Customers Not Referred by a Specific Customer

## Problem Description

You are given a table named `Customer` with the following columns:

- `id` (int): The primary key for the table, uniquely identifying each customer.
- `name` (varchar): The name of the customer.
- `referee_id` (int): The ID of the customer who referred this customer. This column can have `null` values, indicating that the customer was not referred by anyone.

### Objective

Write a query to find the names of all customers **not referred** by the customer with `id = 2`.

Return the result table in any order.

---

## Example

### Input

The `Customer` table:

| id  | name  | referee_id |
|-----|-------|------------|
| 1   | Will  | null       |
| 2   | Jane  | null       |
| 3   | Alex  | 2          |
| 4   | Bill  | null       |
| 5   | Zack  | 1          |
| 6   | Mark  | 2          |

### Output

The result table:

| name  |
|-------|
| Will  |
| Jane  |
| Bill  |
| Zack  |

### Explanation

- Customers with `referee_id = 2` are Alex and Mark.
- The query excludes Alex and Mark from the result.
- Remaining customers (Will, Jane, Bill, Zack) are included in the output.

---

## Notes

- The result can be returned in any order.
- The `referee_id` column can have `null` values, which means the customer has no referrer.
- Ensure that the solution filters rows efficiently without hardcoding values.

---

Happy querying!
