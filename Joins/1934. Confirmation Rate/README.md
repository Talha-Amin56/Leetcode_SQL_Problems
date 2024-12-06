# Confirmation Rate of Users

## Problem Statement

You are provided with two tables, **Signups** and **Confirmations**, which track user signups and their confirmation message statuses, respectively. The goal is to calculate the **confirmation rate** for each user.

### Tables

#### Signups

| Column Name | Type     | Description                          |
|-------------|----------|--------------------------------------|
| user_id     | int      | Unique identifier for each user.     |
| time_stamp  | datetime | The timestamp of the user’s signup.  |

- **user_id** is the primary key.
- Each row records the time a user signed up.

#### Confirmations

| Column Name | Type     | Description                           |
|-------------|----------|---------------------------------------|
| user_id     | int      | Identifier referencing the Signups table. |
| time_stamp  | datetime | The timestamp of the confirmation request. |
| action      | ENUM     | Status of the confirmation: `confirmed` or `timeout`. |

- **(user_id, time_stamp)** is the primary key.
- Each row records a confirmation request and its outcome.

---

## Objective

Calculate the **confirmation rate** for each user. 

### Confirmation Rate Definition

The confirmation rate is the ratio of confirmation messages marked as **`confirmed`** to the total number of confirmation messages requested by the user:

\[
\text{Confirmation Rate} = \frac{\text{Number of Confirmed Messages}}{\text{Total Confirmation Messages}}
\]

- If a user has no confirmation messages, their confirmation rate is **0**.
- The result should include all users, whether or not they requested confirmations.

---

## Expected Output

The result table should include the following columns:

| Column Name         | Description                                             |
|---------------------|---------------------------------------------------------|
| user_id             | The unique identifier of the user.                      |
| confirmation_rate   | The confirmation rate of the user, rounded to 2 decimal places. |

The result should be returned in any order.

---

## Example

### Input

#### Signups Table:

| user_id | time_stamp          |
|---------|---------------------|
| 3       | 2020-03-21 10:16:13 |
| 7       | 2020-01-04 13:57:59 |
| 2       | 2020-07-29 23:09:44 |
| 6       | 2020-12-09 10:39:37 |

#### Confirmations Table:

| user_id | time_stamp          | action    |
|---------|---------------------|-----------|
| 3       | 2021-01-06 03:30:46 | timeout   |
| 3       | 2021-07-14 14:00:00 | timeout   |
| 7       | 2021-06-12 11:57:29 | confirmed |
| 7       | 2021-06-13 12:58:28 | confirmed |
| 7       | 2021-06-14 13:59:27 | confirmed |
| 2       | 2021-01-22 00:00:00 | confirmed |
| 2       | 2021-02-28 23:59:59 | timeout   |

### Output

| user_id | confirmation_rate |
|---------|-------------------|
| 6       | 0.00              |
| 3       | 0.00              |
| 7       | 1.00              |
| 2       | 0.50              |

---

### Explanation:

1. **User 6**: No confirmation messages requested. Confirmation rate is 0.
2. **User 3**: 2 requests, both timed out. Confirmation rate is \( \frac{0}{2} = 0.00 \).
3. **User 7**: 3 requests, all confirmed. Confirmation rate is \( \frac{3}{3} = 1.00 \).
4. **User 2**: 2 requests, 1 confirmed. Confirmation rate is \( \frac{1}{2} = 0.50 \).

---

## Constraints

- The confirmation rate must be rounded to **two decimal places**.
- All users in the **Signups** table must appear in the result, even if they did not request any confirmation messages.
