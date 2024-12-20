# Triangle Table and Query Task

## Problem Description

You are given a table named `Triangle` with the following structure:

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |

- `(x, y, z)` is the primary key for this table.
- Each row in the table contains three integers representing the lengths of three line segments.

The task is to determine for each row whether the three line segments can form a triangle. A triangle can be formed if the following conditions are met:
- The sum of any two sides is greater than the third side.

The output should include all rows from the `Triangle` table with an additional column `triangle` indicating:
- `Yes` if the line segments can form a triangle.
- `No` otherwise.

## Example

### Input

Triangle table:

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

### Output

| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |

## Instructions

Write an SQL query that processes the `Triangle` table to generate the required output table. 

## Notes

- Return the result table in any order.
- Ensure that the query is efficient and adheres to SQL best practices.

