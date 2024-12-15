# Activity Table

## Table Schema

The `Activity` table tracks the activity of players, including login dates and the number of games they played during a session. Below is the schema for the table:

| Column Name  | Type    |
|--------------|---------|
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |

- `(player_id, event_date)` is the primary key for this table.
- Each row records a player's session on a particular date using a specific device.

## Problem Statement

Write a query to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places.

### Definitions:
- A player **logged in again** if they logged in on the day immediately following their first login date.
- The fraction is calculated as:
  
  \[ \text{Fraction} = \frac{\text{Number of players who logged in again}}{\text{Total number of players}} \]

### Example Data

Input:

| player_id | device_id | event_date | games_played |
|-----------|-----------|------------|--------------|
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |

Output:

| fraction  |
|-----------|
| 0.33      |

### Explanation:
- Player 1 first logged in on `2016-03-01` and logged in again on `2016-03-02`. 
- Player 2 first logged in on `2017-06-25` and did not log in the next day.
- Player 3 first logged in on `2016-03-02` and did not log in the next day.

Thus, only 1 out of 3 players logged in again the day after their first login, giving a fraction of 0.33.
