# Transactions Query

This query computes the following statistics for each month and country from the `Transactions` table:
- Total number of transactions (`trans_count`).
- Total number of approved transactions (`approved_count`).
- Total amount of all transactions (`trans_total_amount`).
- Total amount of approved transactions (`approved_total_amount`).

## Query Details

The query groups data by month (extracted from `trans_date`) and `country`, then calculates the required metrics using aggregation functions.

### Input Table

| Column Name | Type    | Description                              |
|-------------|---------|------------------------------------------|
| id          | int     | Primary key for the table.              |
| country     | varchar | Country where the transaction occurred. |
| state       | enum    | Transaction state: ["approved", "declined"]. |
| amount      | int     | Transaction amount.                     |
| trans_date  | date    | Transaction date.                       |

### Output Table

| Column Name             | Type    | Description                                   |
|-------------------------|---------|-----------------------------------------------|
| month                  | varchar | Year and month of the transactions (`YYYY-MM`). |
| country                | varchar | Country of the transactions.                  |
| trans_count            | int     | Total number of transactions.                |
| approved_count         | int     | Total number of approved transactions.       |
| trans_total_amount     | int     | Total amount of all transactions.            |
| approved_total_amount  | int     | Total amount of approved transactions.       |

### Example

**Input:**

| id   | country | state    | amount | trans_date |
|------|---------|----------|--------|------------|
| 121  | US      | approved | 1000   | 2018-12-18 |
| 122  | US      | declined | 2000   | 2018-12-19 |
| 123  | US      | approved | 2000   | 2019-01-01 |
| 124  | DE      | approved | 2000   | 2019-01-07 |

**Output:**

| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
|----------|---------|-------------|----------------|--------------------|-----------------------|
| 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |
