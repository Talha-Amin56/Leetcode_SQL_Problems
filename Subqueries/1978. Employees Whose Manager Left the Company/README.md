# Employees Table - Find Employees with Departed Managers Task

This task involves identifying employees who have a salary less than $30,000 and whose manager has left the company. When a manager leaves, their information is deleted from the `Employees` table, but the employees still have the `manager_id` set to the manager that left.

## Table Schema

**Employees Table**

| Column Name  | Type     |
|--------------|----------|
| employee_id  | int      |
| name         | varchar  |
| manager_id   | int      |
| salary       | int      |

- `employee_id` is the primary key.
- `manager_id` refers to the ID of the employee's manager (may be `null` for employees without a manager).
- `salary` indicates the salary of the employee.

## Task Requirements

Find the IDs of employees who:
1. Have a salary strictly less than $30,000.
2. Have a manager whose information no longer exists in the table (i.e., the manager has left the company).

The result should be ordered by `employee_id`.

## Example

### Input

**Employees Table**

| employee_id | name      | manager_id | salary |
|-------------|-----------|------------|--------|
| 3           | Mila      | 9          | 60301  |
| 12          | Antonella | null       | 31000  |
| 13          | Emery     | null       | 67084  |
| 1           | Kalel     | 11         | 21241  |
| 9           | Mikaela   | null       | 50937  |
| 11          | Joziah    | 6          | 28485  |

### Output

**Result Table**

| employee_id |
|-------------|
| 11          |

### Explanation

- The employees with a salary less than $30,000 are Kalel (employee 1) and Joziah (employee 11).
- Kalel's manager is employee 11, who is still in the company.
- Joziah's manager is employee 6, who has left the company because there is no row for employee 6 in the table.

---

**Note**: The result table should be ordered by `employee_id`.
