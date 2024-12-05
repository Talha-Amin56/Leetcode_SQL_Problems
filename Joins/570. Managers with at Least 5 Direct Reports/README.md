# Managers with At Least Five Direct Reports

## Problem Statement

You are given a table called **Employee** which contains information about employees, their departments, and their manager. Each employee is identified by an **id**, and if they have a manager, their **managerId** is listed.

Write a solution to find all managers who have at least five direct reports. A direct report is an employee whose **managerId** is the **id** of the manager.

### Table: Employee

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |

- **id**: The unique identifier for each employee.
- **name**: The name of the employee.
- **department**: The department to which the employee belongs.
- **managerId**: The **id** of the employee's manager. If **managerId** is **null**, the employee does not have a manager.

No employee can be their own manager, and employees with **managerId** as **null** do not report to anyone.

### Objective

Write a query to find the **name** of all employees who are managers with at least five direct reports.

---

## Input Example

### Employee Table:

| id  | name  | department | managerId |
|-----|-------|------------|-----------|
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |

---

## Output Example

| name |
|------|
| John |

### Explanation

- **John** (id = 101) is a manager because they have 5 direct reports: Dan, James, Amy, Anne, and Ron.
- Other employees have fewer than 5 direct reports or do not manage anyone.

---






