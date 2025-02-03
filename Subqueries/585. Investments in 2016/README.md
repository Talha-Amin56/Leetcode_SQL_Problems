# Insurance Database Query

## Problem Statement
You are given a database table named `Insurance` that contains information about policyholders and their total investment values over different years. Your task is to write an SQL query to calculate the sum of `tiv_2016` for policyholders who meet the following conditions:

1. They have the same `tiv_2015` value as one or more other policyholders.
2. Their `(lat, lon)` attribute pair is unique (i.e., no other policyholder shares the same location).
3. The result should be rounded to two decimal places.

## Table Schema

| Column Name | Type  | Description |
|-------------|-------|-------------|
| `pid`       | `int`   | Primary key; unique policyholder ID |
| `tiv_2015`  | `float` | Total investment value in 2015 |
| `tiv_2016`  | `float` | Total investment value in 2016 |
| `lat`       | `float` | Latitude of the policyholder's city (not NULL) |
| `lon`       | `float` | Longitude of the policyholder's city (not NULL) |

## Example

### Input:

| pid | tiv_2015 | tiv_2016 | lat | lon |
|----|---------|---------|----|----|
| 1  | 10      | 5       | 10 | 10 |
| 2  | 20      | 20      | 20 | 20 |
| 3  | 10      | 30      | 20 | 20 |
| 4  | 10      | 40      | 40 | 40 |

### Output:

| tiv_2016 |
|----------|
| 45.00    |

### Explanation:
- Policyholders with `pid` 1 and 4 meet both conditions.
- The `tiv_2015` value of 10 is shared among multiple records.
- The `(lat, lon)` pair for `pid` 1 and 4 is unique.
- The sum of `tiv_2016` values for these records is `5 + 40 = 45.00`.

## Constraints
- The `lat` and `lon` values are guaranteed to be non-null.
- The `pid` column is unique.
- The result should be rounded to two decimal places.


