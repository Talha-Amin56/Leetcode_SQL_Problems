# Factory Website Activity Analysis

## Problem Statement

You are given a table **Activity** that logs user activities for a factory website.

### Table: Activity

| Column Name    | Type    |
|----------------|---------|
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    |
| timestamp      | float   |

- **(machine_id, process_id, activity_type)** forms the primary key of this table.
- **machine_id**: The ID of a machine.
- **process_id**: The ID of a process running on the machine.
- **activity_type**: An ENUM with values `start` and `end` indicating the type of activity:
  - `start`: Process begins at the specified **timestamp**.
  - `end`: Process ends at the specified **timestamp**.
- **timestamp**: A float representing time in seconds.
- For every `(machine_id, process_id)` pair, there is always one `start` and one `end` record.
- The `start` timestamp will always precede the `end` timestamp for each `(machine_id, process_id)` pair.

### Objective

Write a solution to calculate the **average time each machine takes to complete a process**:
1. The time to complete a process is the difference between the `end` and `start` timestamps.
2. The average time is calculated by dividing the total time for all processes on the machine by the number of processes.
3. Round the result to **three decimal places**.

The result should include:
- **machine_id**: The ID of the machine.
- **processing_time**: The average time to complete a process, rounded to 3 decimal places.

The result table can be returned in any order.

---

## Input Example

### Activity Table:

| machine_id | process_id | activity_type | timestamp |
|------------|------------|---------------|-----------|
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |

---

## Output Example

| machine_id | processing_time |
|------------|-----------------|
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |

---

## Explanation

1. **Machine 0**:
   - Process 0: `end - start = 1.520 - 0.712 = 0.808`.
   - Process 1: `end - start = 4.120 - 3.140 = 0.980`.
   - Average time: `(0.808 + 0.980) / 2 = 0.894`.

2. **Machine 1**:
   - Process 0: `end - start = 1.550 - 0.550 = 1.000`.
   - Process 1: `end - start = 1.420 - 0.430 = 0.990`.
   - Average time: `(1.000 + 0.990) / 2 = 0.995`.

3. **Machine 2**:
   - Process 0: `end - start = 4.512 - 4.100 = 0.412`.
   - Process 1: `end - start = 5.000 - 2.500 = 2.500`.
   - Average time: `(0.412 + 2.500) / 2 = 1.456`.

The result table provides the **machine_id** and the rounded **processing_time** for each machine.
