# Product Sales Query

## Problem Statement

You are given two tables: **Sales** and **Product**.

### Table: Sales

| Column Name | Type  |
|-------------|-------|
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |

- **sale_id** and **year** together form the primary key of this table.
- **product_id** is a foreign key referencing the **Product** table.
- Each row in this table represents a sale of a product identified by its **product_id** for a specific year. The price is on a per-unit basis.

### Table: Product

| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |
| product_name | varchar |

- **product_id** is the primary key of this table.
- Each row in this table represents a product's name.

### Objective

Write a solution to generate a report that includes the **product_name**, **year**, and **price** for each sale from the **Sales** table. The resulting table can be returned in any order.

---

## Input Example

### Sales Table:

| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

### Product Table:

| product_id | product_name |
|------------|--------------|
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |

---

## Output Example

| product_name | year  | price |
|--------------|-------|-------|
| Nokia        | 2008  | 5000  |
| Nokia        | 2009  | 5000  |
| Apple        | 2011  | 9000  |

---

## Explanation

1. For `sale_id = 1`, the product with `product_id = 100` (Nokia) was sold in 2008 for a price of 5000.
2. For `sale_id = 2`, the same product (Nokia) was sold in 2009 for the same price.
3. For `sale_id = 7`, the product with `product_id = 200` (Apple) was sold in 2011 for a price of 9000.
