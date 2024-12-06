# Problem Description

## Table: Queries

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |
+-------------+---------+

This table may have duplicate rows. This table contains information collected from some queries on a database. The `position` column has a value from 1 to 500. The `rating` column has a value from 1 to 5. Queries with a rating less than 3 are considered poor queries.

## Definitions

### Query Quality

Query quality is defined as the average of the ratio between query rating and its position.

### Poor Query Percentage

Poor query percentage is the percentage of all queries with a rating less than 3.

### Requirements

- Both `quality` and `poor_query_percentage` should be rounded to 2 decimal places.
- Return the result table in any order.

### Input Example

#### Queries Table:

| query_name | result           | position | rating |
|------------|------------------|----------|--------|
| Dog        | Golden Retriever | 1        | 5      |
| Dog        | German Shepherd  | 2        | 5      |
| Dog        | Mule             | 200      | 1      |
| Cat        | Shirazi          | 5        | 2      |
| Cat        | Siamese          | 3        | 3      |
| Cat        | Sphynx           | 7        | 4      |

### Output Example

| query_name | quality | poor_query_percentage |
|------------|---------|-----------------------|
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |

### Explanation

- For **Dog** queries:
  - Quality: ((5 / 1) + (5 / 2) + (1 / 200)) / 3 = 2.50
  - Poor query percentage: (1 / 3) * 100 = 33.33

- For **Cat** queries:
  - Quality: ((2 / 5) + (3 / 3) + (4 / 7)) / 3 = 0.66
  - Poor query percentage: (1 / 3) * 100 = 33.33
