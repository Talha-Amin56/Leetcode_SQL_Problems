# Primary Department Solution

This document provides the solution to the problem of identifying the primary department for each employee from the given `Employee` table.

## Problem Statement

Given the `Employee` table:

| Column Name   | Type    |
|---------------|---------|
| employee_id   | int     |
| department_id | int     |
| primary_flag  | varchar |

- `(employee_id, department_id)` is the primary key.
- `primary_flag` is an ENUM of type ('Y', 'N'):
  - 'Y': Indicates the primary department for an employee.
  - 'N': Indicates a non-primary department for an employee.

### Rules:
1. Each employee has a primary department.
2. If an employee belongs to only one department, their primary department is marked with `primary_flag = 'N'`.

### Objective:
Write an SQL query to report all employees with their primary department. For employees with only one department, report their single department.

### Example:
#### Input:
| employee_id | department_id | primary_flag |
|-------------|---------------|--------------|
| 1           | 1             | N            |
| 2           | 1             | Y            |
| 2           | 2             | N            |
| 3           | 3             | N            |
| 4           | 2             | N            |
| 4           | 3             | Y            |
| 4           | 4             | N            |

#### Output:
| employee_id | department_id |
|-------------|---------------|
| 1           | 1             |
| 2           | 1             |
| 3           | 3             |
| 4           | 3             |

## Solution

```sql
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR (employee_id NOT IN (
       SELECT employee_id
       FROM Employee
       WHERE primary_flag = 'Y')
   );
```

## Explanation
1. **Filter Primary Departments:**
   - Use `primary_flag = 'Y'` to select rows where the department is explicitly marked as the primary department.

2. **Handle Single Department Employees:**
   - Use a subquery to identify employees without any `primary_flag = 'Y'` entry.
   - For these employees, include their only department in the result.

3. **Combine Results:**
   - The `WHERE` clause ensures that both primary departments and the departments of single-department employees are included in the output.

### Steps:
- Identify primary departments using `primary_flag = 'Y'.`
- Include single-department employees by checking `employee_id NOT IN` the list of employees with a `primary_flag = 'Y'`.

## Usage
This solution can be executed on any SQL platform supporting standard SQL syntax.

### Result Format:
The result contains two columns:
| Column Name   | Type |
|---------------|------|
| employee_id   | int  |
| department_id | int  |
