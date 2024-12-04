# SQL Query Challenge: Big Countries

## Problem Description

You are given a table named `World` with the following columns:

- `name` (varchar): The primary key for the table, uniquely identifying each country.
- `continent` (varchar): The continent to which the country belongs.
- `area` (int): The area of the country in square kilometers.
- `population` (int): The population of the country.
- `gdp` (bigint): The Gross Domestic Product (GDP) of the country.

### Objective

Write a query to find the `name`, `population`, and `area` of the countries that are considered **big**. A country is classified as big if it satisfies at least one of the following criteria:
1. The country has an area of at least 3 million square kilometers (i.e., `area >= 3000000`).
2. The country has a population of at least 25 million (i.e., `population >= 25000000`).

Return the result table in any order.

---

## Example

### Input

The `World` table:

| name         | continent | area     | population | gdp           |
|--------------|-----------|----------|------------|---------------|
| Afghanistan  | Asia      | 652230   | 25500100   | 20343000000   |
| Albania      | Europe    | 28748    | 2831741    | 12960000000   |
| Algeria      | Africa    | 2381741  | 37100000   | 188681000000  |
| Andorra      | Europe    | 468      | 78115      | 3712000000    |
| Angola       | Africa    | 1246700  | 20609294   | 100990000000  |

### Output

The result table:

| name         | population | area     |
|--------------|------------|----------|
| Afghanistan  | 25500100   | 652230   |
| Algeria      | 37100000   | 2381741  |

### Explanation

- Afghanistan is included because its population (25,500,100) is at least 25 million.
- Algeria is included because its population (37,100,000) is at least 25 million.
- Other countries do not satisfy the criteria for being considered big.

---

## Notes

- The result can be returned in any order.
- Ensure that the solution handles edge cases efficiently, such as countries with exactly 3 million square kilometers or 25 million people.

---

Happy querying!
