# Restaurant Revenue Analysis

## Problem Statement

Given the `Customer` table:

### Customer Table
| Column Name  | Type    |
|-------------|---------|
| customer_id | int     |
| name        | varchar |
| visited_on  | date    |
| amount      | int     |

- (`customer_id`, `visited_on`) forms the primary key.
- `visited_on` represents the date a customer visited the restaurant.
- `amount` represents the total amount paid by the customer.

## Task

Write an SQL query to:

Compute the moving average of the total customer payments in a seven-day window (i.e., current day + six previous days). The `average_amount` should be rounded to two decimal places.

Return the result table ordered by `visited_on` in ascending order.

## Example

### **Input:**
#### Customer Table:
| customer_id | name   | visited_on | amount |
|------------|--------|------------|--------|
| 1          | Jhon   | 2019-01-01 | 100    |
| 2          | Daniel | 2019-01-02 | 110    |
| 3          | Jade   | 2019-01-03 | 120    |
| 4          | Khaled | 2019-01-04 | 130    |
| 5          | Winston| 2019-01-05 | 110    |
| 6          | Elvis  | 2019-01-06 | 140    |
| 7          | Anna   | 2019-01-07 | 150    |
| 8          | Maria  | 2019-01-08 | 80     |
| 9          | Jaze   | 2019-01-09 | 110    |
| 1          | Jhon   | 2019-01-10 | 130    |
| 3          | Jade   | 2019-01-10 | 150    |

### **Output:**
| visited_on  | amount | average_amount |
|------------|--------|----------------|
| 2019-01-07 | 860    | 122.86         |
| 2019-01-08 | 840    | 120            |
| 2019-01-09 | 840    | 120            |
| 2019-01-10 | 1000   | 142.86         |

### **Explanation:**
- 1st moving average from `2019-01-01` to `2019-01-07`: (100 + 110 + 120 + 130 + 110 + 140 + 150) / 7 = 122.86
- 2nd moving average from `2019-01-02` to `2019-01-08`: (110 + 120 + 130 + 110 + 140 + 150 + 80) / 7 = 120
- 3rd moving average from `2019-01-03` to `2019-01-09`: (120 + 130 + 110 + 140 + 150 + 80 + 110) / 7 = 120
- 4th moving average from `2019-01-04` to `2019-01-10`: (130 + 110 + 140 + 150 + 80 + 110 + 130 + 150) / 7 = 142.86
