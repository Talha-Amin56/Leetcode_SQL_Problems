# High Earners in Each Department Task

This task involves identifying employees who are high earners within their respective departments. A high earner in a department is an employee who earns one of the top three unique salaries in that department.

## Table Schema

### Employee Table

| Column Name  | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

- `id` is the primary key.
- `name` represents the employee's name.
- `salary` represents the employee's salary.
- `departmentId` is a foreign key that references the `id` column in the Department table.

### Department Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key.
- `name` represents the name of the department.

## Task Requirements

Find the employees who earn one of the top three unique salaries within each department. If there are fewer than three unique salary levels in a department, return all employees who earn one of the top salaries.

The result should include:
1. The department name.
2. The employee name.
3. The employee's salary.

The result table can be returned in any order.

## Example

### Input

**Employee Table**

| id | name  | salary | departmentId |
|----|-------|--------|--------------|
| 1  | Joe   | 85000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
| 7  | Will  | 70000  | 1            |

**Department Table**

| id | name  |
|----|-------|
| 1  | IT    |
| 2  | Sales |

### Output

**Result Table**

| Department | Employee | Salary |
|------------|----------|--------|
| IT         | Max      | 90000  |
| IT         | Joe      | 85000  |
| IT         | Randy    | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |

### Explanation

In the IT department:
- Max earns the highest unique salary.
- Joe and Randy earn the second-highest unique salary.
- Will earns the third-highest unique salary.

In the Sales department:
- Henry earns the highest salary.
- Sam earns the second-highest salary.
- There is no third-highest salary as there are only two employees.

---

**Note**: The result can be returned in any order.
