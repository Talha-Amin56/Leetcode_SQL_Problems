# Employee Table - Second Highest Distinct Salary Task

This task involves finding the second highest distinct salary from the Employee table. If there is no second highest salary, the result should return `null`.

## Table Schema

**Employee Table**

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

- `id` is the primary key.
- Each row represents an employee's salary.

## Task Requirements

Find the second highest distinct salary from the Employee table. If there is no second highest salary (e.g., if there is only one distinct salary or no records), return `null`.

### Example 1

**Input**

**Employee Table**

| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

**Output**

| SecondHighestSalary |
|---------------------|
| 200                 |

**Explanation**  
The distinct salaries in the table are `100`, `200`, and `300`. The second highest salary is `200`.

### Example 2

**Input**

**Employee Table**

| id | salary |
|----|--------|
| 1  | 100    |

**Output**

| SecondHighestSalary |
|---------------------|
| null                |

**Explanation**  
There is only one salary in the table, so there is no second highest salary.

---

**Note**: The result should contain the second highest distinct salary or `null` if no such salary exists.
