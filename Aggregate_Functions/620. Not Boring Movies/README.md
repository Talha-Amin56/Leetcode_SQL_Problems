# Cinema Movie Filter

## Problem Description

You are given a table named `Cinema`, which contains information about various movies, their descriptions, and ratings. Your task is to filter and return the movies with the following conditions:

- The movie ID is an odd number.
- The description of the movie is not "boring".

The result should be sorted by the movie rating in descending order.

## Table Schema

The `Cinema` table has the following columns:

| Column Name    | Type     |
|----------------|----------|
| id             | int      |
| movie          | varchar  |
| description    | varchar  |
| rating         | float    |

### Constraints

- `id` is the primary key for the table, meaning each row has a unique value for `id`.
- The `rating` is a float with two decimal places, and its value is between 0 and 10 (inclusive).
- The movie descriptions will include various strings, with "boring" being one of the possible descriptions.
  
### Input:

A table named `Cinema` that contains information about movies.

### Output:

A table that includes movies with an odd-numbered ID and a description that is not "boring", sorted by their rating in descending order.

### Example

#### Input:

| id  | movie      | description | rating |
|-----|------------|-------------|--------|
| 1   | War        | great 3D    | 8.9    |
| 2   | Science    | fiction     | 8.5    |
| 3   | irish      | boring      | 6.2    |
| 4   | Ice song   | Fantacy     | 8.6    |
| 5   | House card | Interesting | 9.1    |

#### Output:

| id  | movie      | description | rating |
|-----|------------|-------------|--------|
| 5   | House card | Interesting | 9.1    |
| 1   | War        | great 3D    | 8.9    |

### Explanation:

- Movies with odd-numbered IDs: 1, 3, and 5.
- Movie with ID = 3 has a description of "boring", so it is excluded from the result.
- The remaining movies with odd-numbered IDs are sorted by their rating in descending order.

## SQL Query Solution

Use SQL to filter and sort the movies based on the given conditions:
1. Filter for movies with odd-numbered IDs.
2. Exclude movies with the description "boring".
3. Sort the result by rating in descending order.

## Notes

- Ensure that the movies are returned in descending order of their ratings.
- Be sure to account for cases where no movies meet the filtering criteria.
- Ensure proper formatting for the result, especially for ratings with two decimal places.
