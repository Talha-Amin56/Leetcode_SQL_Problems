# Bus Queue Problem

This project is designed to solve the problem of determining the last person who can board a bus without exceeding the weight limit. A table `Queue` is provided which contains the list of people waiting to board the bus. Each person has a unique `person_id`, a name (`person_name`), a weight (`weight`), and a boarding turn (`turn`), which determines the order in which the people will board the bus.

## Problem Statement

The bus has a weight limit of 1000 kilograms. Each person in the queue is allowed to board the bus in the order specified by the `turn` column. The objective is to find the name of the last person who can board the bus without exceeding the weight limit.

### Table Structure

The table `Queue` contains the following columns:

| Column Name  | Type    | Description                                    |
|--------------|---------|------------------------------------------------|
| `person_id`  | int     | Unique ID for each person                      |
| `person_name`| varchar | Name of the person                             |
| `weight`     | int     | Weight of the person in kilograms              |
| `turn`       | int     | The order in which the person will board the bus. The first person to board has `turn=1`, and the last person has `turn=n`, where `n` is the total number of people in the queue. |

### Constraints

- The bus weight limit is 1000 kilograms.
- The test cases are designed such that the first person does not exceed the weight limit.
- The first person in the queue (`turn = 1`) will board the bus.
- Only one person can board the bus at any given turn.
- The result must return the name of the last person who can board without exceeding the weight limit.

### Example Input

**Queue table:**

| person_id | person_name | weight | turn |
|-----------|-------------|--------|------|
| 5         | Alice       | 250    | 1    |
| 4         | Bob         | 175    | 5    |
| 3         | Alex        | 350    | 2    |
| 6         | John Cena   | 400    | 3    |
| 1         | Winston     | 500    | 6    |
| 2         | Marie       | 200    | 4    |

### Example Output

| person_name |
|-------------|
| John Cena   |

### Explanation:

The following table shows the people boarding the bus in order:

| Turn | Person ID | Name      | Weight | Total Weight |
|------|-----------|-----------|--------|--------------|
| 1    | 5         | Alice     | 250    | 250          |
| 2    | 3         | Alex      | 350    | 600          |
| 3    | 6         | John Cena | 400    | 1000         | (last person to board)
| 4    | 2         | Marie     | 200    | 1200         | (cannot board)
| 5    | 4         | Bob       | 175    | ___          |
| 6    | 1         | Winston   | 500    | ___          |

In this case, John Cena is the last person who can board the bus before the weight limit is exceeded.

### Instructions

1. **Input:** A table `Queue` with columns `person_id`, `person_name`, `weight`, and `turn`.
2. **Output:** The name of the last person who can board the bus without exceeding the weight limit of 1000 kilograms.
