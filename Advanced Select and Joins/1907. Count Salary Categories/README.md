# Bank Accounts Salary Categories

This project involves calculating the number of bank accounts that fall under different salary categories based on the income values. The salary categories are as follows:

1. **Low Salary**: All salaries strictly less than $20,000.
2. **Average Salary**: All salaries in the inclusive range [$20,000, $50,000].
3. **High Salary**: All salaries strictly greater than $50,000.

The goal is to compute the number of accounts in each of these categories from the given data.

## Table: Accounts

The `Accounts` table contains information about the monthly income for various bank accounts. Each row in the table represents an account's ID and its income. The schema for the table is as follows:

### Columns

| Column Name  | Type |
|--------------|------|
| `account_id` | int  |
| `income`     | int  |

- `account_id` is the primary key (the column with unique values).
- `income` represents the monthly income associated with the account.

## Example

### Input: Accounts Table

| account_id | income |
|------------|--------|
| 3          | 108939 |
| 2          | 12747  |
| 8          | 87709  |
| 6          | 91796  |

### Output: Result Table

| category       | accounts_count |
|----------------|----------------|
| Low Salary     | 1              |
| Average Salary | 0              |
| High Salary    | 3              |

### Explanation:
- **Low Salary**: Account 2 has an income of $12,747, which is below $20,000.
- **Average Salary**: There are no accounts with income in the range [$20,000, $50,000].
- **High Salary**: Accounts 3, 6, and 8 have incomes of $108,939, $91,796, and $87,709, respectively, all of which are above $50,000.

## How to Use

1. Insert the data into the `Accounts` table.
2. Calculate the number of accounts in each of the three salary categories:
   - Low Salary
   - Average Salary
   - High Salary
3. Return the results in the specified format.

