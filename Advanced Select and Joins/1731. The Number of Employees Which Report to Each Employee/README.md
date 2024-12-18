# Employee Manager Reporting System

## Problem Description

In this problem, you are given an `Employees` table that contains information about employees and their reporting structure. The goal is to find the **managers** (employees who have at least one employee reporting to them) and for each manager, calculate the following:

- `employee_id` and `name` of the manager
- The number of employees who report directly to them (`reports_count`)
- The average age of the employees who report to them, rounded to the nearest integer (`average_age`)

### Table: Employees

| Column Name | Type     |
|-------------|----------|
| employee_id | int      |
| name        | varchar  |
| reports_to  | int      |
| age         | int      |

- `employee_id`: Unique identifier for each employee.
- `name`: The name of the employee.
- `reports_to`: The `employee_id` of the employee's manager. If `reports_to` is `NULL`, the employee does not report to anyone.
- `age`: The age of the employee.

### Constraints

- `employee_id` is the column with unique values.
- Some employees do not report to anyone (`reports_to` is `NULL`).
- We consider a manager to be an employee who has at least 1 other employee reporting directly to them.

### Expected Output

Return a result table with the following columns:

- `employee_id`: The `employee_id` of the manager.
- `name`: The name of the manager.
- `reports_count`: The number of employees who report directly to the manager.
- `average_age`: The average age of the employees who report to the manager, rounded to the nearest integer.

### Result Ordering

The result should be ordered by `employee_id` in ascending order.

### Example 1

#### Input:

| employee_id | name    | reports_to | age |
|-------------|---------|------------|-----|
| 9           | Hercy   | null       | 43  |
| 6           | Alice   | 9          | 41  |
| 4           | Bob     | 9          | 36  |
| 2           | Winston | null       | 37  |

#### Output:

| employee_id | name  | reports_count | average_age |
|-------------|-------|---------------|-------------|
| 9           | Hercy | 2             | 39          |

#### Explanation:
- Hercy has two employees (Alice and Bob) reporting directly to them.
- The average age of Alice (41) and Bob (36) is (41 + 36) / 2 = 38.5, which is rounded to 39.

### Example 2

#### Input:

| employee_id | name    | reports_to | age |
|-------------|---------|------------|-----|
| 1           | Michael | null       | 45  |
| 2           | Alice   | 1          | 38  |
| 3           | Bob     | 1          | 42  |
| 4           | Charlie | 2          | 34  |
| 5           | David   | 2          | 40  |
| 6           | Eve     | 3          | 37  |
| 7           | Frank   | null       | 50  |
| 8           | Grace   | null       | 48  |

#### Output:

| employee_id | name    | reports_count | average_age |
|-------------|---------|---------------|-------------|
| 1           | Michael | 2             | 40          |
| 2           | Alice   | 2             | 37          |
| 3           | Bob     | 1             | 37          |

#### Explanation:
- Michael manages Alice and Bob, so his `reports_count` is 2, and the average age of Alice (38) and Bob (42) is (38 + 42) / 2 = 40.
- Alice manages Charlie and David, so her `reports_count` is 2, and the average age of Charlie (34) and David (40) is (34 + 40) / 2 = 37.
- Bob manages Eve, so his `reports_count` is 1, and the average age of Eve (37) is 37.

---

### Approach Overview

1. **Identifying Managers**: 
   - Managers are employees who have at least one employee reporting to them. This is identified by checking if there are any non-NULL values in the `reports_to` column that match their `employee_id`.

2. **Counting Direct Reports**:
   - For each manager, count the number of employees who have their `reports_to` set to the `employee_id` of the manager.

3. **Calculating the Average Age**:
   - For each manager, calculate the average age of the employees who report to them. Ensure that the result is rounded to the nearest integer.

4. **Filtering Only Managers**:
   - Only include managers who have at least one employee reporting to them.

5. **Sorting the Results**:
   - The final result should be sorted by `employee_id` in ascending order.

---

### SQL Query Outline

To achieve the required output, you can use a `LEFT JOIN` between the `employees` table and itself, group the result by the manager's `employee_id`, and apply the necessary aggregation functions to count reports and calculate the average age. Make sure to use a `HAVING` clause to filter out employees without reports.

---

### Notes

- Handle edge cases where managers may not have any reports.
- Ensure that the average age is rounded correctly (to the nearest integer).
- The result should be ordered by `employee_id`.

---

### License

This project is licensed under the MIT License - see the LICENSE file for details.
