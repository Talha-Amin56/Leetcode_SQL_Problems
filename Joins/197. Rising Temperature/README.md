# Weather Temperature Analysis

## Problem Statement

You are given a table **Weather** containing temperature records for specific dates.

### Table: Weather

| Column Name   | Type    |
|---------------|---------|
| id            | int     |
| recordDate    | date    |
| temperature   | int     |

- **id** is the column with unique values for this table.
- There are no duplicate rows with the same **recordDate**.
- This table provides information about the temperature on a specific day.

### Objective

Write a solution to find all **id** values corresponding to dates where the temperature was higher compared to the previous day (yesterday). Return the results in any order.

---

## Input Example

### Weather Table:

| id | recordDate | temperature |
|----|------------|-------------|
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |

---

## Output Example

| id |
|----|
| 2  |
| 4  |

---

## Explanation

1. **2015-01-01**:
   - No previous day data available, so it is not considered.

2. **2015-01-02**:
   - The temperature (25) is higher than the previous day's temperature (10). 
   - Include **id = 2** in the result.

3. **2015-01-03**:
   - The temperature (20) is lower than the previous day's temperature (25). 
   - Exclude **id = 3** from the result.

4. **2015-01-04**:
   - The temperature (30) is higher than the previous day's temperature (20). 
   - Include **id = 4** in the result.

The result table contains the **id** values where the temperature was higher compared to the previous day.
