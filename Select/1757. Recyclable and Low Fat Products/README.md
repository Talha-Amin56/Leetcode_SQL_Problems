# Problem Statement: Low Fat and Recyclable Products

## Table: Products

### Schema:
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+

- **product_id**: The primary key (unique identifier) for the table.
- **low_fats**: An ENUM with values ('Y', 'N'), where 'Y' means the product is low fat, and 'N' means it is not.
- **recyclable**: An ENUM with values ('Y', 'N'), where 'Y' means the product is recyclable, and 'N' means it is not.

### Task:
Write a query to find the `product_id` of products that are **both low fat and recyclable**.

### Output:
Return a table with a single column:
+-------------+
| product_id  |
+-------------+

### Example:

#### Input:
**Products** table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+

#### Output:
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+

#### Explanation:
Only products with IDs 1 and 3 satisfy the condition of being both low fat and recyclable.
