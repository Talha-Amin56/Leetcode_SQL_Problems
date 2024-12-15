# Daily Active Users

## Table Schema

The `Activity` table records user activities for a social media website. It may contain duplicate rows, and each session belongs to exactly one user. Below is the schema for the table:

| Column Name   | Type    |
|---------------|---------|
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum    |

- The `activity_type` column is an ENUM with possible values: `'open_session'`, `'end_session'`, `'scroll_down'`, `'send_message'`.
- Each row logs a user’s activity on a specific date.

## Problem Statement

Write a query to calculate the **daily active user count** for a period of 30 days ending on `2019-07-27` (inclusive). A user is considered active on a given day if they performed **at least one activity** on that day.

Return the result in any order.

### Example Input

| user_id | session_id | activity_date | activity_type |
|---------|------------|---------------|---------------|
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |
| 4       | 3          | 2019-06-25    | open_session  |
| 4       | 3          | 2019-06-25    | end_session   |

### Example Output

| day        | active_users |
|------------|--------------|
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |
