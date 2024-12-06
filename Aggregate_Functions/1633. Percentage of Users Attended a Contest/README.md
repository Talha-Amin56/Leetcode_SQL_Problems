# Contest Registration Percentage

## Problem Overview

The task is to calculate the percentage of users who have registered for each contest in a database. The solution should return the percentage of registered users per contest, rounded to two decimal places, and sorted by percentage in descending order. In case of a tie in percentages, the results should be ordered by `contest_id` in ascending order.

## Tables

### Users Table

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| user_name   | varchar |

- `user_id` is the primary key.
- Each row contains the `user_id` and the `user_name` of a user.

### Register Table

| Column Name | Type    |
|-------------|---------|
| contest_id  | int     |
| user_id     | int     |

- `(contest_id, user_id)` is the primary key.
- This table records the registration of each user in various contests.

## Task Requirements

- Calculate the percentage of users registered in each contest.
- Round the percentage to two decimal places.
- Sort the results:
  - First, by the percentage in descending order.
  - In case of a tie, order by `contest_id` in ascending order.

## Example

### Input

#### Users Table

| user_id | user_name |
|---------|-----------|
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |

#### Register Table

| contest_id | user_id |
|------------|---------|
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |

### Output

| contest_id | percentage |
|------------|------------|
| 208        | 100.0      |
| 209        | 100.0      |
| 210        | 100.0      |
| 215        | 66.67      |
| 207        | 33.33      |

### Explanation

- For contest 208, 100% of users are registered.
- For contest 209, 100% of users are registered.
- For contest 210, 100% of users are registered.
- For contest 215, 66.67% of users are registered (2 out of 3 users).
- For contest 207, 33.33% of users are registered (1 out of 3 users).


