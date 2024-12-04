# Problem: Employees and EmployeeUNI - Find Unique ID for Employees

## Problem Description

You are given two tables: `Employees` and `EmployeeUNI`.

- **Employees Table**: Contains employee details such as `id` and `name`. The `id` is the primary key of the table.
- **EmployeeUNI Table**: Contains the `id` of an employee and their corresponding `unique_id`. The combination of `id` and `unique_id` is the primary key for this table.

Your task is to write a query that displays the `unique_id` of each employee. If an employee does not have a unique ID, return `null` instead.

### Input:

- **Employees Table**:
  - `id` (int) — The unique identifier of the employee.
  - `name` (varchar) — The name of the employee.

- **EmployeeUNI Table**:
  - `id` (int) — The unique identifier of the employee.
  - `unique_id` (int) — The corresponding unique identifier of the employee.

### Output:

You need to return the `unique_id` for each employee, and if the employee does not have a corresponding `unique_id`, show `null` instead. The result should be ordered by the employee's `name`.

### Example

#### Input:
**Employees Table**:
| id  | name      |
|-----|-----------|
| 1   | Alice     |
| 7   | Bob       |
| 11  | Meir      |
| 90  | Winston   |
| 3   | Jonathan  |

**EmployeeUNI Table**:
| id  | unique_id |
|-----|-----------|
| 3   | 1         |
| 11  | 2         |
| 90  | 3         |

#### Output:
| unique_id | name      |
|-----------|-----------|
| null      | Alice     |
| null      | Bob       |
| 2         | Meir      |
| 3         | Winston   |
| 1         | Jonathan  |

#### Explanation:
- Alice and Bob do not have a corresponding `unique_id`, so `null` is returned for them.
- Meir's unique ID is 2, Winston's unique ID is 3, and Jonathan's unique ID is 1.

### Notes:
- The query should return the result in any order as long as the correct mapping between `name` and `unique_id` is followed.
- Be mindful of employees who do not have a corresponding entry in the `EmployeeUNI` table, as they should have `null` in the `unique_id` column.

## Learning Objectives

By solving this problem, you will practice:
- Using `LEFT JOIN` to combine data from two tables when one table might not have all the matching entries in the other.
- Handling `NULL` values when no data exists in the related table.
- Extracting the necessary data from multiple tables while managing mismatched rows.

---

## Folder Structure

In this repository, the SQL problem is located under the **Basic_SQL** directory, which includes fundamental problems like this one to help you get familiar with basic SQL queries involving `JOIN` and `NULL` handling.

The solution is provided in the corresponding `.sql` file in the `Basic_SQL` folder.

Happy Querying!
