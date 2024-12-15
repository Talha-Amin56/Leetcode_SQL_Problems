# Teacher Table

## Table Schema

The `Teacher` table provides information about teachers, the subjects they teach, and the departments where they teach those subjects. Below is the schema for the table:

| Column Name | Type |
|-------------|------|
| teacher_id  | int  |
| subject_id  | int  |
| dept_id     | int  |

- `(subject_id, dept_id)` is the primary key for this table, ensuring unique combinations of subjects and departments.
- Each row represents a teacher (`teacher_id`) teaching a subject (`subject_id`) in a department (`dept_id`).

## Problem Statement

Write a query to calculate the number of unique subjects each teacher teaches in the university. Return the result in any order.

### Example Data

Input:

| teacher_id | subject_id | dept_id |
|------------|------------|---------|
| 1          | 2          | 3       |
| 1          | 2          | 4       |
| 1          | 3          | 3       |
| 2          | 1          | 1       |
| 2          | 2          | 1       |
| 2          | 3          | 1       |
| 2          | 4          | 1       |

Output:

| teacher_id | cnt |
|------------|-----|
| 1          | 2   |
| 2          | 4   |

### Explanation:
- **Teacher 1**:
  - They teach `subject_id = 2` in `dept_id = 3` and `dept_id = 4` (same subject, different departments).
  - They teach `subject_id = 3` in `dept_id = 3`.
  - Unique subjects = `2` (subjects 2 and 3).

- **Teacher 2**:
  - They teach `subject_id = 1` in `dept_id = 1`.
  - They teach `subject_id = 2` in `dept_id = 1`.
  - They teach `subject_id = 3` in `dept_id = 1`.
  - They teach `subject_id = 4` in `dept_id = 1`.
  - Unique subjects = `4` (subjects 1, 2, 3, and 4).
