# Delivery Table

## Table Schema

The `Delivery` table holds information about food delivery to customers, including order dates and preferred delivery dates. Below is the schema for the table:

| Column Name                 | Type    |
|-----------------------------|---------|
| delivery_id                 | int     |
| customer_id                 | int     |
| order_date                  | date    |
| customer_pref_delivery_date | date    |

- `delivery_id` is the column of unique values for this table.
- The table tracks food delivery orders made by customers and their preferred delivery dates.

## Problem Statement

Write a query to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.

### Definitions:
- An order is **immediate** if the `customer_pref_delivery_date` is the same as the `order_date`.
- The **first order** for a customer is the order with the earliest `order_date`. It is guaranteed that each customer has exactly one first order.

### Example Data

Input:

| delivery_id | customer_id | order_date | customer_pref_delivery_date |
|-------------|-------------|------------|-----------------------------|
| 1           | 1           | 2019-08-01 | 2019-08-02                  |
| 2           | 2           | 2019-08-02 | 2019-08-02                  |
| 3           | 1           | 2019-08-11 | 2019-08-12                  |
| 4           | 3           | 2019-08-24 | 2019-08-24                  |
| 5           | 3           | 2019-08-21 | 2019-08-22                  |
| 6           | 2           | 2019-08-11 | 2019-08-13                  |
| 7           | 4           | 2019-08-09 | 2019-08-09                  |

Output:

| immediate_percentage |
|-----------------------|
| 50.00                |

### Explanation:
- Customer 1: First order is `delivery_id` 1, which is **scheduled**.
- Customer 2: First order is `delivery_id` 2, which is **immediate**.
- Customer 3: First order is `delivery_id` 5, which is **scheduled**.
- Customer 4: First order is `delivery_id` 7, which is **immediate**.

Thus, the percentage of immediate orders among the first orders is 50.00%.