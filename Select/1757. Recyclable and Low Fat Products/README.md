# SQL Query Challenge: Low Fat and Recyclable Products

## Problem Description

You are given a table named `Products` with the following columns:

- `product_id` (int): The primary key for the table, uniquely identifying each product.
- `low_fats` (enum): A column of type `('Y', 'N')` where:
  - `'Y'` means the product is low fat.
  - `'N'` means the product is not low fat.
- `recyclable` (enum): A column of type `('Y', 'N')` where:
  - `'Y'` means the product is recyclable.
  - `'N'` means the product is not recyclable.

### Objective

Write a query to find the `product_id` of products that meet **both** of the following criteria:

1. The product is low fat (`low_fats = 'Y'`).
2. The product is recyclable (`recyclable = 'Y'`).

Return the result table in any order.

---

## Example

### Input

The `Products` table:

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

### Output

The result table:

| product_id |
|------------|
| 1          |
| 3          |

### Explanation

- Products with `product_id = 1` and `product_id = 3` satisfy the criteria of being both low fat and recyclable.

---

## Notes

- The result can be returned in any order.
- Ensure the solution efficiently filters rows meeting both conditions.

---

Happy querying!
