# Customers Who Bought All Products

## Problem Description

### Tables

#### Customer Table

| Column Name   | Type    |
|---------------|---------|
| customer_id   | int     |
| product_key   | int     |

- This table may contain duplicate rows.
- `customer_id` is not NULL.
- `product_key` is a foreign key (reference column) to the Product table.

#### Product Table

| Column Name   | Type    |
|---------------|---------|
| product_key   | int     |

- `product_key` is the primary key (column with unique values) for this table.

### Task

Write a solution to report the customer IDs from the Customer table that bought all the products in the Product table.

Return the result table in any order.

### Example

#### Input:

**Customer Table:**

| customer_id | product_key |
|-------------|-------------|
| 1           | 5           |
| 2           | 6           |
| 3           | 5           |
| 3           | 6           |
| 1           | 6           |

**Product Table:**

| product_key |
|-------------|
| 5           |
| 6           |

#### Output:

| customer_id |
|-------------|
| 1           |
| 3           |

#### Explanation:

- The customers who bought all the products (5 and 6) are customers with IDs 1 and 3.
