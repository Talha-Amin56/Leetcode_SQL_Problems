# SQL Query Problem: Average Experience Years for Each Project

## Problem Description

You are given two tables: `Project` and `Employee`. Each row in the `Project` table indicates that an employee is working on a particular project. Each row in the `Employee` table contains information about an employee, including their years of experience.

Write an SQL query that reports the average experience years of all employees for each project, rounded to two decimal places.

### Tables

#### `Project` table:

| Column Name  | Type   | Description |
|--------------|--------|-------------|
| project_id   | int    | The unique identifier for a project. |
| employee_id  | int    | The unique identifier for an employee. |

* `project_id, employee_id` is the primary key of this table.
* `employee_id` is a foreign key referring to the `Employee` table.

#### `Employee` table:

| Column Name      | Type    | Description |
|------------------|---------|-------------|
| employee_id      | int     | The unique identifier for an employee. |
| name             | varchar | The name of the employee. |
| experience_years | int     | The number of years of experience the employee has. |

* `employee_id` is the primary key of this table.
* `experience_years` is guaranteed not to be `NULL`.

## Task

You need to calculate the average years of experience for employees working on each project. The result should be rounded to two decimal places.

### Output

Your query should return the following columns:

| Column Name     | Description |
|-----------------|-------------|
| project_id      | The unique identifier for the project. |
| average_years   | The average experience years of employees working on the project, rounded to two decimal places. |

### Example

#### Input:

##### Project table:

| project_id | employee_id |
|------------|-------------|
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |

##### Employee table:

| employee_id | name  | experience_years |
|-------------|-------|------------------|
| 1           | Khaled| 3                |
| 2           | Ali   | 2                |
| 3           | John  | 1                |
| 4           | Doe   | 2                |

#### Output:

| project_id | average_years |
|------------|---------------|
| 1          | 2.00          |
| 2          | 2.50          |

#### Explanation:
- The average experience years for Project 1 is calculated as `(3 + 2 + 1) / 3 = 2.00`.
- The average experience years for Project 2 is calculated as `(3 + 2) / 2 = 2.50`.


