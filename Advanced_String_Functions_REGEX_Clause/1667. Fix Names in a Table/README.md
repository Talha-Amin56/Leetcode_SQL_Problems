# Fix User Names

## Problem Description

The task is to update the names in the `Users` table such that only the first character is uppercase and the rest of the characters are lowercase. The result should be returned ordered by `user_id`.

### Table: Users

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| user_id        | int     |
| name           | varchar |
+----------------+---------+
`user_id` is the primary key (column with unique values) for this table. This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.

### Input Format

- The input will be a table `Users` containing two columns:
  - `user_id`: an integer representing the user's ID.
  - `name`: a string containing the user's name, with a mix of lowercase and uppercase characters.

### Output Format

- The output should return the result table where each `name` has the first letter capitalized, and the rest of the letters in lowercase. The result should be ordered by `user_id`.

### Example

#### Input:
Users table:
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | aLice |
| 2       | bOB   |
+---------+-------+

#### Output:
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | Alice |
| 2       | Bob   |
+---------+-------+
.
