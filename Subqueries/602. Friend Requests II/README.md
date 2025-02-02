# Most Friends Query

## Problem Statement
You are given a table `RequestAccepted` that stores information about friend requests accepted between users.

### RequestAccepted Table
This table contains records of accepted friend requests.

| Column Name    | Type    |
|---------------|---------|
| requester_id  | int     |
| accepter_id   | int     |
| accept_date   | date    |

- `(requester_id, accepter_id)` is the primary key, meaning each pair of requester and accepter is unique.
- `requester_id` is the ID of the user who sent the request.
- `accepter_id` is the ID of the user who received the request.
- `accept_date` represents the date when the request was accepted.

## Task
Write a SQL query to find the user who has the most friends and the number of friends they have.

### Expected Output Format
The result should be returned in the following format:

| id  | num |
|-----|-----|
| 3   | 3   |

## Example
### Input Data
#### RequestAccepted Table:
| requester_id | accepter_id | accept_date |
|-------------|------------|-------------|
| 1           | 2          | 2016/06/03  |
| 1           | 3          | 2016/06/08  |
| 2           | 3          | 2016/06/08  |
| 3           | 4          | 2016/06/09  |

### Output
| id  | num |
|-----|-----|
| 3   | 3   |
