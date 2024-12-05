# Employee Bonus Report

## Problem Statement

You are given two tables: **Employee** and **Bonus**.

### Table: Employee

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

- **empId**: Unique identifier for each employee.
- **name**: Name of the employee.
- **supervisor**: ID of the employee's manager. It can be `null` if the employee has no supervisor.
- **salary**: Salary of the employee.

---

### Table: Bonus

| Column Name | Type |
|-------------|------|
| empId       | int  |
| bonus       | int  |

- **empId**: Unique identifier for each employee and a foreign key referencing the `empId` in the **Employee** table.
- **bonus**: Bonus amount of the employee. It can be `null` if the employee did not receive a bonus.

---

### Objective

Write a solution to report the **name** and **bonus** amount of employees whose bonus is less than **1000**. If an employee does not have a bonus record, their bonus should be treated as `null`.

---

## Input Example

### Employee Table:

| empId | name   | supervisor | salary |
|-------|--------|------------|--------|
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

### Bonus Table:

| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 2000  |

---

## Output Example

| name   | bonus |
|--------|-------|
| Brad   | null  |
| John   | null  |
| Dan    | 500   |

---

## Explanation

1. **Brad (empId = 3)**:
   - Brad has no record in the **Bonus** table. Therefore, their bonus is `null`.

2. **John (empId = 1)**:
   - John has no record in the **Bonus** table. Therefore, their bonus is `null`.

3. **Dan (empId = 2)**:
   - Dan has a bonus of `500`, which is less than `1000`. Include in the result.

4. **Thomas (empId = 4)**:
   - Thomas has a bonus of `2000`, which is not less than `1000`. Exclude from the result.

The result table includes the **name** and **bonus** of employees whose bonus is less than **1000** or `null`.
