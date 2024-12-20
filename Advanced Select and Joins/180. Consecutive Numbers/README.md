# Logs Table

The `Logs` table contains a list of logs, where each record is represented by an `id` and a `num` value. The table schema is as follows:

## Table Schema

| Column Name | Type    | Description                               |
|-------------|---------|-------------------------------------------|
| id          | int     | Unique identifier for each log entry. This is an auto-incrementing column starting from 1. It is the primary key for the table. |
| num         | varchar | The number associated with the log entry. |

### Primary Key
- The `id` column is the primary key for this table.

### Sample Data

Here is an example of how the data might look in the `Logs` table:

| id  | num |
|-----|-----|
| 1   | 1   |
| 2   | 1   |
| 3   | 1   |
| 4   | 2   |
| 5   | 1   |
| 6   | 2   |
| 7   | 2   |

### Problem Description

We are tasked with finding all numbers that appear **at least three times consecutively** in the `Logs` table. The numbers should be returned in any order.

### Expected Output

The result should consist of a table with the following structure:

| ConsecutiveNums |
|-----------------|
| <num>           |

Where `<num>` is a number that appears at least three times consecutively.

### Example

#### Input

| id  | num |
|-----|-----|
| 1   | 1   |
| 2   | 1   |
| 3   | 1   |
| 4   | 2   |
| 5   | 1   |
| 6   | 2   |
| 7   | 2   |

#### Output

| ConsecutiveNums |
|-----------------|
| 1               |

#### Explanation

In the example above, the number `1` appears consecutively three times at positions 1, 2, and 3. Therefore, the output will return `1`.

### Notes
- You should return the result in any order.
- The table's `id` is auto-incremented, and no value in the `num` column is NULL.
- You can assume that the input will always contain valid data with the appropriate constraints.
